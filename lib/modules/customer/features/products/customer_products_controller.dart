import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/connection_checker.dart';
import '../../../../../utils/helpers/api/api_constants.dart';
import '../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../sales_man/models/error_model.dart';
import '../../models/customer_products_model.dart';

class CustomerProductsController extends GetxController {
  int _currentPage = 1;
  bool _hasNextPage = true;
  bool isFetchingMore = false;
  bool isWritByKeyboard = false;
  late CustomerProductModel currentCartItemModel;
  final ScrollController scrollCont1 = ScrollController();
  final ScrollController scrollCont2 = ScrollController();

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

  List<CustomerProductModel> _productList = [];
  List<CustomerProductModel> get productList => _productList;
  set productList(List<CustomerProductModel> value) {
    _productList = value;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getProductList();

    scrollCont1.addListener(() {
      if (scrollCont1.position.pixels == scrollCont1.position.maxScrollExtent &&
          !isFetchingMore &&
          _hasNextPage) {
        _currentPage++;
        getMoreProductList();
      }
    });
    scrollCont2.addListener(() {
      if (scrollCont2.position.pixels == scrollCont2.position.maxScrollExtent &&
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

  // void setQuantity(CustomerProductModel item, int value) {
  //   int index = productList
  //       .indexWhere((cartItem) => cartItem.id == item.id);
  //   if (index != -1) {
  //     productList[index].quantity = value;
  //     listProduct[index].cost =
  //         listProduct[index].price * listProduct[index].quantity;
  //     getCostOfCart();
  //     update();
  //   }
  // }

  final GetStorage storage = GetStorage();

  Future<void> getProductList() async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    String token = storage.read(CacheKeys.token);
    int branchId = storage.read(CacheKeys.branchId) ?? 0;
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
          CustomerProductsModel productsModel =
              CustomerProductsModel.fromJson(responseData);
          _currentPage = 1;
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
          CustomerProductsModel productsModel =
              CustomerProductsModel.fromJson(responseData);
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

/* 
  Future<bool> getProductList() async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    String token = GetStorage().read(CacheKeys.token);
    int branchId = GetStorage().read(CacheKeys.branchId);
    if (isDeviceConnected) {
      try {
        ///////////////////////////////////////////////////////////////////
        final response = await DioHelper.getData(url: '${ApiConstants.baseUrl}product/products',
        // final response = await DioHelper.getData(url: '${ApiConstants.baseUrl}api/product/products?branch_id=$branchId',
        bearerToken: token,
          query: {
          'branch_id': '$branchId',
          's': searchText,
          }
        );
        if (response?.statusCode == 200) {
          // Handle successful
          Map<String, dynamic> responseData = response!.data;
          List<dynamic> list = responseData['data']['data'];
          print('product list: $list');
          productList = list.map((e) => ProductModel.fromJson(e)).toList();
          isLoading = false;
          return true;
        } else {
          // Handle failure
          isError = true;
          isLoading = false;
          if (response != null){
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('request failed: ${errorModel.message}', false);
          }
          return false;
        }
      }
      catch (e) {
        // Handle error
        isError = true;
        showMessage('Error: $e', false);
        isLoading = false;
        return false;
      }
    } else {
      isError = true;
      showMessage('لا يوجد اتصال بالانترنت', false);
      isLoading = false;
      return false;
    }
  }
*/
