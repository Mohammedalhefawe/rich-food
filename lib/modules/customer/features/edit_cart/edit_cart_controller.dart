import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/connection_checker.dart';
import '../../../../../utils/helpers/api/api_constants.dart';
import '../../../../../utils/helpers/api/dio_exceptions.dart';
import '../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../../../utils/services/date_to_day_name.dart';
import '../../../../../utils/services/time_formatter.dart';
import 'package:dio/dio.dart' as res;

import '../../../sales_man/models/cart_item_model.dart';
import '../../../sales_man/models/error_model.dart';
import '../../models/customer_order_model.dart';
import '../../models/customer_products_model.dart';

class EditCartController extends GetxController {
  final GetStorage storage = GetStorage();

  late CustomerOrderModel originalOrder;
  List<CartItemModel> listProduct = [];
  List<int> listProductId = [];
  double totalPrice = 0;
  int totalProduct = 0;
  String deliveryDate = '';
  String deliveryTime = '';
  String dayName = '';
  String rawDeliveryDate = '';
  bool isLoading = false;
  bool isError = false;
  bool isWritByKeyboard = false;
  late CartItemModel currentCartItemModel;

  void initializeWithOrder(CustomerOrderModel order) {
    originalOrder = order;
    listProduct = order.products
        .map((p) => CartItemModel.fromCustomerProductModel(p))
        .toList();
    listProductId = listProduct.map((item) => item.productId).toList();
    totalProduct = listProduct.length;
    rawDeliveryDate = order.deliveryDate;
    deliveryDate = formatDate(order.deliveryDate);
    deliveryTime = order.deliveryTime;
    dayName = getArabicDayName(order.deliveryDate);
    calculateTotalPrice();
    update();
  }

  void calculateTotalPrice() {
    totalPrice = listProduct.fold(0, (sum, item) => sum + item.cost);
  }

  void removeCartItem(CartItemModel item) {
    listProduct.removeWhere((cartItem) => cartItem.productId == item.productId);
    listProductId.remove(item.productId);
    totalProduct--;
    calculateTotalPrice();
    update();
  }

/*
  void removeCartItem(CartItemModel item) {
    listProduct.removeWhere((cartItem) => cartItem.id == item.id);
    listProductId.remove(item.productId);
    totalProduct--;
    calculateTotalPrice();
    update();
  }
*/

  void increaseQuantity(CartItemModel item) {
    int index = listProduct
        .indexWhere((cartItem) => cartItem.productId == item.productId);
    if (index != -1) {
      listProduct[index].quantity++;
      listProduct[index].cost =
          listProduct[index].price * listProduct[index].quantity;
      calculateTotalPrice();
      update();
    }
  }

  void decreaseQuantity(CartItemModel item) {
    int index = listProduct
        .indexWhere((cartItem) => cartItem.productId == item.productId);
    if (index != -1 && listProduct[index].quantity > 1) {
      listProduct[index].quantity--;
      listProduct[index].cost =
          listProduct[index].price * listProduct[index].quantity;
      calculateTotalPrice();
      update();
    }
  }

  void setQuantity(CartItemModel item, int value) {
    int index = listProduct
        .indexWhere((cartItem) => cartItem.productId == item.productId);
    if (index != -1) {
      listProduct[index].quantity = value;
      listProduct[index].cost =
          listProduct[index].price * listProduct[index].quantity;
      calculateTotalPrice();
      update();
    }
  }

/*  void increaseQuantity(CartItemModel item) {
    int index = listProduct.indexWhere((cartItem) => cartItem.id == item.id);
    if (index != -1) {
      listProduct[index].quantity++;
      listProduct[index].cost =
          listProduct[index].price * listProduct[index].quantity;
      calculateTotalPrice();
      update();
    }
  }

  void decreaseQuantity(CartItemModel item) {
    int index = listProduct.indexWhere((cartItem) => cartItem.id == item.id);
    if (index != -1 && listProduct[index].quantity > 1) {
      listProduct[index].quantity--;
      listProduct[index].cost =
          listProduct[index].price * listProduct[index].quantity;
      calculateTotalPrice();
      update();
    }
  }

  void setQuantity(CartItemModel item, int value) {
    int index = listProduct.indexWhere((cartItem) => cartItem.id == item.id);
    if (index != -1) {
      listProduct[index].quantity = value;
      listProduct[index].cost =
          listProduct[index].price * listProduct[index].quantity;
      calculateTotalPrice();
      update();
    }
  }*/

  void addToCart(CustomerProductModel productModel) {
    int existingIndex =
        listProduct.indexWhere((item) => item.productId == productModel.id);
    if (existingIndex != -1) {
      // Product already exists, increase quantity
      increaseQuantity(listProduct[existingIndex]);
    } else {
      // Add new product
      CartItemModel cartItemModel = CartItemModel(
          productId: productModel.id,
          name: productModel.name,
          image: productModel.image ?? '',
          quantity: 1,
          price: productModel.price.toDouble(),
          cost: productModel.price.toDouble(),
          unit: productModel.unit,
          ingredients: productModel.description);
      listProduct.add(cartItemModel);
      listProductId.add(productModel.id);
      totalProduct++;
      calculateTotalPrice();
      update();
    }
  }

  /* void addToCart(CustomerProductModel productModel) {
    CartItemModel cartItemModel = CartItemModel(
        productId: productModel.id,
        name: productModel.name,
        image: productModel.image ?? '',
        quantity: 1,
        price: productModel.price.toDouble(),
        cost: productModel.price.toDouble(),
        unit: productModel.unit,
        ingredients: productModel.description);
    listProduct.add(cartItemModel);
    listProductId.add(productModel.id);
    totalProduct++;
    calculateTotalPrice();
    update();
  }*/

  changeStateKeyboard() {
    isWritByKeyboard = !isWritByKeyboard;
    update();
  }

  Future<bool> updateOrder() async {
    isLoading = true;
    update();
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    if (isDeviceConnected) {
      String token = storage.read(CacheKeys.token) ?? "";
      int branchId = storage.read(CacheKeys.branchId) ?? 0;

      try {
        res.FormData formData = res.FormData();
        formData.fields.add(MapEntry('branch_id', branchId.toString()));
        formData.fields.add(MapEntry('delivery_date', rawDeliveryDate));
        formData.fields.add(MapEntry('delivery_time', deliveryTime));
        for (int i = 0; i < listProduct.length; i++) {
          formData.fields.add(MapEntry(
            'product[$i][product_id]',
            listProduct[i].productId.toString(),
          ));
          formData.fields.add(MapEntry(
            'product[$i][quantity]',
            listProduct[i].quantity.toString(),
          ));
        }
        final response = await DioHelper.postData(
          url: '${ApiConstants.baseUrl}order/update/${originalOrder.id}',
          data: formData,
          bearerToken: token,
        );
        if (response?.statusCode == 200) {
          isLoading = false;
          update();
          return true;
        } else {
          isLoading = false;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('فشل تعديل الطلب: ${errorModel.message}', false);
          }
          update();
          return false;
        }
      } on res.DioException catch (dioError) {
        isLoading = false;
        final dioException = DioExceptions.fromDioError(dioError);
        showMessage('خطأ: ${dioException.message}', false);
        update();
        return false;
      } catch (e) {
        isLoading = false;
        showMessage('حدث خطأ أثناء تعديل الطلب: $e', false);
        update();
        return false;
      }
    } else {
      isLoading = false;
      showMessage('لا يوجد اتصال بالانترنت', false);
      update();
      return false;
    }
  }

  Future<bool> getNearestTrip() async {
    isLoading = true;
    isError = false;
    update();
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    int branchId = storage.read(CacheKeys.branchId) ?? 0;
    String token = storage.read(CacheKeys.token);
    String userId = storage.read(CacheKeys.userId);

    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}trip/near-trip',
            bearerToken: token,
            query: {
              'branch_id': branchId,
              "customer_id": userId,
            });
        if (response?.statusCode == 200) {
          Map<String, dynamic> responseData = response!.data;
          if (responseData.containsKey('data')) {
            var data = responseData['data'];
            deliveryDate = formatDate(data['date']);
            rawDeliveryDate = data['date'];
            dayName = getArabicDayName(data['date']);
            deliveryTime = data['time'] != null ? formatTime(data['time']) : '';
            isLoading = false;
            update();
            return true;
          } else if (responseData['success'] == false) {
            showMessage(responseData['message'], false);
            isLoading = false;
            update();
            return false;
          } else {
            showMessage('Unexpected response structure', false);
            isLoading = false;
            update();
            return false;
          }
        } else {
          isError = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('request failed: ${errorModel.message}', false);
          }
          isLoading = false;
          update();
          return false;
        }
      } catch (e) {
        isError = true;
        showMessage('Error: $e', false);
        isLoading = false;
        update();
        return false;
      }
    } else {
      isError = true;
      showMessage('لا يوجد اتصال بالانترنت', false);
      isLoading = false;
      update();
      return false;
    }
  }
}
