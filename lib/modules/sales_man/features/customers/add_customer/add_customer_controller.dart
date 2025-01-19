import 'dart:ui';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/utils/helpers/api/api_constants.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/connection_checker.dart';
import '../../../../../utils/helpers/api/dio_exceptions.dart';
import '../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../../../utils/services/printer.dart';
import '../../../models/area_model.dart';
import '../../../models/error_model.dart';
import 'package:dio/dio.dart' as res;

class AddCustomerController extends GetxController {
  String _selectedRegion = "المنطقة";

  String get region => _selectedRegion;

  set region(String value) {
    _selectedRegion = value;
    update();
  }

  String _selectedType = "النوع";

  String get type => _selectedType;

  set type(String value) {
    _selectedType = value;
    update();
  }

  final Color _textColor = primary;

  // Color get color => _textColor;
  //
  // set color(Color value) {
  //   _textColor = value;
  //   update();
  // }

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    update();
  }

  // List<TextEditingController> _phoneNumberController =[];
  // List<TextEditingController> get phoneNumberController => _phoneNumberController;
  // set phoneNumberController( List<TextEditingController> value) {
  //   _phoneNumberController = value;
  //   update();
  // }

  bool _isError = false;
  bool get isError => _isError;

  set isError(bool value) {
    _isError = value;
    update();
  }

  bool _isLoadingArea = false;

  bool get isLoadingArea => _isLoadingArea;

  set isLoadingArea(bool value) {
    _isLoadingArea = value;
    update();
  }

  List<AreaModel> _areaList = [];
  List<AreaModel> get areaList => _areaList;
  set areaList(List<AreaModel> value) {
    _areaList = value;
    update();
  }

  List<AreaModel> _filteredAreaList = [];
  List<AreaModel> get filteredAreaList => _filteredAreaList;
  set filteredAreaList(List<AreaModel> value) {
    _filteredAreaList = value;
    update();
  }

  int regionId = -1;

  @override
  void onInit() {
    super.onInit();
    getArea();
  }

  final GetStorage storage = GetStorage();

//   Future<bool> addCustomer(String name, String username, String password,
//       String location, String customerType, List<String> phoneNumber, int regionId) async {
//     isLoading = true;
//     bool isDeviceConnected = await InternetChecker.instance.hasConnection;
//
//     if (isDeviceConnected) {
//       String token = storage.read(CacheKeys.token);
// print(token);
//       try {
//         res.FormData formData = res.FormData();
//         formData.fields.add(MapEntry('name', name));
//         formData.fields.add(MapEntry('user_name', username));
//         formData.fields.add(MapEntry('password', password));
//         formData.fields.add(MapEntry('location', location));
//         formData.fields.add(MapEntry('role', "customer"));
//         formData.fields.add(MapEntry('customer_type', customerType));
//         formData.fields.add(MapEntry('address_id', "$regionId"));
//
//         for (int i = 0; i < phoneNumber.length; i++) {
//           formData.fields.add(MapEntry(
//             'phone_number[$i]',
//             phoneNumber[i],
//           ));
//         }
//         printFormDataContents(formData);
//         final response = await DioHelper.postData(
//           url: '${ApiConstants.baseUrl}auth/register',
//           data: formData,
//           bearerToken: token,
//         );
//
//         // Print the raw response for debugging
//         print("Raw response: ${response}");
//
//         if (response?.statusCode == 200) {
//           if (response?.data is String) {
//             // Handle the case where the response is a plain string
//             showMessage('تم إضافة زبون', true);
//           } else {
//             print(response);
//             showMessage(' تم إضافة زبون', true);
//           }
//           isLoading = false;
//           return true;
//         } else {
//           print(response);
//           isLoading = false;
//           if (response != null) {
//             final errorModel = ErrorModel.fromJson(response.data);
//             showMessage(' ${errorModel.message}', false);
//           }
//           return false;
//         }
//       } on res.DioException catch (dioError) {
//         isLoading = false;
//         final dioException = DioExceptions.fromDioError(dioError);
//         showMessage('Error: ${dioException.message}', false);
//         return false;
//       } catch (e) {
//         isLoading = false;
//         showMessage('An unexpected error occurred: $e', false);
//         return false;
//       }
//     } else {
//       showMessage('لا يوجد اتصال بالانترنت', false);
//       isLoading = false;
//       return false;
//     }
//   }

  Future<bool> addCustomer(
      String name,
      String username,
      String password,
      String location,
      String customerType,
      List<String> phoneNumber,
      int regionId) async {
    isLoading = true;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;

    if (isDeviceConnected) {
      String token = storage.read(CacheKeys.token);

      try {
        res.FormData formData = res.FormData();
        formData.fields.add(MapEntry('name', name));
        formData.fields.add(MapEntry('user_name', username));
        formData.fields.add(MapEntry('password', password));
        formData.fields.add(MapEntry('location', location));
        formData.fields.add(const MapEntry('role', "customer"));
        formData.fields.add(MapEntry('customer_type', customerType));
        formData.fields.add(MapEntry('address_id', "$regionId"));

        for (int i = 0; i < phoneNumber.length; i++) {
          formData.fields.add(MapEntry(
            'phone_number[$i]',
            phoneNumber[i],
          ));
        }
        printFormDataContents(formData);
        final response = await DioHelper.postData(
          url: '${ApiConstants.baseUrl}auth/register',
          data: formData,
          bearerToken: token,
        );
        if (response?.statusCode == 200) {
          print(response);

          isLoading = false;
          return true;
        }
        // else if (response?.statusCode == 422) {
        //   showMessage(
        //       // "عذرًا، اسم المستخدم الذي أدخلته موجود بالفعل. يرجى اختيار اسم مستخدم آخر.",
        //       errorModel.mess
        //       false);
        //   isLoading = false;
        //   return false;
        // }
        else {
          isLoading = false;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage(errorModel.message, false);
            // showMessage(errorModel.data, false);
          }
          return false;
        }
      } on res.DioException catch (dioError) {
        isLoading = false;
        final dioException = DioExceptions.fromDioError(dioError);
        showMessage('Error: ${dioException.message}', false);
        return false;
      } catch (e) {
        isLoading = false;
        showMessage('An unexpected error occurred: $e', false);
        return false;
      }
    } else {
      showMessage('لا يوجد اتصال بالانترنت', false);
      isLoading = false;
      return false;
    }
  }

  Future<bool> getArea() async {
    isLoadingArea = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    final int cityId = storage.read(CacheKeys.cityID) ?? 0;
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}address/addresses/$cityId',
            bearerToken: storage.read(CacheKeys.token));
        if (response?.statusCode == 200) {
          // Handle successful response
          Map<String, dynamic> responseData = response!.data;
          print(responseData);
          List<dynamic> list = responseData['data'];
          if (list.isEmpty) {
            areaList.clear();
            filteredAreaList.clear();
            return true;
          }
          areaList = list.map((e) => AreaModel.fromJson(e)).toList();
          filteredAreaList = areaList;
          return true;
        } else {
          // Handle failure response
          isError = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('area list failed: ${errorModel.message}', false);
          }
          return false;
        }
      } catch (e) {
        isError = true;
        showMessage('Error: $e', false);
        return false;
      } finally {
        isLoadingArea = false;
      }
    } else {
      isError = true;
      showMessage('No internet connection', false);
      isLoadingArea = false;
      return false;
    }
  }

  void runFilter(String value) {
    if (value.isNotEmpty) {
      filteredAreaList =
          areaList.where((element) => element.area.contains(value)).toList();
    } else {
      filteredAreaList = areaList;
    }
  }
}
