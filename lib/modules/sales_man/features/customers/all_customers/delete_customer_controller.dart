import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/utils/helpers/api/api_constants.dart';
import '../../../../../../shared/widgets/snackBar.dart';
import '../../../../../../utils/connection_checker.dart';
import '../../../../../../utils/helpers/api/dio_exceptions.dart';
import '../../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../../utils/helpers/cacheKeys.dart';
import 'package:dio/dio.dart' as res;
import '../../../models/error_model.dart';

class DeleteCustomerController extends GetxController {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    update();
  }

  bool _isError = false;

  bool get isError => _isError;

  set isError(bool value) {
    _isError = value;
    update();
  }

  final GetStorage storage = GetStorage();

  Future<bool> deleteCustomer(int customerId) async {
    isLoading = true;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;

    if (isDeviceConnected) {
      String token = storage.read(CacheKeys.token) ?? "";
      print("Token: $token"); // Debug token

      try {
        final response = await DioHelper.deleteData(
          url: '${ApiConstants.baseUrl}user/users/$customerId',
          bearerToken: token,
        );

        print("Response status: ${response?.statusCode}");
        print("Response data: ${response?.data}");

        if (response?.statusCode == 200) {
          showMessage('تم حذف الزبون بنجاح', true);
          print("Delete successful");
          isLoading = false;
          return true;
        } else {
          isLoading = false;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('Delete customer failed: ${errorModel.data}', false);
            print("Error: ${errorModel.data}");
          }
          return false;
        }
      } on res.DioException catch (dioError) {
        isLoading = false;
        final dioException = DioExceptions.fromDioError(dioError);
        showMessage('Error: ${dioException.message}', false);
        print("DioException: ${dioException.message}");
        return false;
      } catch (e) {
        isLoading = false;
        showMessage('An unexpected error occurred: $e', false);
        print("Exception: $e");
        return false;
      }
    } else {
      showMessage('No internet connection', false);
      print("No internet connection");
      isLoading = false;
      return false;
    }
  }
}
