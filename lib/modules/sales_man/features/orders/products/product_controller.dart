import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/sales_man/models/products_model.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/connection_checker.dart';
import '../../../../../utils/helpers/api/api_constants.dart';
import '../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../models/error_model.dart';

class ProductsController extends GetxController {
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

  List<ProductModel> _productList = [];
  List<ProductModel> get productList => _productList;
  set productList(List<ProductModel> value) {
    _productList = value;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getProductList();

    scrollController.addListener(() {
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          !isFetchingMore &&
          _hasNextPage) {
        _currentPage++;
        getMoreProductList();
      }
    });
  }

  String searchText = '';

  void resetSearch() {
    searchText = '';
  }

  Future<void> getProductList() async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    String token = GetStorage().read(CacheKeys.token);
    int branchId = GetStorage().read(CacheKeys.branchId);
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}product/products',
            bearerToken: token,
            query: {
              'branch_id': '$branchId',
              's': searchText,
              'page': '1',
            });

        if (response?.statusCode == 200) {
          Map<String, dynamic> responseData = response!.data;
          ProductsModel productsModel = ProductsModel.fromJson(responseData);
          productList = productsModel.data.products;
          _hasNextPage =
              productsModel.data.currentPage != productsModel.data.lastPage;
          isFetchingMore = false;
          isLoading = false;
        } else {
          isError = true;
          isLoading = false;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('request failed: ${errorModel.message}', false);
          }
        }
      } catch (e) {
        isError = true;
        showMessage('Error: $e', false);
        isLoading = false;
      }
    } else {
      isError = true;
      showMessage('لا يوجد اتصال بالانترنت', false);
      isLoading = false;
    }
  }

  Future<void> getMoreProductList() async {
    if (isFetchingMore) return;
    isFetchingMore = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    String token = GetStorage().read(CacheKeys.token);
    int branchId = GetStorage().read(CacheKeys.branchId);
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}product/products',
            bearerToken: token,
            query: {
              'branch_id': '$branchId',
              's': searchText,
              'page': _currentPage.toString(),
            });

        if (response?.statusCode == 200) {
          Map<String, dynamic> responseData = response!.data;
          ProductsModel productsModel = ProductsModel.fromJson(responseData);
          productList.addAll(productsModel.data.products);
          _hasNextPage =
              productsModel.data.currentPage != productsModel.data.lastPage;
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
