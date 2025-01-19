import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/sales_man/models/customer_model.dart';
import 'package:rich_food/utils/helpers/api/api_constants.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/connection_checker.dart';
import '../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../models/error_model.dart';

class AllCustomersController extends GetxController {
  bool _isError = false;
  bool get isError => _isError;

  set isError(bool value) {
    _isError = value;
    update();
  }

  bool _isLoadingCustomersList = false;
  bool get isLoadingCustomersList => _isLoadingCustomersList;

  set isLoadingCustomersList(bool value) {
    _isLoadingCustomersList = value;
    update();
  }

  List<CustomerModel> _customersList = [];
  List<CustomerModel> get customersList => _customersList;

  set customersList(List<CustomerModel> value) {
    _customersList = value;
    update();
  }

  List<CustomerModel> _filteredCustomersList = [];
  List<CustomerModel> get filteredCustomersList => _filteredCustomersList;

  set filteredCustomersList(List<CustomerModel> value) {
    _filteredCustomersList = value;
    update();
  }

  void updateCustomer(CustomerModel updatedCustomer) {
    int index = _customersList
        .indexWhere((customer) => customer.id == updatedCustomer.id);
    if (index != -1) {
      _customersList[index] = updatedCustomer;
      update(); // Notify the UI to update
    }

    int filteredIndex = _filteredCustomersList
        .indexWhere((customer) => customer.id == updatedCustomer.id);
    if (filteredIndex != -1) {
      _filteredCustomersList[filteredIndex] = updatedCustomer;
      update(); // Notify the UI to update
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  final GetStorage storage = GetStorage();
  bool isNoOrders = false;
  String searchText = '';
  resetSearch() {
    searchText = '';
  }

  Future<bool> fetchData() async {
    isLoadingCustomersList = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    int cityId = storage.read(CacheKeys.cityID);
    int branchId = storage.read(CacheKeys.branchId);
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}user/users',
            bearerToken: storage.read(CacheKeys.token),
            query: {
              's': searchText,
              'city_id': cityId.toString(),
              'branch_id': branchId.toString(),
              'role': 'customer',
              'no_orders': (isNoOrders) ? '1' : '0',
            });
        if (response?.statusCode == 200) {
          // Handle successful response
          Map<String, dynamic> responseData = response!.data;
          print(responseData); // Print response to debug
          List<dynamic> list = responseData['data'];
          if (list.isEmpty) {
            customersList.clear();
            filteredCustomersList.clear();
            return true;
          }
          customersList = list.map((e) => CustomerModel.fromJson(e)).toList();
          filteredCustomersList = customersList;
          return true;
        } else {
          // Handle failure response
          isError = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('Customers list failed: ${errorModel.message}', false);
          }
          return false;
        }
      } catch (e) {
        // Handle error
        isError = true;
        showMessage('Error: $e', false);
        return false;
      } finally {
        isLoadingCustomersList = false;
      }
    } else {
      isError = true;
      showMessage('No internet connection', false);
      isLoadingCustomersList = false;
      return false;
    }
  }

  void runFilter(String value) {
    if (value.isNotEmpty) {
      filteredCustomersList = customersList
          .where((element) => element.name.contains(value))
          .toList();
    } else {
      filteredCustomersList = customersList;
    }
  }
}
