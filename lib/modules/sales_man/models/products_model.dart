import '../../../utils/helpers/api/api_constants.dart';

class ProductsModel {
  final ProductData data;
  ProductsModel({
    required this.data,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      data: ProductData.fromJson(json['data']),
    );
  }
}

class ProductData {
  final int currentPage;
  final List<ProductModel> products;
  final int lastPage;

  ProductData({
    required this.currentPage,
    required this.products,
    required this.lastPage,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) {
    var productsJson = json['data'] as List;
    List<ProductModel> productsList =
        productsJson.map((i) => ProductModel.fromJson(i)).toList();
    return ProductData(
      currentPage: json['current_page'],
      products: productsList,
      lastPage: json['last_page'],
    );
  }
}

class ProductModel {
  final int id;
  final String name;
  final int branchId;
  final String description;
  // final int? amount;
  final int? quantity;
  final String unit;
  final int centerPrice;
  final int shopPrice;
  final String? image;
  final String? status;

  ProductModel({
    required this.id,
    required this.name,
    required this.branchId,
    required this.description,
    // this.amount,
    this.quantity,
    required this.unit,
    required this.centerPrice,
    required this.shopPrice,
    required this.image,
    this.status,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    String? imgUrl;
    if (json['image'] != null) {
      imgUrl = '${ApiConstants.serverUrl}${json['image']}';
    }
    return ProductModel(
      id: json['id'] as int,
      name: json['name'] ?? "",
      branchId: json['branch_id'] as int,
      description: json['description'] ?? "",
      // amount: json['amount'] != null
      //     ? double.tryParse(json['amount'].toString())?.toInt()
      //     : null,
      quantity: json['pivot'] != null
          ? double.tryParse(json['pivot']['quantity'].toString())?.toInt()
          : null,

      unit: json['amount_unit'] == null
          ? ''
          : (json['amount_unit'] == 'kg')
              ? 'كيلو'
              : 'قطعة',
      centerPrice: json['wholesale_price'] != null
          ? int.tryParse(json['wholesale_price'].toString()) ?? 0
          : 0,
      shopPrice: json['retail_price'] != null
          ? int.tryParse(json['retail_price'].toString()) ?? 0
          : 0,
      image: imgUrl,
      status: json['status'] ?? "",
    );
  }
}
