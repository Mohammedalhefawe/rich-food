import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/connection_checker.dart';
import '../../../../../utils/helpers/api/api_constants.dart';
import '../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../../sales_man/models/error_model.dart';

class AddComplaintController extends GetxController {
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

  final GetStorage storage = GetStorage();

  Future<bool> addComplaint(String content) async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    if (isDeviceConnected) {
      String token = storage.read(CacheKeys.token) ?? "";
      int branchId = storage.read(CacheKeys.branchId) ?? 0;
      try {
        final response = await DioHelper.postData(
          url: '${ApiConstants.baseUrl}feedback/feedback?branch_id=$branchId',
          bearerToken: token,
          data: {
            'content': content,
          },
        );
        if (response?.statusCode == 200) {
          return true;
        } else {
          isError = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage(
                'Failed (${errorModel.status}): ${errorModel.message}', false);
          }
          return false;
        }
      } catch (e) {
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
}
