class CustomerModelForCustomer {
  int id;
  String name;
  String userName;
  String? location;
  String customerType;
  String customerTypeAr;
  List<Contact>? contacts;
  Address? address;
  UserPassword userPassword;
  int? addressId;

  CustomerModelForCustomer({
    required this.id,
    required this.name,
    required this.userName,
    this.location,
    required this.customerType,
    required this.customerTypeAr,
    this.contacts,
    this.address,
    this.addressId,
    required this.userPassword,
  });

  factory CustomerModelForCustomer.fromJson(Map<String, dynamic> json) {
    return CustomerModelForCustomer(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      userName: json["user_name"] ?? "",
      location: json["location"] ?? "",
      customerType: json["customer_type"] ?? "",
      customerTypeAr: json["customer_type_ar"] ?? "",
      addressId: json["address_id"] ?? 0,
      contacts: json["contacts"] != null
          ? List<Contact>.from(json["contacts"].map((x) => Contact.fromJson(x)))
          : [],
      address:
          json["address"] != null ? Address.fromJson(json["address"]) : null,
      userPassword: UserPassword.fromJson(json["user_password"]),
    );
  }
}

class Address {
  int? id;
  // int? cityId;
  String area;
  // City? city;

  Address({
    this.id,
    // this.cityId,
    required this.area,
    // this.city,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      id: json["id"] ?? 0,
      // cityId: json["city_id"] ?? 0,
      area: json["area"] ?? "",
      // city: json["city"] != null ? City.fromJson(json["city"]) : null,
    );
  }
}

class City {
  int id;
  String name;
  int countryId;
  // Country country;

  City({
    required this.id,
    required this.name,
    required this.countryId,
    // required this.country,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      countryId: json["country_id"] ?? 0,
      // country: Country.fromJson(json["country"]),
    );
  }
}

class Country {
  int id;
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  Country({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      createdAt: DateTime.parse(json["created_at"]),
      updatedAt: DateTime.parse(json["updated_at"]),
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

  factory UserPassword.fromJson(Map<String, dynamic> json) {
    return UserPassword(
      userId: json["user_id"] ?? 0,
      password: json["password"] ?? "",
    );
  }
}
