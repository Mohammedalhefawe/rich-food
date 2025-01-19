import 'package:get_storage/get_storage.dart';
import 'package:rich_food/utils/helpers/cacheKeys.dart';
import '../../../utils/helpers/api/api_constants.dart';

class CustomerProductsModel {
  final ProductData data;
  CustomerProductsModel({
    required this.data,
  });

  factory CustomerProductsModel.fromJson(Map<String, dynamic> json) {
    return CustomerProductsModel(
      data: ProductData.fromJson(json['data']),
    );
  }
}

class ProductData {
  final int currentPage;
  final List<CustomerProductModel> products;
  final int lastPage;

  ProductData({
    required this.currentPage,
    required this.products,
    required this.lastPage,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) {
    var productsJson = json['data'] as List;
    final GetStorage storage = GetStorage();
    final bool isCenter = (storage.read(CacheKeys.customerType) == 'center');
    List<CustomerProductModel> productsList = productsJson
        .map((i) => CustomerProductModel.fromJson(i, isCenter))
        .toList();
    return ProductData(
      currentPage: json['current_page'],
      products: productsList,
      lastPage: json['last_page'],
    );
  }
}

class CustomerProductModel {
  final int id;
  final String name;
  final int branchId;
  final String description;
  // final int? amount;
  final int? quantity;
  final String unit;
  final int price;
  final String? image;
  final String? status;

  CustomerProductModel({
    required this.id,
    required this.name,
    required this.branchId,
    required this.description,
    // this.amount,
    this.quantity,
    required this.unit,
    required this.price,
    required this.image,
    this.status,
  });

  factory CustomerProductModel.fromJson(
      Map<String, dynamic> json, bool isCenter) {
    String? imgUrl;
    if (json['image'] != null) {
      imgUrl = '${ApiConstants.serverUrl}${json['image']}';
    }

    int correctPrice = (isCenter)
        ? int.tryParse(json['wholesale_price'].toString()) ?? 0
        : int.tryParse(json['retail_price'].toString()) ?? 0;
    return CustomerProductModel(
      id: json['id'] as int,
      name: json['name'] as String,
      branchId: json['branch_id'] as int,
      description: json['description'] ?? '',
      // amount: json['amount'] != null ? double.tryParse(json['amount'].toString())?.toInt() : null,
      quantity: json['pivot'] != null
          ? double.tryParse(json['pivot']['quantity'].toString())?.toInt()
          : null,
      unit: (json['amount_unit'] == 'kg') ? 'كيلو' : 'قطعة',
      price: correctPrice,
      image: imgUrl,
      status: json['status'] as String?,
    );
  }
}
