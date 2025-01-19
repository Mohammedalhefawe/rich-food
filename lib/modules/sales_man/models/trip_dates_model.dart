class TripDatesModel {
  int? id;
  int? customerId;
  int? tripDateId;
  int? orderId;
  String? status;
  int? branchId;
  String? orderDate;
  String? deliveryDate;
  int? isBase;
  String? deliveryTime;
  int? totalPrice;
  TripDatesCustomerModel? customer;

  TripDatesModel({
    required this.id,
    required this.customerId,
    required this.tripDateId,
    required this.orderId,
    required this.status,
    required this.branchId,
    required this.orderDate,
    required this.deliveryDate,
    required this.isBase,
    required this.deliveryTime,
    required this.totalPrice,
    required this.customer,
  });

  factory TripDatesModel.fromJson(Map<String, dynamic> json) {
    return TripDatesModel(
      id: json['id'] ?? 0,
      customerId: json["customer_id"] ?? 0,
      tripDateId: json["trip_date_id"] ?? 0,
      orderId: json["order_id"] ?? 0,
      status: json["status"] ?? "",
      branchId: json["branch_id"] ?? 0,
      orderDate: json["order_date"] ?? "",
      deliveryDate: json["delivery_date"] ?? "",
      isBase: json["is_base"] ?? 0,
      deliveryTime: json["delivery_time"] ?? "",
      totalPrice: json["total_price"] ?? 0,
      customer: json["customer"] != null
          ? TripDatesCustomerModel.fromJson(json["customer"])
          : null,
    );
  }
}

class TripDatesCustomerModel {
  int id;
  String name;
  String userName;
  int? branchId; // Nullable
  int addressId;
  int? cityId; // Nullable
  String location;
  String role;
  String customerType;
  String image;
  String? deletedAt; // Nullable
  String createdAt;
  String updatedAt;
  Permissions permissions;
  String customerTypeAr;
  AddressModel? address;

  TripDatesCustomerModel(
      {required this.id,
      required this.name,
      required this.userName,
      this.branchId,
      required this.addressId,
      this.cityId,
      required this.location,
      required this.role,
      required this.customerType,
      required this.image,
      this.deletedAt,
      required this.createdAt,
      required this.updatedAt,
      required this.permissions,
      required this.customerTypeAr,
      required this.address});

  factory TripDatesCustomerModel.fromJson(Map<String, dynamic> json) {
    return TripDatesCustomerModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      userName: json['user_name'] ?? '',
      branchId: json['branch_id'],
      addressId: json['address_id'] ?? 0,
      cityId: json['city_id'],
      location: json['location'] ?? '',
      role: json['role'] ?? '',
      customerType: json['customer_type'] ?? '',
      image: json['image'] ?? '',
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
      permissions: Permissions.fromJson(json['permissions'] ?? {}),
      address: json["address"] != null
          ? AddressModel.fromJson(json["address"])
          : null,
      customerTypeAr: json['customer_type_ar'] ?? '',
    );
  }
}

class Permissions {
  bool add;
  bool edit;
  bool delete;

  Permissions({
    required this.add,
    required this.edit,
    required this.delete,
  });

  factory Permissions.fromJson(Map<String, dynamic> json) {
    return Permissions(
      add: json['add'] ?? false,
      edit: json['edit'] ?? false,
      delete: json['delete'] ?? false,
    );
  }
}

class AddressModel {
  final int id;
  final int cityId;
  final String area;

  AddressModel({required this.id, required this.cityId, required this.area});
  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      id: json['id'] ?? 0,
      cityId: json['city_id'] ?? 0,
      area: json['area'] ?? "",
    );
  }
}
