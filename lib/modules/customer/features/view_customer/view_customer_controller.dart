import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../shared/widgets/snackBar.dart';
import '../../../../utils/connection_checker.dart';
import '../../../../utils/helpers/api/api_constants.dart';
import '../../../../utils/helpers/cacheKeys.dart';
import '../../../../utils/helpers/api/dio_helper.dart';
import '../../../sales_man/models/error_model.dart';
import '../../models/customer_model.dart';

class CustomerProfileController extends GetxController {
  bool _isError = false;

  bool get isError => _isError;

  set isError(bool value) {
    _isError = value;
    update();
  }

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    update();
  }

  CustomerModelForCustomer _userInfo = CustomerModelForCustomer(
      id: 0,
      name: "",
      userName: "",
      customerType: "",
      customerTypeAr: "",
      address: Address(area: '', id: 0),
      userPassword: UserPassword(password: "", userId: 0));

  CustomerModelForCustomer get userInfo => _userInfo;

  set userInfo(CustomerModelForCustomer value) {
    _userInfo = value;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  final GetStorage storage = GetStorage();

  Future<bool> fetchData() async {
    isLoading = true;
    isError = false;
    String token = storage.read(CacheKeys.token);

    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
          url: '${ApiConstants.baseUrl}me',
          bearerToken: token,
        );
        if (response?.statusCode == 200) {
          // Handle successful response
          Map<String, dynamic> responseData = response!.data;
          print(responseData); // Print response to debug
          var data = responseData['data'][0];
          userInfo = CustomerModelForCustomer.fromJson(data);
          return true;
        } else {
          // Handle failure response
          isError = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('profile failed: ${errorModel.message}', false);
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
      showMessage('No internet connection', false);
      isLoading = false;
      return false;
    }
  }
}
