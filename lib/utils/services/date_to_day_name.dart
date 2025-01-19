import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

String getArabicDayName(String dateString) {
  if (dateString.isEmpty) {
    return '';
  }
  // Initialize the Arabic locale
  initializeDateFormatting('ar', null);

  // Parse the date string
  DateTime date = DateTime.parse(dateString);

  // Create a DateFormat for the Arabic day name
  DateFormat formatter = DateFormat('EEEE', 'ar');

  // Format the date to get the Arabic day name
  String arabicDayName = formatter.format(date);

  return arabicDayName;
}
