import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../modules/auth/screens/login_screen.dart';
import '../../shared/widgets/snackBar.dart';
import '../helpers/cacheKeys.dart';

String getAuth() {
  final GetStorage storage = GetStorage();
  String maybeToken = storage.read(
        CacheKeys.token,
      ) ??
      '';
  if (maybeToken.isNotEmpty) {
    return maybeToken;
  }
  showMessage('انتهت الجلسة', false);
  Get.offAll(() => const LoginScreen());
  return '';
}
