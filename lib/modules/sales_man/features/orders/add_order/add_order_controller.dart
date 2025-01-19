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
import '../../../models/cart_item_model.dart';
import '../../../models/customer_model.dart';
import '../../../models/error_model.dart';
import 'package:dio/dio.dart' as res;
import '../../../models/products_model.dart';

class AddOrderController extends GetxController {
  List<CartItemModel> _listProduct = [];
  List<CartItemModel> get listProduct => _listProduct;
  set listProduct(List<CartItemModel> value) {
    _listProduct = value;
    update();
  }

  List<int> _listProductId = [];
  List<int> get listProductId => _listProductId;
  set listProductId(List<int> value) {
    _listProductId = value;
    update();
  }

  /*
    amount of a product
  */
  // bool isWritByKeyboard = false;

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

  // int _totalQty = 0;
  // int get totalQty {
  //   for( int i = 0; i < listProduct.length; i++ ){
  //     _totalQty = listProduct[i].quantity;
  //   }
  //   return _totalQty;
  // }
  // set totalQty(int value) {
  //   _totalQty = value;
  //   update();
  // }

  CustomerModel _selectedCustomer = CustomerModel(
      id: 0,
      name: '',
      userName: '',
      customerType: '',
      customerTypeAr: '',
      address: Address(id: 0, area: ''),
      userPassword: UserPassword(userId: 0, password: ''));
  CustomerModel get selectedCustomer {
    return _selectedCustomer;
  }

  set selectedCustomer(CustomerModel value) {
    if (value.customerType != _selectedCustomer.customerType) {
      clearCart();
    }
    _selectedCustomer = value;
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

  late CartItemModel currentCartItemModel;
  bool isWritByKeyboard = false;
  void setQuantity(CartItemModel item, int value) {
    int index = listProduct.indexWhere((cartItem) => cartItem.id == item.id);
    if (index != -1) {
      listProduct[index].quantity = value;
      listProduct[index].cost =
          listProduct[index].price * listProduct[index].quantity;
      getCostOfCart();
      updateCartItem(listProduct[index]);
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

  // void initializeWithOrder(OrderModel order) {
  //   selectedCustomer = CustomerModel.fromOrderCustomer(order.customer);
  //   listProduct = order.products.map((p) => CartItemModel.fromProductModel(p)).toList();
  //   listProductId = listProduct.map((item) => item.productId).toList();
  //   totalProduct = listProduct.length;
  //   rawDeliveryDate = order.deliveryDate;
  //   getCostOfCart();
  //   update();
  // }

//****************************************************************************//

  addToCart(ProductModel productModel) {
    int price = selectedCustomer.customerType == 'center'
        ? productModel.centerPrice
        : productModel.shopPrice;
    if (productModel.id >= 0) {
      CartItemModel cartItemModel = CartItemModel(
          productId: productModel.id,
          name: productModel.name,
          image: productModel.image ?? '',
          quantity: 1,
          price: price.toDouble(),
          cost: productModel.shopPrice.toDouble(),
          unit: productModel.unit,
          ingredients: productModel.description);
      addProduct(cartItemModel);
    } else {
      showMessage("تم إضافة المنتج بالفعل", false);
    }
  }

  void removeFromCart(ProductModel productModel) {
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
    clearCart();
  }

  final GetStorage storage = GetStorage();

  late String deliveryDate,
      deliveryTime,
      dayName,
      rawDeliveryDate,
      rawDeliveryTime;

  Future<bool> getNearestTrip() async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    int branchId = storage.read(CacheKeys.branchId) ?? 0;
    String token = storage.read(CacheKeys.token);
    print('nearest trip: $token $branchId ${selectedCustomer.id}');
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
          url: '${ApiConstants.baseUrl}trip/near-trip',
          bearerToken: token,
          query: {
            'branch_id': branchId,
            'customer_id': selectedCustomer.id,
          },
        );
        if (response?.statusCode == 200) {
          // Handle successful
          Map<String, dynamic> responseData = response!.data;
          if (responseData['success'] == false) {
            showMessage(responseData['message'], false);
            return false;
          } else if (responseData.containsKey('data')) {
            var data = responseData['data'];
            print('near trip: $data');
            deliveryDate = formatDate(data['date']);
            rawDeliveryDate = data['date'];
            dayName = getArabicDayName(data['date']);
            if (data['time'] != null) {
              deliveryTime = formatTime(data['time']);
              rawDeliveryTime = data['time'];
            } else {
              deliveryTime = '';
            }
            return true;
          } else {
            showMessage('Unexpected response structure', false);
            print(responseData);
            return false;
          }
        } else {
          // Handle failure
          isError = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('request failed: ${errorModel.message}', false);
          }
          return false;
        }
      } catch (e) {
        // Handle error
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

  Future<bool> addOrder() async {
    isLoading = true;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    if (isDeviceConnected) {
      String token = storage.read(CacheKeys.token) ?? "";
      int branchId = storage.read(CacheKeys.branchId) ?? 0;

      try {
        res.FormData formData = res.FormData();

        // Ensure all required fields are present and not null
        if (branchId == 0) throw Exception("Branch ID is required");
        if (rawDeliveryDate.isEmpty) {
          throw Exception("Delivery date is required");
        }

        formData.fields.add(MapEntry('branch_id', branchId.toString()));
        formData.fields
            .add(MapEntry('customer_id', selectedCustomer.id.toString()));
        formData.fields.add(MapEntry('delivery_date', rawDeliveryDate));

        // Only add delivery_time if it's not empty
        if (deliveryTime.isNotEmpty) {
          formData.fields.add(MapEntry('delivery_time', deliveryTime));
        }

        // Ensure listProduct is not empty
        if (listProduct.isEmpty) {
          throw Exception("At least one product is required");
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
          url: '${ApiConstants.baseUrl}order/assign',
          data: formData,
          bearerToken: token,
        );
        print(response);

        if (response?.statusCode == 200) {
          clearCart();
          isLoading = false;
          return true;
        } else if (response?.statusCode == 400) {
          isLoading = false;
          showMessage('فشل إضافة طلب: ${response?.data["message"]}', false);
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
