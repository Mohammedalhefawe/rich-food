import 'package:rich_food/modules/sales_man/models/customer_model.dart';
import 'package:rich_food/modules/sales_man/models/products_model.dart';
import 'package:rich_food/modules/sales_man/models/trip_dates_model.dart';
import '../../../utils/helpers/api/api_constants.dart';

class OrderModel {
  final int id;
  final int customerId;
  final int tripDateId;
  final int? orderId;
  String status;
  final int branchId;
  final String orderDate;
  final String deliveryDate;
  final int isBase;
  final String deliveryTime;
  final int totalPrice;
  final String createdAt;
  final String updatedAt;
  final bool canUndo;
  final bool isLate;
  final List<ProductModel> products;
  final OrderCustomerModel customer;

  OrderModel({
    required this.id,
    required this.customerId,
    required this.tripDateId,
    this.orderId,
    required this.status,
    required this.branchId,
    required this.orderDate,
    required this.deliveryDate,
    required this.isBase,
    required this.deliveryTime,
    required this.totalPrice,
    required this.createdAt,
    required this.updatedAt,
    required this.canUndo,
    required this.isLate,
    required this.products,
    required this.customer,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: json['id'],
      customerId: json['customer_id'],
      tripDateId: json['trip_date_id'],
      orderId: json['order_id'],
      status: json['status'],
      branchId: json['branch_id'],
      orderDate: json['order_date'],
      deliveryDate: json['delivery_date'] ?? '',
      isBase: json['is_base'],
      deliveryTime: json['delivery_time'] ?? '',
      totalPrice: json['total_price'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      canUndo: json['can_undo'] ?? false,
      isLate: json['is_late'] ?? false,
      products: (json['products'] as List<dynamic>)
          .map((productJson) => ProductModel.fromJson(productJson))
          .toList(),
      customer: OrderCustomerModel.fromJson(json['customer']),
    );
  }
}

class OrderCustomerModel {
  final int id;
  final String name;
  final String userName;
  final int? branchId;
  final int? addressId;
  final int? cityId;
  final String location;
  final String role;
  final String? customerType;
  final String? image;
  final dynamic addedBy;
  final dynamic deletedAt;
  final String createdAt;
  final String updatedAt;
  final String? customerTypeAr;
  List<Contact>? contacts;
  final AddressModel? address;

  OrderCustomerModel({
    required this.id,
    required this.name,
    required this.userName,
    this.branchId,
    this.addressId,
    this.cityId,
    required this.location,
    required this.role,
    this.customerType,
    required this.image,
    this.addedBy,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    this.customerTypeAr,
    this.contacts,
    this.address,
  });

  factory OrderCustomerModel.fromJson(Map<String, dynamic> json) {
    AddressModel? address =
        json['address'] != null ? AddressModel.fromJson(json['address']) : null;
    String? imgUrl;
    if (json['image'] != null) {
      imgUrl = '${ApiConstants.serverUrl}${json['image']}';
    }
    return OrderCustomerModel(
      id: json['id'],
      name: json['name'],
      userName: json['user_name'],
      branchId: json['branch_id'],
      addressId: json['address_id'],
      cityId: json['city_id'],
      location: json['location'],
      role: json['role'],
      customerType: json['customer_type'],
      image: imgUrl,
      addedBy: json['added_by'],
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      customerTypeAr: json['customer_type_ar'],
      address: address,
      contacts: json["contacts"] != null
          ? List<Contact>.from(json["contacts"].map((x) => Contact.fromJson(x)))
          : [],
    );
  }
}
