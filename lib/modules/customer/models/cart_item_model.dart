/*
  String tableCartProduct = 'cart_product';

class CustomerCartItemModel {
  static   ID = "id";
  static   PRODUCT_ID = "productId";
  static   IMAGE = "image";
  static   NAME = "name";
  static   QUANTITY = "quantity";
  static   PRICE = "price";
  static   COST = "cost";
  static   UNIT = "unit";
  static   INGREDIENTS = "ingredients";

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

  CustomerCartItemModel({
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

  CustomerCartItemModel copy({
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
      CustomerCartItemModel(
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

  static CustomerCartItemModel fromJson(Map<String, Object?> json) => CustomerCartItemModel(
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
  factory CustomerCartItemModel.fromCustomerProductModel(CustomerProductModel product) {
    return CustomerCartItemModel(
      id: product.id,
      productId: product.id,
      name: product.name,
      image: product.image ?? '',
      quantity: product.amount ?? 1,
      price: product.price.toDouble(),
      cost: product.price.toDouble() * (product.amount ?? 1),
      unit: product.amountUnit,
      ingredients: product.description,
    );
  }
}
*/
