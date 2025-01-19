import 'dart:developer';

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
import '../../../models/cart_item_model.dart';
import '../../../models/customer_model.dart';
import '../../../models/error_model.dart';
import '../../../models/order_model.dart';
import '../../../models/products_model.dart';
import 'package:dio/dio.dart' as res;

class EditOrderController extends GetxController {
  final GetStorage storage = GetStorage();

  late OrderModel originalOrder;
  bool isWritByKeyboard = false;
  late CartItemModel currentCartItemModel;
  List<CartItemModel> listProduct = [];
  List<int> listProductId = [];
  // late CustomerModel _selectedCustomer;
  CustomerModel _selectedCustomer = CustomerModel(
      id: 0,
      name: '',
      userName: '',
      customerType: '',
      customerTypeAr: '',
      address: Address(id: 0, area: ''),
      userPassword: UserPassword(userId: 0, password: ''));

  CustomerModel get selectedCustomer => _selectedCustomer;

  set selectedCustomer(CustomerModel value) {
    if (value.customerType != _selectedCustomer.customerType) {
      clearCart();
    }
    _selectedCustomer = value;
    update();
  }

  double totalPrice = 0;
  int totalProduct = 0;
  String deliveryDate = '';
  String deliveryTime = '';
  String dayName = '';
  String rawDeliveryDate = '';
  bool isLoading = false;
  bool isError = false;

  void initializeWithOrder(OrderModel order) {
    originalOrder = order;
    selectedCustomer = CustomerModel.fromOrderCustomer(order.customer);
    listProduct = order.products.map((p) => CartItemModel.fromProductModel(p)).toList();
    listProductId = listProduct.map((item) => item.productId).toList();
    totalProduct = listProduct.length;
    rawDeliveryDate = order.deliveryDate;
    deliveryDate = formatDate(order.deliveryDate);
    deliveryTime = order.deliveryTime;
    dayName = getArabicDayName(order.deliveryDate);
    getCostOfCart();
    update();
  }

  void getCostOfCart() {
    totalPrice = listProduct.fold(0, (sum, item) => sum + item.cost);
    update();
  }

  Future clearCart() async {
    try {
      listProduct.clear();
      listProductId.clear();
      totalProduct = 0;
      getCostOfCart();
      update();
    } on Exception catch (e) {
      log("exception : $e");
    }
  }

  void removeFromCart(CartItemModel item) {
    // Remove the specific item based on its productId
    listProduct.removeWhere((cartItem) => cartItem.productId == item.productId);

    // Remove the productId from the listProductId
    listProductId.remove(item.productId);

    // Decrease the total product count
    totalProduct--;

    // Recalculate the total cost
    getCostOfCart();

    // Update the UI
    update();
  }

/*
  void removeFromCart(CartItemModel item) {
    listProduct.removeWhere((cartItem) => cartItem.id == item.id);
    listProductId.remove(item.productId);
    totalProduct--;
    getCostOfCart();
    update();
  }
*/

  void removeFromCartByID(int productID) {
    // Remove the specific item based on its productId
    listProduct.removeWhere((cartItem) => cartItem.productId == productID);

    // Remove the productId from the listProductId
    listProductId.remove(productID);

    // Decrease the total product count
    totalProduct--;

    // Recalculate the total cost
    getCostOfCart();

    // Update the UI
    update();
  }

  void increaseQuantity(CartItemModel item) {
    int index = listProduct.indexWhere((cartItem) => cartItem.productId == item.productId);
    if (index != -1) {
      listProduct[index].quantity++;
      listProduct[index].cost = listProduct[index].price * listProduct[index].quantity;
      getCostOfCart();
      update();
    }
  }

  void setQuantity(CartItemModel item, int value) {
    int index = listProduct.indexWhere((cartItem) => cartItem.productId == item.productId);
    if (index != -1) {
      listProduct[index].quantity = value;
      listProduct[index].cost = listProduct[index].price * listProduct[index].quantity;
      getCostOfCart();
      update();
    }
  }

  void decreaseQuantity(CartItemModel item) {
    int index = listProduct.indexWhere((cartItem) => cartItem.productId == item.productId);
    if (index != -1 && listProduct[index].quantity > 1) {
      listProduct[index].quantity--;
      listProduct[index].cost = listProduct[index].price * listProduct[index].quantity;
      getCostOfCart();
      update();
    }
  }

/*  void increaseQuantity(CartItemModel item) {
    int index = listProduct.indexWhere((cartItem) => cartItem.id == item.id);
    if (index != -1) {
      listProduct[index].quantity++;
      listProduct[index].cost =
          listProduct[index].price * listProduct[index].quantity;
      getCostOfCart();
      update();
    }
  }

  void decreaseQuantity(CartItemModel item) {
    int index = listProduct.indexWhere((cartItem) => cartItem.id == item.id);
    if (index != -1 && listProduct[index].quantity > 1) {
      listProduct[index].quantity--;
      listProduct[index].cost =
          listProduct[index].price * listProduct[index].quantity;
      getCostOfCart();
      update();
    }
  }

  void setQuantity(CartItemModel item, int value) {
    int index = listProduct.indexWhere((cartItem) => cartItem.id == item.id);
    if (index != -1) {
      listProduct[index].quantity = value;
      listProduct[index].cost =
          listProduct[index].price * listProduct[index].quantity;
      getCostOfCart();
      update();
    }
  }*/

  changeStateKeyboard() {
    isWritByKeyboard = !isWritByKeyboard;
    update();
  }


  void addToCart(ProductModel productModel) {
    int existingIndex = listProduct.indexWhere((item) => item.productId == productModel.id);
    if (existingIndex != -1) {
      // Product already exists, increase quantity
      increaseQuantity(listProduct[existingIndex]);
    } else {
      // Add new product
      int price = selectedCustomer.customerType == 'center'
          ? productModel.centerPrice
          : productModel.shopPrice;

      CartItemModel cartItemModel = CartItemModel(
          productId: productModel.id,
          name: productModel.name,
          image: productModel.image ?? '',
          quantity: 1,
          price: price.toDouble(),
          cost: price.toDouble(),
          unit: productModel.unit,
          ingredients: productModel.description
      );
      listProduct.add(cartItemModel);
      listProductId.add(productModel.id);
      totalProduct++;
      getCostOfCart();
      update();
    }
  }
/*  void addToCart(ProductModel productModel) {
    int price = selectedCustomer.customerType == 'center'
        ? productModel.centerPrice
        : productModel.shopPrice;
    CartItemModel cartItemModel = CartItemModel(
        productId: productModel.id,
        name: productModel.name,
        image: productModel.image ?? '',
        quantity: 1,
        price: price.toDouble(),
        cost: price.toDouble(),
        unit: productModel.unit,
        ingredients: productModel.description);
    listProduct.add(cartItemModel);
    listProductId.add(productModel.id);
    totalProduct++;
    getCostOfCart();
    update();
  }*/

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
        formData.fields
            .add(MapEntry('customer_id', selectedCustomer.id.toString()));
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
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
          url:
              '${ApiConstants.baseUrl}trip/near-trip?customer_id=${selectedCustomer.id}&branch_id=$branchId',
          bearerToken: token,
        );
        if (response?.statusCode == 200) {
          Map<String, dynamic> responseData = response!.data;
          if (responseData.containsKey('data')) {
            var data = responseData['data'];
            deliveryDate = formatDate(data['date']);
            rawDeliveryDate = data['date'];
            dayName = getArabicDayName(data['date']);
            deliveryTime =
                data['time'] != null ? formatArabicTime(data['time']) : '';
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
