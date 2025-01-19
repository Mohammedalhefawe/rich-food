import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/customer/models/customer_order_model.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/connection_checker.dart';
import '../../../../../utils/helpers/api/api_constants.dart';
import '../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../sales_man/models/error_model.dart';

class MyOrderController extends GetxController {
  CustomerOrderModel? _myOrder;

  CustomerOrderModel? get myOrder => _myOrder;

  set myOrder(CustomerOrderModel? value) {
    _myOrder = value;
    update();
  }

  // State variables
  bool _isError = false;
  bool _isLoading = false;
  bool _isLoadingChangeStatus = false;

  final GetStorage storage = GetStorage();

  bool get isError => _isError;
  bool get isLoading => _isLoading;
  bool get isLoadingChangeStatus => _isLoadingChangeStatus;

  // Setters with update call
  set isError(bool value) {
    _isError = value;
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

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<bool> fetchData() async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    int branchId = storage.read(CacheKeys.branchId) ?? 0;
    String token = storage.read(CacheKeys.token);
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}order/customer/my-order',
            bearerToken: token,
            query: {
              'branch_id': branchId,
            });
        print(response);
        if (response?.statusCode == 200) {
          // Handle successful
          Map<String, dynamic> responseData = response!.data;
          if (responseData.containsKey('data')) {
            var data = responseData['data'];
            if (data == null) {
              myOrder = null;
            } else {
              myOrder = data != null ? CustomerOrderModel.fromJson(data) : null;
              update();
            }
            return true;
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
        isLoading = false;
      }
    } else {
      isError = true;
      showMessage('لا يوجد اتصال بالانترنت', false);
      isLoading = false;
      return false;
    }
  }

  Future<bool> refreshData() async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    int branchId = storage.read(CacheKeys.branchId) ?? 0;
    String token = storage.read(CacheKeys.token);
    await Future.delayed(Duration(seconds: 2));
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}order/customer/my-order',
            bearerToken: token,
            query: {
              'branch_id': branchId,
            });
        print(response);
        if (response?.statusCode == 200) {
          // Handle successful
          Map<String, dynamic> responseData = response!.data;
          if (responseData.containsKey('data')) {
            var data = responseData['data'];
            if (data == null) {
              myOrder = null;
            } else {
              myOrder = data != null ? CustomerOrderModel.fromJson(data) : null;
              update();
            }
            return true;
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
        isLoading = false;
      }
    } else {
      isError = true;
      showMessage('لا يوجد اتصال بالانترنت', false);
      isLoading = false;
      return false;
    }
  }


  Future<bool> changeOrderStatus({
    required String action,
    required int orderId,
  }) async {
    isLoadingChangeStatus = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    int branchId = storage.read(CacheKeys.branchId) ?? 0;
    String token = storage.read(CacheKeys.token);
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.putData(
            url:
                '${ApiConstants.baseUrl}order/archived/$orderId?branch_id=$branchId',
            bearerToken: token,
            data: {
              '_method': 'PUT',
              'action': action, // canceled, accepted
            });
        if (response?.statusCode == 200) {
          // Handle successful
          Map<String, dynamic> responseData = response!.data;
          if (responseData.containsKey('success')) {
            if (responseData['success'] == true) {
              myOrder!.status = action;
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
}
