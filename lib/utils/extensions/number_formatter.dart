import 'package:intl/intl.dart';

extension NumberFormatting on num {
  String formatWithCommas({String? locale}) {
    final formatter = NumberFormat.decimalPattern(locale ?? 'ar');
    return formatter.format(this);
  }
}

extension StringNumberFormatting on String {
  String? formatStringWithCommas({String? locale}) {
    // Remove any existing commas and try parsing the string to a number.
    num? number = num.tryParse(replaceAll(',', ''));
    if (number == null) return null; // Return null if parsing fails.

    return number.formatWithCommas(locale: locale);
  }
}
