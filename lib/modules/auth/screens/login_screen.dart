import 'dart:developer';
import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/auth/controller/auth_controller.dart';
import 'package:rich_food/modules/auth/controller/branches_controller.dart';
import 'package:rich_food/modules/auth/screens/splash_screen.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/utils/extensions/sizer.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/styles/rich_food_icons.dart';
import '../../../../../shared/widgets/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const Gap(
                h: 96,
              ),
              const Logo().sizer(h: 77, w: 138),
              const Gap(
                h: 96,
              ),
              const WelcomeText(),
              const Gap(
                h: 64,
              ),
              const LoginForm(),
              const Gap(
                h: 50,
              ),
            ],
          ),
        ),
      ),
      // persistentFooterButtons:
    );
  }
}

BoxDecoration backgroundDecoration() {
  return const BoxDecoration(
    image: DecorationImage(
      image: AssetImage(
        'assets/images/background-login.png',
      ),
      fit: BoxFit.cover,
    ),
  );
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/img.png',
      height: 77.h,
      width: 138.w,
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "تسجيل الدخول",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: primary,
              fontSize: 20.w,
              fontFamily: MyDecorations.myFont,
              fontWeight: FontWeight.w600,
            ),
          ).sizer(h: 47, w: 200), //128
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController =
      TextEditingController(text: 'salesman01');
  final TextEditingController _passwordController =
      TextEditingController(text: 'password');
  bool obscured = true;
  final GetStorage storage = GetStorage();
  final _authController = Get.put(AuthController());

  @override
  void initState() {
    super.initState();
    // _phoneController.text = "0935622242";
    // _passwordController.text = "123456789";
  }

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DoubleBack(
        onFirstBackPress: (context) {
          // showMessage('اضغط مرة أخرى للخروج', true);
        },
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                TextFormField(
                  style: TextStyle(color: secondary),
                  controller: _usernameController,
                  keyboardType: TextInputType.text,
                  decoration: MyDecorations.myInputDecoration(
                      hint: 'اسم المستخدم',
                      icon: Icon(
                        RichFoodIcons.person_filled,
                        size: 24,
                        color: secondary,
                      )),
                  // onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'الرجاء إدخال اسم المستخدم';
                    }
                    return null;
                  },
                ), // .sizer(h: 42, w: 332),
                const Gap(h: 16),
                TextFormField(
                  controller: _passwordController,
                  obscureText: obscured,
                  style: TextStyle(color: secondary),
                  decoration: MyDecorations.myInputDecoration(
                      hint: 'كلمة المرور',
                      icon: Icon(
                        RichFoodIcons.lock_filled,
                        size: 24,
                        color: secondary,
                      ),
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              obscured = !obscured;
                            });
                          },
                          icon: Icon(
                            obscured
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: 20,
                            color: secondary,
                          ))),
                  onFieldSubmitted: (_) => {
                    if (!_authController.isLoading &&
                        _formKey.currentState!.validate())
                      {
                        doLogin(),
                      }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "الرجاء إدخال كلمة المرور";
                    }
                    return null;
                  },
                ),
                const Gap(h: 30),
                SizedBox(
                  width: 336.w,
                  height: 50.h,
                  child: GetBuilder(
                    init: AuthController(),
                    builder: (GetxController controller) {
                      return ElevatedButton(
                          onPressed: () {
                            if (!_authController.isLoading &&
                                _formKey.currentState!.validate()) {
                              doLogin();
                            }
                          },
                          style: MyDecorations.myButtonStyle(blueTheme),
                          child: _authController.isLoading
                              ? SizedBox(
                                  height: 20.w,
                                  width: 20.w,
                                  child:
                                      const CircularProgressIndicator.adaptive(
                                    strokeWidth: 1,
                                    valueColor:
                                        AlwaysStoppedAnimation<Color>(white),
                                  ),
                                )
                              : Text(
                                  'تسجيل الدخول',
                                  style: MyDecorations.myButtonTextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ));
                    },
                  ),
                ),
                const Gap(
                  h: 56,
                ),
                SizedBox(
                  width: 120.w,
                  height: 108.h,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('POWERED BY',
                          textAlign: TextAlign.right,
                          style: MyDecorations.textStyle500(secondary, 14)),
                      SizedBox(height: 16.h),
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
            ),
          ),
        ));
  }

  void doLogin() {
    _authController
        .login(_usernameController.text, _passwordController.text)
        .then((value) async {
      log("view status: $value");
      if (value) {
        // await Get.put(BranchesController()).fetchData();
        Get.offAll(() => const SplashScreen());
      }
      /*if (value) {
        String role = storage.read(CacheKeys.role) ?? '';
        if (role == 'customer' || role == 'salesman') {
          await Get.put(BranchesController()).fetchData().then((value) {
            if (value) {
              navigateToMainLayout((role == 'customer'));
            } else {
              Get.offAll(() => NoBranchScreen(isError:Get.find<BranchesController>().isError, isCustomer: (role == 'customer'),));
            }
          });
        } else {
          showMessage("التطبيق لا يدعم نوع المستخدم", false);
        }
      }*/
    });
  }
}
