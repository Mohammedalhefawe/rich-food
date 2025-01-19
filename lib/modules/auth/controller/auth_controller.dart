import 'dart:developer';
import 'package:dio/dio.dart' as res;
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/shared/widgets/snackBar.dart';
import 'package:rich_food/utils/helpers/api/api_constants.dart';

import '../../../utils/connection_checker.dart';
import '../../../utils/helpers/api/dio_exceptions.dart';
import '../../../utils/helpers/api/dio_helper.dart';
import '../../../utils/helpers/cacheKeys.dart';
import '../../sales_man/models/error_model.dart';
import '../models/user_model.dart';

class AuthController extends GetxController {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    update();
  }

  bool isDeviceConnected = false;

  late UserModel userModel;

  final GetStorage storage = GetStorage();

  Future<bool> login(String username, String password) async {
    isLoading = true;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    String fbToken = storage.read(CacheKeys.fCMToken) ?? '';
    print('fbToken: $fbToken');
    print(fbToken);
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.postData(
          url: ApiConstants.loginUrl,
          data: {
            'user_name': username,
            'password': password,
            if (fbToken.isNotEmpty) 'device_token': fbToken,
          },
        );
        isLoading = false;
        if (response?.statusCode == 200) {
          print('auth response: $response');
          _didLogin(response!);
          return true;
        } else {
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('فشل تسجيل الدخول: ${errorModel.message}', false);
          }
          return false;
        }
      } on res.DioException catch (dioError) {
        final dioException = DioExceptions.fromDioError(dioError);
        showMessage('Error: ${dioException.message}', false);
        return false;
      } catch (e) {
        showMessage('An unexpected error occurred: $e', false);
        return false;
      } finally {
        isLoading = false;
      }
    } else {
      isLoading = false;
      showMessage('لا يوجد اتصال بالانترنت', false);
      return false;
    }
  }

  Future<bool> logout() async {
    isLoading = true;
    final String token = storage.read(CacheKeys.token);
    try {
      final response = await DioHelper.getData(
        url: ApiConstants.logoutUrl,
        bearerToken: token,
      );
      print(response?.data);
      if (response != null && response.statusCode == 200) {
        // Handle successful logout
        print(response.data);
        _didLogout(response);
        isLoading = false;
        // Clear any user-related data or cache
        return true;
      } else {
        // Handle logout failure
        isLoading = false;
        return false;
      }
    } catch (e) {
      // Handle error
      isLoading = false;
      return false;
    }
  }

  Future<void> _didLogin(res.Response response) async {
    try {
      if (response.data == null || response.data["data"] == null) {
        throw Exception("Invalid response data");
      }

      var data = response.data["data"];
      var userData = data["user"];

      if (userData == null) {
        throw Exception("User data is missing from the response");
      }

      log("Response data: ${data.toString()}");
      log("User info: ${userData.toString()}");

      String token = data['access_token'];
      if (token.isEmpty) {
        throw Exception("Access token is missing or empty");
      }
      String tokenExpDate = data['expires_at'] ?? '';

      userModel = UserModel.fromJson(userData);
      print(userModel.role);
      await Future.wait([
        storage.write(CacheKeys.isAuth, true),
        storage.write(CacheKeys.token, token),
        storage.write(CacheKeys.expDate, tokenExpDate),
        storage.write(CacheKeys.userId, userModel.id),
        storage.write(CacheKeys.userName, userModel.name),
        storage.write(CacheKeys.userPhone,
            userModel.contacts.firstOrNull?.phoneNumber ?? ''),
        storage.write(CacheKeys.role, userModel.role),
        storage.write(CacheKeys.roleAr, userModel.roleAr),
        if (userModel.role == 'salesman') ...[
          storage.write(CacheKeys.createPermission, userModel.permissions.add),
          storage.write(CacheKeys.editPermission, userModel.permissions.edit),
          storage.write(
              CacheKeys.deletePermission, userModel.permissions.delete),
        ],
        if (userModel.role == 'customer') ...[
          storage.write(CacheKeys.customerType, userModel.customerType),
        ]
      ]);

      log("User data saved successfully");

      // if (userModel.images != null && userModel.images.isNotEmpty) {
      //   String imageUrl = "${ApiHelper.imageUrl}${userModel.images[0].image}";
      //   await storage.write(CacheKeys.userImage, imageUrl);
      // }
    } catch (e) {
      log("Error in _didLogin: ${e.toString()}", error: e);
      // Handle the error appropriately, e.g., show an error message to the user
      // You might want to rethrow the error or return a failure indicator
      rethrow;
    }
  }

  void _didLogout(res.Response response) async {
    final String fcmToken = storage.read(CacheKeys.fCMToken);
    storage.erase();
    storage.write(CacheKeys.fCMToken, fcmToken);
  }
}
