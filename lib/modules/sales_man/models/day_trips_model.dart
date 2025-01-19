import 'day_trip_model.dart';

class DayTripsModel {
  final DayTripsData data;
  DayTripsModel({
    required this.data,
  });

  factory DayTripsModel.fromJson(Map<String, dynamic> json) {
    return DayTripsModel(
      data: DayTripsData.fromJson(json['data']),
    );
  }
}

class DayTripsData {
  final int currentPage;
  final List<DayTripModel> dayTrips;
  final int lastPage;

  DayTripsData({
    required this.currentPage,
    required this.dayTrips,
    required this.lastPage,
  });

  factory DayTripsData.fromJson(Map<String, dynamic> json) {
    var dayTripsJson = json['data'] as List;
    List<DayTripModel> dayTripsList =
        dayTripsJson.map((i) => DayTripModel.fromJson(i)).toList();
    return DayTripsData(
      currentPage: json['current_page'],
      dayTrips: dayTripsList,
      lastPage: json['last_page'],
    );
  }
}
