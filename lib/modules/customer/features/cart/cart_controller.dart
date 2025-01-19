import 'dart:developer';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/connection_checker.dart';
import '../../../../../utils/helpers/api/api_constants.dart';
import '../../../../../utils/helpers/api/dio_exceptions.dart';
import '../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../../../utils/helpers/database_helper.dart';
import '../../../../../utils/services/date_to_day_name.dart';
import '../../../../../utils/services/printer.dart';
import '../../../../../utils/services/time_formatter.dart';
import 'package:dio/dio.dart' as res;
import '../../../sales_man/models/cart_item_model.dart';
import '../../../sales_man/models/error_model.dart';
import '../../models/customer_products_model.dart';

class CartController extends GetxController {


  late CartItemModel currentCartItemModel;


  List<CartItemModel> _listProduct = [];

  List<CartItemModel> get listProduct => _listProduct;

  set listProduct(List<CartItemModel> value) {
    _listProduct = value;
    update();
  }

  bool isWritByKeyboard = false;
  List<int> _listProductId = [];

  List<int> get listProductId => _listProductId;

  set listProductId(List<int> value) {
    _listProductId = value;
    update();
  }

  /*
    amount of a product
  */
  int _count = 1;

  int get count => _count;

  set count(int value) {
    _count = value;
    update();
  }

  /*
    total price of all products
  */
  double _totalPrice = 0;

  double get totalPrice => _totalPrice;

  set totalPrice(double value) {
    _totalPrice = value;
    update();
  }

  int _totalProduct = 0;

  int get totalProduct => _totalProduct;

  set totalProduct(int value) {
    _totalProduct = value;
    update();
  }

  int _totalQty = 0;

  int get totalQty {
    for (int i = 0; i < listProduct.length; i++) {
      _totalQty = listProduct[i].quantity;
    }
    return _totalQty;
  }

  set totalQty(int value) {
    _totalQty = value;
    update();
  }

  void increaseCountProduct() {
    _count++;
    update();
  }

  void decreaseCountProduct() {
    if (count > 1) {
      _count--;
    }
    update();
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
  }

  changeStateKeyboard() {
    isWritByKeyboard = !isWritByKeyboard;
    update();
  }

  void addProduct(CartItemModel item) async {
    try {
      int resultAdd = await DatabaseHelper.instance.addProduct(item);
      if (resultAdd > 0) {
        item.id = resultAdd; // Set the ID returned from the database
        listProduct.add(item);
        listProductId.add(item.productId);
        count = 1;
        totalPrice += item.cost;
        totalProduct += 1;
        log("Product added: ${item.name}, ID: ${item.id}, ProductID: ${item.productId}");
      } else {
        showMessage("لم يتم الإضافة إلى الطلب", false);
      }
      update();
    } on Exception catch (e) {
      log("Exception add product: $e");
    }
  }

  void getProducts() async {
    try {
      listProduct = await DatabaseHelper.instance.getAllCartProduct();
      totalProduct = listProduct.length;
      listProductId = listProduct.map((product) => product.productId).toList();
      getCostOfCart();
      log("Products fetched. Count: ${listProduct.length}");
      update();
    } on Exception catch (e) {
      log("Exception get products: $e");
    }
  }

  Future<List<int>?> getProductIdList() async {
    try {
      List<CartItemModel> listProduct =
          await DatabaseHelper.instance.getAllCartProduct();
      List<int> listIds = [];
      for (int i = 0; i < listProduct.length; i++) {
        listIds.add(listProduct[i].productId);
      }
      update();
      return listIds;
    } on Exception catch (e) {
      log("get product id list exception : $e");
      return null;
    }
  }

  void updateCartItem(CartItemModel item) async {
    try {
      int result = await DatabaseHelper.instance.updateProduct(item);
      log("result update : $result");
      update();
    } catch (e) {
      log("Exception remove products : $e");
    }
  }

  void removeCartItem(CartItemModel item) async {
    try {
      int result = await DatabaseHelper.instance.deleteProduct(item.id ?? 0);
      if (result > 0) {
        listProductId.remove(item.productId);
        listProduct.removeWhere((cartItem) => cartItem.id == item.id);
        totalProduct--;
        getCostOfCart();
        log("Product removed: ${item.name}, ID: ${item.id}, ProductID: ${item.productId}");
      } else {
        log("Failed to remove product from database: ${item.name}, ID: ${item.id}");
      }
    } catch (e) {
      log("Exception removing product: $e");
    } finally {
      getProducts(); // Refresh the list after removal attempt
      update();
    }
  }

  void decreaseQuantity(CartItemModel item) {
    if (item.quantity == 1) {
      // removeCartItem(item);
      // getTotalCostOfCart();
      // update();
    } else {
      item.quantity--;
      item.cost = item.price * item.quantity;
      updateCartItem(item);
      getCostOfCart();
      log("quantity - : ${item.quantity}");
      update();
    }
  }

  void increaseQuantity(CartItemModel item) {
    item.quantity++;
    item.cost = item.price * item.quantity;
    updateCartItem(item);
    getCostOfCart();
    log("quantity + : ${item.quantity}");
    update();
  }

  getCostOfCart() {
    double total = 0.0;
    if (listProduct.isNotEmpty) {
      for (int i = 0; i < listProduct.length; i++) {
        log("price is : ${listProduct[i].cost}");
        total += listProduct[i].cost;
      }
    }
    totalPrice = total;
    update();
  }

  Future clearCart() async {
    try {
      int result = await DatabaseHelper.instance.deleteAllProduct();
      log("result delete all product : $result");
      totalProduct = 0;
      totalPrice = 0;
      getProducts();
      update();
    } on Exception catch (e) {
      log("exception : $e");
    }
  }

//****************************************************************************//

  addToCart(CustomerProductModel productModel) {
    if (productModel.id >= 0) {
      CartItemModel cartItemModel = CartItemModel(
          productId: productModel.id,
          name: productModel.name,
          image: productModel.image ?? '',
          quantity: 1,
          price: productModel.price.toDouble(),
          cost: productModel.price.toDouble(),
          unit: productModel.unit,
          ingredients: productModel.description);
      addProduct(cartItemModel);
    } else {
      showMessage("تم إضافة المنتج بالفعل", false);
    }
  }

  void removeFromCart(CustomerProductModel productModel) {
    int index =
        listProduct.indexWhere((item) => item.productId == productModel.id);

    if (index != -1) {
      CartItemModel itemToRemove = listProduct[index];
      removeCartItem(itemToRemove);
    } else {
      log("Product not found in list. ProductID: ${productModel.id}");
      showMessage("المنتج غير موجود في الطلب", false);
    }
  }

//****************************************************************************//

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

  @override
  void onInit() {
    super.onInit();
    // clearCart();
    // getNearestTrip();
    deliveryDate = deliveryTime = dayName = rawDeliveryDate = '';
  }

  final GetStorage storage = GetStorage();

  late String deliveryDate, deliveryTime, dayName, rawDeliveryDate;

  Future<bool> getNearestTrip() async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    int branchId = storage.read(CacheKeys.branchId) ?? 0;
    String token = storage.read(CacheKeys.token) ?? '';
    int userId = storage.read(CacheKeys.userId) ?? 0;

    if (!isDeviceConnected) {
      isError = true;
      showMessage('لا يوجد اتصال بالانترنت', false);
      isLoading = false;
      return false;
    }

    try {
      final response = await DioHelper.getData(
        url: '${ApiConstants.baseUrl}trip/near-trip',
        bearerToken: token,
        query: {
          'branch_id': branchId,
          'customer_id': userId,
        },
      );

      if (response?.statusCode == 200) {
        Map<String, dynamic> responseData = response!.data;

        if (responseData['success'] == false) {
          showMessage(responseData['message'], false);
          return false;
        }

        if (responseData.containsKey('data')) {
          var data = responseData['data'];
          print('near trip: $data');

          deliveryDate = formatDate(data['date']);
          rawDeliveryDate = data['date'];
          dayName = getArabicDayName(data['date']);
          deliveryTime = data['time'] != null ? formatTime(data['time']) : '';

          return true;
        } else {
          showMessage('2..Unexpected response structure', false);
          return false;
        }
      } else {
        isError = true;
        if (response != null) {
          // final errorModel = ErrorModel.fromJson(response.data);
          showMessage('request failed: $response', false);
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
  }

  Future<bool> addOrder() async {
    isLoading = true;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    if (isDeviceConnected) {
      String token = storage.read(CacheKeys.token) ?? "";
      int branchId = storage.read(CacheKeys.branchId) ?? 0;
      if (deliveryTime == '') {
        print('it is empty');
      }
      try {
        res.FormData formData = res.FormData();
        formData.fields.add(MapEntry('branch_id', branchId.toString()));
        if (deliveryDate.isNotEmpty) {
          formData.fields.add(MapEntry('delivery_date', rawDeliveryDate));
        }
        if (deliveryTime.isNotEmpty) {
          formData.fields.add(MapEntry('delivery_time', deliveryTime));
        }
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
        printFormDataContents(formData);
        final response = await DioHelper.postData(
          url: '${ApiConstants.baseUrl}order/store',
          data: formData,
          bearerToken: token,
        );
        if (response?.statusCode == 200) {
          print(response);
          clearCart();
          isLoading = false;
          return true;
        } else if (response?.statusCode == 400) {
          isLoading = false;
          showMessage('فشل إضافة طلب: ${response?.data['message']}', false);
          return false;
        } else {
          isLoading = false;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            print(errorModel.message);
            showMessage('فشل إضافة طلب: ${errorModel.data}', false);
          }
          return false;
        }
      } on res.DioException catch (dioError) {
        isLoading = false;
        final dioException = DioExceptions.fromDioError(dioError);
        showMessage('خطأ: ${dioException.message}', false);
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
}
