import 'order_model.dart';

class CustomerModel {
  int id;
  String name;
  String userName;
  String? location;
  String customerType;
  String customerTypeAr;
  List<Contact>? contacts;
  Address address;
  UserPassword userPassword;
  int? addressId;
  int? addedBy;

  CustomerModel({
    required this.id,
    required this.name,
    required this.userName,
    this.location,
    required this.customerType,
    required this.customerTypeAr,
    this.contacts,
    required this.address,
    this.addressId,
    required this.userPassword,
    this.addedBy,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      id: json["id"],
      name: json["name"] ?? "",
      userName: json["user_name"] ?? "",
      location: json["location"] ?? "",
      customerType: json["customer_type"] ?? "",
      customerTypeAr: json["customer_type_ar"] ?? "",
      addressId: json["address_id"] ?? "",
      contacts: json["contacts"] != null
          ? List<Contact>.from(json["contacts"].map((x) => Contact.fromJson(x)))
          : [],
      address: Address.fromJson(json["address"]),
      // json["address"] != null ? Address.fromJson(json["address"]) : null,
      userPassword: UserPassword.fromJson(json["user_password"]),
      addedBy: json["added_by"] ?? 0,
    );
  }

  factory CustomerModel.fromOrderCustomer(OrderCustomerModel orderCustomer) {
    return CustomerModel(
      id: orderCustomer.id,
      name: orderCustomer.name,
      userName: orderCustomer.userName,
      customerType: orderCustomer.customerType ?? '',
      customerTypeAr: orderCustomer.customerTypeAr ?? '',
      address: Address(
        id: orderCustomer.addressId ?? 0,
        area: orderCustomer.address?.area ?? '',
      ),
      userPassword: UserPassword(userId: orderCustomer.id, password: ''),
    );
  }
}

class Address {
  int? id;
  // int? cityId;
  String area;

  Address({
    this.id,
    // this.cityId,
    required this.area,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      id: json["id"] ?? 0,
      // cityId: json["city_id"] ?? 0,
      area: json["area"] ?? "",
    );
  }
}

class Contact {
  int? id;
  int? userId;
  String? phoneNumber;

  Contact({
    this.id,
    this.userId,
    this.phoneNumber,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json["id"] ?? 0,
      userId: json["user_id"] ?? 0,
      phoneNumber: json["phone_number"] ?? "",
    );
  }
}

class UserPassword {
  int userId;
  String password;

  UserPassword({
    required this.userId,
    required this.password,
  });

  factory UserPassword.fromJson(Map<String, dynamic> json) => UserPassword(
        userId: json["user_id"],
        password: json["password"],
      );
}
