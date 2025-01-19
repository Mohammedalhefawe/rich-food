List<int> convertDaysToNumbers(List<String> dayNames) {
  final Map<String, int> dayMap = {
    'السبت': 1,
    'الأحد': 2,
    'الإثنين': 3,
    'الثلاثاء': 4,
    'الأربعاء': 5,
    'الخميس': 6,
    'الجمعة': 7
  };

  return dayNames.map((day) => dayMap[day] ?? -1).toList();
}
