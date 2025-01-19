// import 'package:shared_preferences/shared_preferences.dart';
//
// class SharedPreferencesService {
//   static SharedPreferencesService? _instance;
//   late SharedPreferences _prefs;
//
//   SharedPreferencesService._() {
//     _initSharedPreferences();
//   }
//
//   // Singleton pattern to ensure a single instance throughout the app
//   static SharedPreferencesService get instance {
//     _instance ??= SharedPreferencesService._();
//     return _instance!;
//   }
//
//   // Initialize SharedPreferences
//   Future<void> _initSharedPreferences() async {
//     _prefs = await SharedPreferences.getInstance();
//   }
//
//   // Get a value from SharedPreferences
//   dynamic getValue(String key) {
//     return _prefs.get(key);
//   }
//
//   // Set a value in SharedPreferences
//   Future<void> setValue(String key, dynamic value) async {
//     if (value is bool) {
//       await _prefs.setBool(key, value);
//     } else if (value is int) {
//       await _prefs.setInt(key, value);
//     } else if (value is double) {
//       await _prefs.setDouble(key, value);
//     } else if (value is String) {
//       await _prefs.setString(key, value);
//     } else if (value is List<String>) {
//       await _prefs.setStringList(key, value);
//     } else {
//       throw Exception("Unsupported value type");
//     }
//   }
//
//   // Remove a value from SharedPreferences
//   Future<void> removeValue(String key) async {
//     await _prefs.remove(key);
//   }
// }
//
// Future<void> initSharedPreferences() async {
//   await SharedPreferencesService.instance._initSharedPreferences();
// }

class CacheKeys {
  static String token = "userTokenKey";

  static String fCMToken = "fCMTokenKey";
  static String expDate = "expirationDateKey";
  static String userId = "userIDKey";
  static String userName = "userNameKey";
  static String role = "userRoleKey";
  static String roleAr = "userArRoleKey";
  static String userPhone = "userPhoneKey";
  static String userImage = "userImageKey";
  static String isAuth = "isAuthKey";
  static String branchName = "userBranchNameKey";
  static String branchId = "userBranchIDKey";
  static String allBranches = "allBranchesKey";
  static String city = "userCityKey";
  static String cityID = "userCityIDKey";
  static String createPermission = "userPermission1Key";
  static String editPermission = "userPermission2Key";
  static String deletePermission = "userPermission3Key";
  static String startTime = "startTimeKey";
  static String tripStatus = "tripStatusKey";
  static String showAccessTime = "showAccessTimeKey";
  static String theme = "themeKey";
  static String savedElapsed = 'savedElapsedKey';
  static String customerType = "customerTypeKey";
  static String showTour = "showTourKey";
  static String backTwo = "backTowKey";
//   static   String user = "userKey";
// static   String firstOpen = "firstOpenKey";
// static   String isIphone = "isIphoneKey";
// static   String appLanguage = "langKey";
}
