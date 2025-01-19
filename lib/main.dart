import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/auth/screens/splash_screen.dart';
import 'package:rich_food/shared/styles/theme/app_theme.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/utils/helpers/AppBindings.dart';
import 'package:rich_food/utils/helpers/api/dio_helper.dart';
import 'package:rich_food/utils/helpers/notification_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  DioHelper.init();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAPI().initNotification();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final languageProvider = context.watch<LanguageProvider>();
    // Initialize the context for the extension and the design size
    SizeExtension.init(context, width: 360.0, height: 800.0);
    AppTheme themeController = Get.put(AppTheme());

    return GetMaterialApp(
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeftWithFade,
      title: 'Rich Food',
      locale: const Locale('ar', ''),
      supportedLocales: const [
        // Locale('en', ''),
        Locale('ar', ''),
      ],
      localizationsDelegates: const [
        // AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: themeController.appTheme,
      home: SplashScreen(), // default: SplashScreen()
    );
  }
}
