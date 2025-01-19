import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/auth/controller/branches_controller.dart';
import 'package:rich_food/modules/sales_man/models/day_trip_model.dart';
import 'package:rich_food/shared/widgets/snackBar.dart';
import 'package:rich_food/utils/connection_checker.dart';
import 'package:rich_food/utils/helpers/api/api_constants.dart';
import 'package:rich_food/utils/helpers/api/dio_helper.dart';
import 'package:rich_food/modules/sales_man/models/error_model.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../models/day_trips_model.dart';

class DayTripsController extends GetxController {
  int _currentPage = 1;
  bool _hasNextPage = true;
  bool isFetchingMore = false;

  final ScrollController scrollController = ScrollController();

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

  bool _isLoadingMore = false;
  bool get isLoadingMore => _isLoadingMore;

  set isLoadingMore(bool value) {
    _isLoadingMore = value;
    update();
  }

  List<DayTripModel> _dayTripsList = [];
  List<DayTripModel> get dayTripsList => _dayTripsList;

  set dayTripsList(List<DayTripModel> value) {
    _dayTripsList = value;
    update();
  }

  @override
  void onInit() async {
    super.onInit();
    //edit
    isLoading = true;
    Future.wait([
      Get.put(BranchesController()).fetchData(),
    ]).then((value) {
      if (value[0] == true) {
        fetchData();
      }
    });
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          !isFetchingMore &&
          _hasNextPage) {
        _currentPage++;
        fetchMore();
      }
    });
  }

  final GetStorage storage = GetStorage();

  Future<bool> fetchData() async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    String token = storage.read(CacheKeys.token) ?? '';
    int branchId = storage.read(CacheKeys.branchId) ?? 0;
    print(token);
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}trip/salesman/index/daily',
            bearerToken: token,
            query: {
              'branch_id': branchId.toString(),
              'page': '1',
            });
        if (response?.statusCode == 200) {
          Map<String, dynamic> responseData = response!.data;
          print(responseData);
          print('===============');
          DayTripsModel dayTripsModel = DayTripsModel.fromJson(responseData);
          dayTripsList = dayTripsModel.data.dayTrips;

          _hasNextPage =
              dayTripsModel.data.currentPage != dayTripsModel.data.lastPage;

          return true;
        } else {
          isError = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('Day Trips failed: ${errorModel.message}', false);
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

  Future<void> fetchMore() async {
    if (isFetchingMore) return;
    isFetchingMore = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    String token = GetStorage().read(CacheKeys.token);
    int branchId = GetStorage().read(CacheKeys.branchId);
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}trip/salesman/index/daily',
            bearerToken: token,
            query: {
              'branch_id': '$branchId',
              'page': _currentPage.toString(),
            });

        if (response?.statusCode == 200) {
          Map<String, dynamic> responseData = response!.data;
          DayTripsModel dayTripsModel = DayTripsModel.fromJson(responseData);
          dayTripsList.addAll(dayTripsModel.data.dayTrips);
          _hasNextPage =
              dayTripsModel.data.currentPage != dayTripsModel.data.lastPage;
          isFetchingMore = false;
          update();
        } else {
          isError = true;
          isFetchingMore = false;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('request failed: ${errorModel.message}', false);
          }
        }
      } catch (e) {
        isError = true;
        showMessage('Error: $e', false);
        isFetchingMore = false;
      }
    } else {
      isError = true;
      showMessage('لا يوجد اتصال بالانترنت', false);
      isFetchingMore = false;
    }
  }
}
