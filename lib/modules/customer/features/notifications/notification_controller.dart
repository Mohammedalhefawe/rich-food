import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/sales_man/models/notification_model.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/connection_checker.dart';
import '../../../../../utils/helpers/api/api_constants.dart';
import '../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../sales_man/models/error_model.dart';

class CustomerNotificationController extends GetxController {
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

  List<NotificationModel> _notificationList = [];
  List<NotificationModel> get notificationList => _notificationList;
  set notificationList(List<NotificationModel> value) {
    _notificationList = value;
    update();
  }

  bool _isLoadingNotificationsNumber = false;
  bool get isLoadingNotificationsNumber => _isLoadingNotificationsNumber;

  set isLoadingNotificationsNumber(bool value) {
    _isLoadingNotificationsNumber = value;
    update();
  }

  int _unReadNotifications = 0;
  int get unReadNotifications => _unReadNotifications;
  set unReadNotifications(int value) {
    _unReadNotifications = value;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    fetchData();
    getNotificationsNumber();
  }

  final GetStorage storage = GetStorage();

  Future<bool> fetchData() async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    int branchId = storage.read(CacheKeys.branchId) ?? 0;
    String token = storage.read(CacheKeys.token);

    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}notifications',
            bearerToken: token,
            query: {
              "branch_id": branchId,
            });
        if (response?.statusCode == 200) {
          Map<String, dynamic> responseData = response!.data;
          List<dynamic> list = responseData['data'];
          print('notification list: $list');
          notificationList =
              list.map((e) => NotificationModel.fromJson(e)).toList();
          unReadNotifications = 0;
          return true;
        } else {
          isError = true;
          final errorModel = ErrorModel.fromJson(response!.data);
          showMessage(
              'Notifications list failed: ${errorModel.message}', false);
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
      showMessage('No internet connection', false);
      isLoading = false;
      return false;
    }
  }

  Future<bool> getNotificationsNumber() async {
    isLoadingNotificationsNumber = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    int branchId = storage.read(CacheKeys.branchId) ?? 0;
    String token = storage.read(CacheKeys.token) ?? '';
    if (token.isEmpty) {
      isLoadingNotificationsNumber = false;
      return false;
    }
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}notifications/unread',
            bearerToken: token,
            query: {
              'branch_id': branchId,
            });
        if (response?.statusCode == 200) {
          int responseData = response!.data['data'];
          unReadNotifications = responseData;
          return true;
        } else {
          isError = true;
          final errorModel = ErrorModel.fromJson(response!.data);
          showMessage(
              'Notifications Number failed: ${errorModel.message}', false);
          return false;
        }
      } catch (e) {
        isError = true;
        showMessage('Error: $e', false);
        return false;
      } finally {
        isLoadingNotificationsNumber = false;
      }
    } else {
      isError = true;
      showMessage('No internet connection', false);
      isLoadingNotificationsNumber = false;
      return false;
    }
  }
}
