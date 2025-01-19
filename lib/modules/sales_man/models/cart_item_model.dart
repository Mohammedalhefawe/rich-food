import 'package:rich_food/modules/sales_man/models/products_model.dart';

import '../../customer/models/customer_products_model.dart';

const String tableCartProduct = 'cart_product';

class CartItemModel {
  static const ID = "id";
  static const PRODUCT_ID = "productId";
  static const IMAGE = "image";
  static const NAME = "name";
  static const QUANTITY = "quantity";
  static const PRICE = "price";
  static const COST = "cost";
  static const UNIT = "unit";
  static const INGREDIENTS = "ingredients";

  static final List<String> values = [
    /// Add all fields
    ID, IMAGE, NAME, QUANTITY, COST, PRICE, PRODUCT_ID, UNIT, INGREDIENTS
  ];

  int? id;

  String image;
  String name;
  int quantity;
  double cost;
  int productId;
  double price;
  String unit;
  String ingredients;

  CartItemModel({
    this.id,
    required this.productId,
    required this.name,
    required this.image,
    required this.quantity,
    required this.price,
    required this.cost,
    required this.unit,
    required this.ingredients,
  });

  CartItemModel copy({
    int? id,
    int? productId,
    String? name,
    String? image,
    int? quantity,
    double? price,
    double? cost,
    String? unit,
    String? ingredients,
  }) =>
      CartItemModel(
        id: id ?? this.id,
        productId: productId ?? this.productId,
        name: name ?? this.name,
        image: image ?? this.image,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price,
        cost: cost ?? this.cost,
        unit: unit ?? this.unit,
        ingredients: ingredients ?? this.ingredients,
      );

  static CartItemModel fromJson(Map<String, Object?> json) => CartItemModel(
        id: json[ID] as int?,
        productId: json[PRODUCT_ID] as int,
        name: json[NAME] as String,
        image: json[IMAGE] as String,
        quantity: json[QUANTITY] as int,
        price: json[PRICE] as double,
        cost: json[COST] as double,
        unit: json[UNIT] as String,
        ingredients: json[INGREDIENTS] as String,
      );

  Map<String, Object?> toJson() => {
        ID: id,
        PRODUCT_ID: productId,
        NAME: name,
        IMAGE: image,
        QUANTITY: quantity,
        PRICE: price,
        COST: cost,
        UNIT: unit,
        INGREDIENTS: ingredients,
      };

  factory CartItemModel.fromProductModel(ProductModel product) {
    return CartItemModel(
      id: null,
      productId: product.id,
      name: product.name,
      image: product.image ?? '',
      quantity: product.quantity ?? 1,
      price: product.shopPrice.toDouble(),
      cost: product.shopPrice.toDouble() * (product.quantity ?? 1),
      unit: product.unit,
      ingredients: product.description,
    );
  }

  factory CartItemModel.fromCustomerProductModel(CustomerProductModel product) {
    return CartItemModel(
      id: product.id,
      productId: product.id,
      name: product.name,
      image: product.image ?? '',
      quantity: product.quantity ?? 1,
      price: product.price.toDouble(),
      cost: product.price.toDouble() * (product.quantity ?? 1),
      unit: product.unit,
      ingredients: product.description,
    );
  }
}
