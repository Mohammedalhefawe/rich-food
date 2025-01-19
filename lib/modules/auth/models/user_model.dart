import '../../../utils/helpers/api/api_constants.dart';

class UserModel {
  final int id;
  final String name;
  final String userName;
  final int branchId;
  final int addressId;
  final String? location;
  final String role;
  final String roleAr;
  final String? customerType; // [shop, center]
  final String? image;
  final Permissions permissions;
  final List<Contact> contacts;
  final AddressModel? address;

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? 0,
        name = json['name'] ?? 'غير معرف',
        userName = json['user_name'] ?? 'غير معرف',
        branchId = json['branch_id'] ?? 0,
        addressId = json['address_id'] ?? 0,
        location = json['location'],
        role = json['role'] == 'salesman'
            ? 'salesman'
            : json['role'] == 'customer'
                ? 'customer'
                : 'other',
        roleAr = json['role'] == 'salesman'
            ? 'مندوب'
            : json['role'] == 'customer'
                ? 'زبون'
                : 'غير معرف',
        customerType = json['customer_type'],
        image = json['image'],
        permissions = Permissions.fromJson(json['permissions'] ?? {}),
        contacts = json['contacts'] != []
            ? (json['contacts'] as List)
                .map((e) => Contact.fromJson(e))
                .toList()
            : [],
        address = json['address'] != null
            ? AddressModel.fromJson(json['address'])
            : null;
}

class Permissions {
  final bool add;
  final bool edit;
  final bool delete;

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
  final UserCityModel city;

  AddressModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        cityId = json['city_id'],
        area = json['area'],
        city = UserCityModel.fromJson(json['city']);
}

class UserCityModel {
  final int id;
  final String name;
  final int countryId;

  final CountryModel country;

  UserCityModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        countryId = json['country_id'],
        country = CountryModel.fromJson(json['country']);
}

class CountryModel {
  final int id;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;

  CountryModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        createdAt = DateTime.parse(json['created_at']),
        updatedAt = DateTime.parse(json['updated_at']);
}

class ImageModel {
  final int id;
  final String image;
  final String type;

  ImageModel({required this.id, required this.image, required this.type});

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json['id'],
      type: json['type'] ?? "",
      image: "${ApiConstants.imageUrl}${json['image']}",
    );
  }
}

class Contact {
  final int id;
  final int userId;
  final String phoneNumber;

  Contact({
    required this.id,
    required this.userId,
    required this.phoneNumber,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'],
      userId: json['user_id'],
      phoneNumber: json['phone_number'],
    );
  }
}
