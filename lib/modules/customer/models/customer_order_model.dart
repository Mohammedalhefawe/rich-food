import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/sales_man/models/customer_model.dart';

import 'package:rich_food/modules/sales_man/models/trip_dates_model.dart';

import '../../../utils/helpers/api/api_constants.dart';
import '../../../utils/helpers/cacheKeys.dart';
import 'customer_products_model.dart';

class CustomerOrderModel {
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
  final List<CustomerProductModel> products;
  final CustomerOrderCustomerModel? customer;

  CustomerOrderModel({
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
    this.customer,
  });

  factory CustomerOrderModel.fromJson(Map<String, dynamic> json) {
    final GetStorage storage = GetStorage();
    final bool isCenter = (storage.read(CacheKeys.customerType) == 'center');
    return CustomerOrderModel(
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
          .map((productJson) =>
              CustomerProductModel.fromJson(productJson, isCenter))
          .toList(),
      customer: json['customer'] != null
          ? CustomerOrderCustomerModel.fromJson(json['customer'])
          : null,
    );
  }
}

class CustomerOrderCustomerModel {
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

  CustomerOrderCustomerModel({
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

  factory CustomerOrderCustomerModel.fromJson(Map<String, dynamic> json) {
    AddressModel? address =
        json['address'] != null ? AddressModel.fromJson(json['address']) : null;
    String? imgUrl;
    if (json['image'] != null) {
      imgUrl = '${ApiConstants.serverUrl}${json['image']}';
    }
    return CustomerOrderCustomerModel(
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
