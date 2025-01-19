import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/utils/helpers/api/api_constants.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/connection_checker.dart';
import '../../../../../utils/helpers/api/dio_exceptions.dart';
import '../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../../../utils/services/printer.dart';
import '../../../models/area_model.dart';
import '../../../models/error_model.dart';
import 'package:dio/dio.dart' as res;

class EditCustomerController extends GetxController {
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getArea();
    });
  }

  final GetStorage storage = GetStorage();

  Future<bool> editCustomer(
      int customerId,
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
      String token = storage.read(CacheKeys.token) ?? "";

      try {
        storage.read(CacheKeys.token);
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
          url: '${ApiConstants.baseUrl}user/update/$customerId',
          data: formData,
          bearerToken: token,
        );
        if (response?.statusCode == 200) {
          print(response);
          isLoading = false;
          return true;
        } else {
          isLoading = false;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data["message"]);
            showMessage(' ${errorModel.message}', false);
            // showMessage('فشل إضافة طلب: ${response?.data["message"]}', false);
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

    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}address/addresses/1',
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
