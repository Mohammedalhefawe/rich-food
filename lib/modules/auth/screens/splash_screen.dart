import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/utils/extensions/sizer.dart';
import '../../../../../shared/widgets/loading_indicator.dart';
import '../../../utils/helpers/cacheKeys.dart';
import '../../customer/features/products/widgets/animated_car_icon_widget.dart';
import '../_methods.dart';
import '../controller/branches_controller.dart';
import 'login_screen.dart';
import 'no_branch_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

// Import for Timer class

class _SplashScreenState extends State<SplashScreen> {
  bool _isLoading = true;
  late String role;
  late bool isAuth;
  late bool isTokenExpired;
  late String expirationDate;
  late String token;
  final GetStorage storage = GetStorage();

  @override
  void initState() {
    super.initState();
    initData();
  }

  void initData() async {
    token = storage.read(CacheKeys.token) ?? "";
    isAuth = storage.read(CacheKeys.isAuth) ?? false;
    expirationDate = storage.read(CacheKeys.expDate) ?? '';
    role = storage.read(CacheKeys.role) ?? '';

    // Set loading indicator to false once initialization is complete
    setState(() {
      _isLoading = false;
    });
  }

  bool isExpired(String expDate) {
    final DateTime expirationDate = DateTime.parse(expDate);
    final DateTime now = DateTime.now();
    return now.isAfter(expirationDate);
  }

  void navigateToLoginPage() {
    Get.offAll(
      () => const LoginScreen(),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: _isLoading
            ? const LoadingIndicatorWidget() // Show loading indicator if still loading
            : Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Gap(
                    h: 192,
                  ),
                  const Logo().sizer(h: 77, w: 138),
                  Gap(
                    h: 280,
                  ),
                  AnimatedCarIconWidget(
                    voidCallback: () async {
                      if (isAuth && token.isNotEmpty) {
                        // Check if the token is expired
                        // bool isTokenExpired = isExpiredJWT(token);
                        isTokenExpired = isExpired(expirationDate);

                        if (!isTokenExpired) {
                          // Token is not expired, navigate to main layout
                          await Get.put(BranchesController())
                              .fetchData()
                              .then((value) {
                            if (value) {
                              navigateToMainLayout((role == 'customer'));
                            } else {
                              Get.offAll(() => NoBranchScreen(
                                    isError:
                                        Get.find<BranchesController>().isError,
                                    isCustomer: (role == 'customer'),
                                  ));
                            }
                          });
                        } else {
                          // Token is expired, navigate to login screen
                          navigateToLoginPage();
                        }
                      } else {
                        navigateToLoginPage();
                      }
                    },
                  ),
                  Gap(
                    h: 105,
                  ),
                  SizedBox(
                    width: 120.w,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'POWERED BY',
                          textAlign: TextAlign.right,
                          style: MyDecorations.textStyle500(secondary, 14),
                        ),
                        Gap(h: 16),
                        Text(
                          'LOGO',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: blueTheme,
                            fontSize: 32.w,
                            fontFamily: 'Noto Kufi Arabic',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(h: 16),
                        Text(
                          'CODE SHIELD',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: secondary,
                            fontSize: 12.w,
                            fontFamily: 'Noto Kufi Arabic',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2.88,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ), // Otherwise, show nothing
      ),
    );
  }
}
