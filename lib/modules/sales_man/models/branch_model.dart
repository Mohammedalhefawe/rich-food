class Branch {
  int id;
  String name;
  Salesman? salesman;
  CityModel city;

  Branch({
    required this.id,
    required this.name,
    this.salesman,
    required this.city,
  });

  factory Branch.fromJson(Map<String, dynamic> json) {
    return Branch(
      id: json['id'],
      name: json['name'],
      salesman:
          json['salesman'] != null ? Salesman.fromJson(json['salesman']) : null,
      city: CityModel.fromJson(json['city']),
    );
  }
}

class Salesman {
  int id;
  String name;
  List<Contact> contacts;

  Salesman({
    required this.id,
    required this.name,
    required this.contacts,
  });

  factory Salesman.fromJson(Map<String, dynamic> json) {
    return Salesman(
      id: json['id'],
      name: json['name'],
      contacts:
          List<Contact>.from(json['contacts'].map((x) => Contact.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'contacts': List<dynamic>.from(contacts.map((x) => x.toJson())),
    };
  }
}

class Contact {
  int id;
  int userId;
  String phoneNumber;

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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'phone_number': phoneNumber,
    };
  }
}

class CityModel {
  int id;
  String name;

  CityModel({
    required this.id,
    required this.name,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
