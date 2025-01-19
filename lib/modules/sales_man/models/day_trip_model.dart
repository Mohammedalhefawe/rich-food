class DayTripModel {
  final int id;
  final int tripId;
  final int addressId;
  final String startDate;
  final String startTime;
  final int delay;
  final String createdAt;
  final String updatedAt;
  final int orderCount;
  final Trip trip;
  final Address address;
  final String status;

  DayTripModel({
    required this.id,
    required this.tripId,
    required this.addressId,
    required this.startDate,
    required this.startTime,
    required this.delay,
    required this.createdAt,
    required this.updatedAt,
    required this.orderCount,
    required this.trip,
    required this.address,
    required this.status,
  });

  factory DayTripModel.fromJson(Map<String, dynamic> json) {
    return DayTripModel(
      id: json['id'],
      tripId: json['trip_id'],
      addressId: json['address_id'],
      startDate: json['start_date'],
      startTime: json['start_time'],
      delay: json['delay'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      orderCount: json['order_count'],
      trip: Trip.fromJson(json['trip']),
      address: Address.fromJson(json['address']),
      status: (json['status'] != null) ? json['status'] : 'non',
    );
  }
}

class Trip {
  final int id;
  final int salesmanId;
  final int addressId;
  final int branchId;
  final String day;
  final String startTime;
  final String endTime;
  final String createdAt;
  final String updatedAt;
  final String dayAr;

  Trip({
    required this.id,
    required this.salesmanId,
    required this.addressId,
    required this.branchId,
    required this.day,
    required this.startTime,
    required this.endTime,
    required this.createdAt,
    required this.updatedAt,
    required this.dayAr,
  });

  factory Trip.fromJson(Map<String, dynamic> json) {
    return Trip(
      id: json['id'],
      salesmanId: json['salesman_id'],
      addressId: json['address_id'],
      branchId: json['branch_id'],
      day: json['day'],
      startTime: json['start_time'],
      endTime: json['end_time'] ?? '',
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      dayAr: json['day_ar'],
    );
  }
}

class Address {
  final int id;
  final int cityId;
  final String area;

  Address({
    required this.id,
    required this.cityId,
    required this.area,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      id: json['id'],
      cityId: json['city_id'],
      area: json['area'],
    );
  }
}
