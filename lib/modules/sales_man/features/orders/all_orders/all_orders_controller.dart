import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/connection_checker.dart';
import '../../../../../utils/helpers/api/api_constants.dart';
import '../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../../../utils/services/convert_days_to_num.dart';
import '../../../models/error_model.dart';
import '../../../models/order_model.dart';
import '../../../models/trip_dates_model.dart';

class AllOrdersController extends GetxController {
  int _currentPage = 1;
  bool _hasNextPage = true;
  bool isFetchingMore = false;
  final ScrollController scrollController = ScrollController();
  // State variables
  bool _isError = false;
  bool _isErrorChangeStatus = false;
  bool _isLoading = false;
  bool _isLoadingChangeStatus = false;
  String searchText = '';
  var days = <int>[].obs; // Made observable
  List<int> tempDaysList = [];
  final GetStorage storage = GetStorage();

  bool get isError => _isError;
  bool get isErrorChangeStatus => _isErrorChangeStatus;
  bool get isLoading => _isLoading;
  bool get isLoadingChangeStatus => _isLoadingChangeStatus;

  List<OrderModel> _ordersList = [];
  List<OrderModel> get ordersList => _ordersList;
  set ordersList(List<OrderModel> value) {
    _ordersList = value;
    update();
  }

  // Setters with update call
  set isError(bool value) {
    _isError = value;
    update();
  }

  set isErrorChangeStatus(bool value) {
    _isErrorChangeStatus = value;
    update();
  }

  set isLoading(bool value) {
    _isLoading = value;
    update();
  }

  set isLoadingChangeStatus(bool value) {
    _isLoadingChangeStatus = value;
    update();
  }

  bool _isLoadingOrder = false;
  bool get isLoadingOrder => _isLoadingOrder;
  set isLoadingOrder(bool value) {
    _isLoadingOrder = value;
    update();
  }

  bool _isErrorOrder = false;
  bool get isErrorOrder => _isErrorOrder;
  set isErrorOrder(bool value) {
    _isErrorOrder = value;
    update();
  }

  OrderModel _order = OrderModel(
      id: 0,
      customerId: 0,
      tripDateId: 0,
      status: "",
      branchId: 0,
      orderDate: "",
      deliveryDate: "",
      isBase: 0,
      deliveryTime: "",
      totalPrice: 0,
      createdAt: '',
      updatedAt: "",
      canUndo: false,
      isLate: false,
      products: [],
      customer: OrderCustomerModel(
          name: "",
          id: 0,
          image: "",
          createdAt: "",
          location: "",
          role: "",
          updatedAt: "",
          userName: "",
          address: AddressModel(id: 0, area: "", cityId: 0),
          branchId: 0));
  OrderModel get order => _order;
  set order(OrderModel value) {
    _order = value;
    update();
  }

  int orderId = 0;

  @override
  void onInit() {
    super.onInit();
    fetchData();
    // getOrderById();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          !isFetchingMore &&
          _hasNextPage) {
        _currentPage++;
        fetchMoreData();
      }
    });
  }

  // Reset search text and days filter
  void resetSearch() {
    searchText = '';
    days.clear();
  }

  // Fetch data from the server
  Future<void> fetchData() async {
    ordersList = [];
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    String token = storage.read(CacheKeys.token) ?? '';
    int branchId = storage.read(CacheKeys.branchId) ?? 0;

    // Construct query parameters
    final Map<String, dynamic> queryParams = {
      'branch_id': branchId.toString(),
      if (searchText.isNotEmpty) 's': searchText,
    };
    for (int i = 0; i < days.length; i++) {
      queryParams['days[$i]'] = days[i].toString();
    }

    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
          url: '${ApiConstants.baseUrl}order/salesman/myOrders',
          bearerToken: token,
          query: queryParams,
        );
        if (response?.statusCode == 200) {
          print(response?.data);
          Map<String, dynamic> responseData = response!.data;
          if (responseData.containsKey('data')) {
            var data = responseData['data'];
            _hasNextPage = data['current_page'] != data['last_page'];
            List<dynamic> list = data['data'];
            print(list);
            print('[----------------------------------------------------]');
            ordersList = list.map((e) => OrderModel.fromJson(e)).toList();
            isFetchingMore = false;
            isLoading = false;
            // filterOrdersLocally();  // Apply local filtering based on search text
            return;
          } else {
            showMessage('Unexpected response structure', false);
            return;
          }
        } else {
          isError = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('request failed: ${errorModel.message}', false);
          }
          return;
        }
      } catch (e) {
        isError = true;
        showMessage('Error salesman/myOrders: $e', false);
        return;
      } finally {
        isLoading = false;
      }
    } else {
      isError = true;
      showMessage('لا يوجد اتصال بالانترنت', false);
      isLoading = false;
      return;
    }
  }

  Future<void> fetchMoreData() async {
    if (isFetchingMore) return;
    isFetchingMore = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    String token = storage.read(CacheKeys.token) ?? '';
    int branchId = storage.read(CacheKeys.branchId) ?? 0;

    // Construct query parameters
    final Map<String, dynamic> queryParams = {
      'branch_id': branchId.toString(),
      'page': _currentPage.toString(),
      if (searchText.isNotEmpty) 's': searchText,
    };
    for (int i = 0; i < days.length; i++) {
      queryParams['days[$i]'] = days[i].toString();
    }
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
          url: '${ApiConstants.baseUrl}order/salesman/myOrders',
          bearerToken: token,
          query: queryParams,
        );
        if (response?.statusCode == 200) {
          Map<String, dynamic> responseData = response!.data;
          if (responseData.containsKey('data')) {
            var data = responseData['data'];
            _hasNextPage = data['current_page'] != data['last_page'];
            List<dynamic> list = data['data'];
            List<OrderModel> ordersListNew =
                list.map((e) => OrderModel.fromJson(e)).toList();
            ordersList.addAll(ordersListNew);
            isFetchingMore = false;
            isLoading = false;
            return;
          } else {
            showMessage('Unexpected response structure', false);
            return;
          }
        } else {
          isError = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('request failed: ${errorModel.message}', false);
          }
          return;
        }
      } catch (e) {
        isError = true;
        showMessage('Error salesman/myOrders: $e', false);
        return;
      } finally {
        isLoading = false;
      }
    } else {
      isError = true;
      showMessage('لا يوجد اتصال بالانترنت', false);
      isLoading = false;
      return;
    }
  }

  Future<bool> changeOrderStatus(
      {required String action,
      required int orderId,
      String? reason,
      String? deliveryDate,
      String? deliveryTime}) async {
    isLoadingChangeStatus = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    int branchId = storage.read(CacheKeys.branchId) ?? 0;
    String token = storage.read(CacheKeys.token);
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.putData(
            url: '${ApiConstants.baseUrl}order/archived/$orderId',
            bearerToken: token,
            query: {
              'branch_id': branchId,
            },
            data: {
              '_method': 'PUT',
              'action': action, // canceled, accepted, delivered
              if (reason != null) 'message': reason,
              if (deliveryDate != null) 'delivery_date': deliveryDate,
              if (deliveryTime != null) 'delivery_time': deliveryTime,
            });
        if (response?.statusCode == 200) {
          // Handle successful
          Map<String, dynamic> responseData = response!.data;
          if (responseData.containsKey('success')) {
            if (responseData['success'] == true) {
              ordersList.where((order) => order.id == orderId).first.status =
                  action;
              update();
              return true;
            } else {
              return false;
            }
          } else {
            showMessage('Unexpected response structure', false);
            return false;
          }
        } else {
          // Handle failure
          isError = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('request failed: ${errorModel.message}', false);
          }
          return false;
        }
      } catch (e) {
        // Handle error
        isError = true;
        showMessage('Error: $e', false);

        return false;
      } finally {
        isLoadingChangeStatus = false;
      }
    } else {
      isError = true;
      showMessage('لا يوجد اتصال بالانترنت', false);
      isLoadingChangeStatus = false;
      return false;
    }
  }

  // Apply day filters
  void getFilteredData(List<String> selectedDays) {
    days.value = convertDaysToNumbers(selectedDays);
    fetchData();
  }

  // Filter orders locally based on search text
  /* void filterOrdersLocally() {
    if (searchText.isEmpty) {
      // If search text is empty, show all orders
      ordersList = allOrdersList;
    } else {
      ordersList = allOrdersList.where((order) {
        // Adjust the condition based on what you want to search in
        return order.customer.name.contains(searchText);
      }).toList();
    }
    update();
  }
*/
  // Apply selected days
  void applySelectedDays() {
    fetchData();
  }

  void saveCurrentSelectedDays() {
    tempDaysList = days.toList();
  }

  void restoreSelectedDays() {
    days.assignAll(tempDaysList);
  }

  Future<bool> getOrderById() async {
    isLoadingOrder = true;
    isErrorOrder = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;

    if (isDeviceConnected) {
      try {
        String token = storage.read(CacheKeys.token) ?? "";
        final response = await DioHelper.getData(
          url: '${ApiConstants.baseUrl}order/salesman/$orderId',
          bearerToken: token,
        );

        if (response?.statusCode == 200) {
          var data = response!.data["data"];
          log("data $data");
          order = OrderModel.fromJson(data);
          // isLoadingPersonalMetrics = false;
          // Map<String, dynamic> responseData = response!.data;
          // List<dynamic> list = responseData['data'];
          // List<TripDatesModel> fetchedTrips = list.map((e) =>
          //     TripDatesModel.fromJson(e)).toList();
          // tripDatesList = fetchedTrips;
          // // log("${list}" );
          return true;
        } else {
          isErrorOrder = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('Trips Dates failed: ${errorModel.message}', false);
          }
          return false;
        }
      } catch (e) {
        isErrorOrder = true;
        showMessage('Error: $e', false);
        return false;
      } finally {
        isLoadingOrder = false;
      }
    } else {
      isErrorOrder = true;
      showMessage('لا يوجد اتصال بالانترنت', false);
      isLoadingOrder = false;
      return false;
    }
  }
}
