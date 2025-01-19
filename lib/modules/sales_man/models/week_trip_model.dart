class WeeklySchedule {
  final Map<String, DaySchedule> days;

  WeeklySchedule({required this.days});

  List<DaySchedule> get daysList =>
      days.values.where((day) => day.addresses.isNotEmpty).toList();

  factory WeeklySchedule.fromJson(Map<String, dynamic> json) {
    Map<String, DaySchedule> scheduleData = {};
    json.forEach((key, value) {
      DaySchedule daySchedule = DaySchedule.fromJson({...value, 'day': key});
      if (daySchedule.addresses.isNotEmpty) {
        scheduleData[key] = daySchedule;
      }
    });

    return WeeklySchedule(days: scheduleData);
  }
}

class DaySchedule {
  final String day;
  final String dayAr;
  final String addresses;

  DaySchedule({
    required this.day,
    required this.dayAr,
    required this.addresses,
  });

  factory DaySchedule.fromJson(Map<String, dynamic> json) {
    List<dynamic> addressList = json['addresses'] as List<dynamic>;
    String addresses = addressList.isEmpty ? '' : addressList.join(' - ');

    return DaySchedule(
      day: json['day'],
      dayAr: json['day_ar'],
      addresses: addresses,
    );
  }
}
