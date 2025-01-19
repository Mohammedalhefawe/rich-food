class ApiConstants {
  static const String serverUrl = "http://91.144.20.117:7107/";
  static const String ip = '91.144.20.117';
  // static const int port = 7107;
  // static const String serverUrl = "http://192.168.2.159:7107/";
  // static const String ip = '192.168.2.159';
  static const int port = 7107;

  // static const String serverUrl = "http://192.168.2.138:808/"; // Uncomment this line for local testing
  static const String baseUrl = "${serverUrl}api/";
  static const String imageUrl = "${serverUrl}uploads/images/";
  static const String loginUrl = "${baseUrl}auth/login";
  static const String logoutUrl = "${baseUrl}auth/logout";
  static const String salesBranchesUrl = "${baseUrl}user/salesman/branches";
  static const String customerBranchesUrl = "${baseUrl}user/customer/branches";
}
