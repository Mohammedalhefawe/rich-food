import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/auth/controller/branches_controller.dart';
import 'package:rich_food/modules/customer/features/products/customer_products_controller.dart';
import 'package:rich_food/modules/customer/models/info_access_time_model.dart';
import 'package:rich_food/modules/sales_man/models/error_model.dart';
import 'package:rich_food/shared/widgets/snackBar.dart';
import 'package:rich_food/utils/connection_checker.dart';
import 'package:rich_food/utils/helpers/api/api_constants.dart';
import 'package:rich_food/utils/helpers/api/dio_helper.dart';
import 'package:rich_food/utils/helpers/cacheKeys.dart';
import 'package:rich_food/utils/services/date_to_day_name.dart';
import 'package:rich_food/utils/services/time_formatter.dart';

import '../../../../shared/styles/theme/app_theme.dart';

class DrawerCustomerController extends GetxController {
  bool isSwitchedForShowTime = false;
  DataModel? accessTime;
  late bool isDark;
  late GetStorage storage;

  bool _isError = false;
  bool _isLoading = false;

  bool get isError => _isError;
  bool get isLoading => _isLoading;

  // Setters with update call
  set isError(bool value) {
    _isError = value;
    update();
  }

  set isLoading(bool value) {
    _isLoading = value;
    update();
  }

  @override
  void onInit() {
    storage = GetStorage();
    isDark = AppTheme.isDark;
    isSwitchedForShowTime = storage.read(CacheKeys.showAccessTime) ?? false;
    if (isSwitchedForShowTime == true) {
      infoAccessTimeModel();
    }
    super.onInit();
  }

  void showTime() {
    isSwitchedForShowTime = !isSwitchedForShowTime;
    storage.write(CacheKeys.showAccessTime, isSwitchedForShowTime);
    if (isSwitchedForShowTime == true) {
      infoAccessTimeModel();
    }
    update();
  }

  void changeTheme() async {
    isDark = !isDark;
    AppTheme.isDark = isDark;
    await Get.find<AppTheme>().changeTheme();
    update();
  }

  infoAccessTimeModel() async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    String token = storage.read(CacheKeys.token) ?? '';
    int branchId = storage.read(CacheKeys.branchId) ?? 0;
    int customerId = storage.read(CacheKeys.userId) ?? 0;

    //  ruct query parameters
    final Map<String, dynamic> queryParams = {
      'branch_id': branchId,
      'customer_id': customerId,
    };

    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}trip/near-trip',
            bearerToken: token,
            query: queryParams);
        if (response?.statusCode == 200) {
          InfoAccessTimeModel responseData =
              InfoAccessTimeModel.fromJson(response?.data);
          if (responseData.data != null) {
            if (responseData.data?.time != null) {
              accessTime = DataModel(
                  date: getArabicDayName(responseData.data!.date),
                  time: formatArabicTime(responseData.data!.time!));
            } else {
              accessTime = DataModel(
                  date: getArabicDayName(responseData.data!.date), time: null);
            }
          } else {
            accessTime = null;
          }
        } else {
          isError = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('request failed: ${errorModel.message}', false);
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
