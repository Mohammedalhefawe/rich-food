import '../../modules/sales_man/models/customer_model.dart';

String formatPhoneNumbers(List<Contact>? contacts) {
  if (contacts == null || contacts.isEmpty) {
    return ''; // No phone numbers available
  }

  final String phoneNumber1 = contacts[0].phoneNumber ?? '';
  final String phoneNumber2 =
      contacts.length > 1 ? contacts[1].phoneNumber ?? '' : '';

  if (phoneNumber1.isNotEmpty && phoneNumber2.isNotEmpty) {
    return '$phoneNumber1 - $phoneNumber2';
  } else {
    return phoneNumber1;
  }
}
