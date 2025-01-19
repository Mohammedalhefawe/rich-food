String getPhoneNumbers(var customer, String phoneNumbers) {
  if (customer.contacts != null && customer.contacts!.isNotEmpty) {
    phoneNumbers = customer.contacts[0].phoneNumber ?? '';
    if (customer.contacts!.length > 1 &&
        customer.contacts![1].phoneNumber != null) {
      phoneNumbers += ' - ${customer.contacts![1].phoneNumber}';
    }
  }
  return phoneNumbers;
}
