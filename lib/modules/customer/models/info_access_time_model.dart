class InfoAccessTimeModel {
  final bool success;
  final String message;
  final DataModel? data;

  InfoAccessTimeModel({
    required this.success,
    required this.message,
    this.data,
  });

  // Factory  ructor to create a ResponseModel from JSON
  factory InfoAccessTimeModel.fromJson(Map<String, dynamic> json) {
    return InfoAccessTimeModel(
      success: json['success'],
      message: json['message'],
      data: json['data'] != null ? DataModel.fromJson(json['data']) : null,
    );
  }
}

class DataModel {
  final String date;
  final String? time;

  DataModel({
    required this.date,
    required this.time,
  });

  // Factory  ructor to create a Data from JSON
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      date: json['date'],
      time: json['time'],
    );
  }

  // Method to convert a Data to JSON
  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'time': time,
    };
  }
}
