import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/connection_checker.dart';
import '../../../../../utils/helpers/api/api_constants.dart';
import '../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../../../utils/services/get_auth.dart';
import '../../../models/error_model.dart';
import '../../../models/week_trip_model.dart';

class AllWeekTripsController extends GetxController {
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

  WeeklySchedule _weeklySchedule = WeeklySchedule(days: {});

  WeeklySchedule get weeklySchedule => _weeklySchedule;

  set weeklySchedule(WeeklySchedule value) {
    _weeklySchedule = value;
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
    final GetStorage storage = GetStorage();
    if (isDeviceConnected) {
      try {
        String token = getAuth();
        // String token = storage.read(CacheKeys.token) ?? "";
        int branchId = storage.read(CacheKeys.branchId) ?? 0;
        final response = await DioHelper.getData(
            bearerToken: token,
            url: '${ApiConstants.baseUrl}trip/salesman/index/weekly',
            query: {
              'branch_id': branchId.toString(),
            });
        if (response?.statusCode == 200) {
          // Handle successful
          Map<String, dynamic> responseData = response!.data;

          weeklySchedule = WeeklySchedule.fromJson(responseData['data']);

          return true;
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
}
