import 'dart:io';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:rich_food/utils/helpers/api/api_constants.dart';

class InternetChecker {
  static final InternetConnectionChecker instance =
      InternetConnectionChecker.createInstance(
    checkTimeout: const Duration(seconds: 5),
    checkInterval: const Duration(seconds: 3),
    addresses: [
      AddressCheckOptions(
        address: InternetAddress(ApiConstants.ip),
        port: ApiConstants.port,
      ),
    ],
  );
}
