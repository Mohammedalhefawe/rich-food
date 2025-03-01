// import 'package:flutter/material.dart';
// import '../helpers/api/cacheKeys.dart';
//
// class LanguageProvider extends ChangeNotifier {
//   late Locale _appLocale =   Locale("en", "");
//   SharedPreferencesService prefsService = SharedPreferencesService.instance;
//
//   LanguageProvider() {
//     loadLocale();
//   }
//
//   Future<void> loadLocale() async {
//     String? languageCode = storage.read('language_code') as String?;
//     String? countryCode = storage.read('country_code') as String?;
//     if (languageCode != null && countryCode != null) {
//       _appLocale = Locale(languageCode, countryCode);
//     } else {
//       _appLocale = WidgetsBinding.instance.platformDispatcher.locale;
//     }
//   }
//
//   changeLanguage(Locale locale) async {
//     await prefsService.setValue('language_code', locale.languageCode);
//     await prefsService.setValue('country_code', locale.countryCode ?? "");
//     _appLocale = locale;
//     // MyDecorations.myFont = (locale.languageCode == 'en') ? 'Saira' : MyDecorations.myFont;
//     notifyListeners();
//   }
//
//   Locale get appLocale => _appLocale;
// }
