import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/auth/controller/auth_controller.dart';
import 'package:rich_food/modules/auth/screens/login_screen.dart';
import 'package:rich_food/modules/customer/features/drawer/drawer_customer_controller.dart';
import 'package:rich_food/modules/customer/features/drawer/widgets/radio_list_generator_widget.dart';
import 'package:rich_food/modules/customer/features/drawer/widgets/sidebar_user_info.dart';
import 'package:rich_food/modules/customer/features/drawer/widgets/visibility_branch_widget.dart';
import 'package:rich_food/modules/customer/features/drawer/widgets/visibility_delegate_widget.dart';
import 'package:rich_food/modules/customer/features/drawer/widgets/visibility_theme_widget.dart';

import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../shared/styles/colors.dart';
import '../../../../utils/helpers/cacheKeys.dart';
import '../complaints/add_complaint/add_complaint_screen.dart';
import '../view_customer/view_customer_screen.dart';

class MyDrawerCustomer extends StatelessWidget {
  MyDrawerCustomer({
    super.key,
  });

  // final branchController = Get.put(BranchesController());
  final GetStorage storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    final String userName = storage.read(CacheKeys.userName) ?? "";
    final String userPhone = storage.read(CacheKeys.userPhone) ?? "";
    final String userRole = storage.read(CacheKeys.roleAr) ?? "";
    final String userCity = storage.read(CacheKeys.city) ?? "";
    return GetBuilder<DrawerCustomerController>(
        init: DrawerCustomerController(),
        builder: (controller) {
          print('rebuiled......................');
          return Drawer(
              backgroundColor: background,
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => CustomerProfileForCustomer(
                            customerName: userName,
                          ));
                    },
                    child: UserInfoCard(
                        name: userName,
                        phone: userPhone,
                        role: userRole,
                        city: userCity,
                        branch: storage.read(CacheKeys.branchName) ?? ""),
                  ),
                  Divider(
                    color: grey,
                  ),
                  CustomListTile(
                    iconLeading: RichFoodIcons.clock,
                    title: 'عرض وقت الوصول',
                    onTap: () {
                      controller.showTime();
                    },
                    trailing: const CustomSwitch(),
                  ),
                  const RadioListGeneratorForCustomer(
                    buttonIcon: Icons.dark_mode_outlined,
                    buttonName: 'الثيم',
                    visibilityWidget: VisibilityThemeCustomerWidget(),
                  ),
                  const RadioListGeneratorForCustomer(
                    buttonIcon: Icons.account_tree_outlined,
                    buttonName: 'الافرع',
                    visibilityWidget: VisibilityBranchesWidget(),
                  ),
                  const RadioListGeneratorForCustomer(
                    buttonIcon: Icons.account_circle_outlined,
                    buttonName: 'المندوب',
                    visibilityWidget: VisibilityDelegateWidget(),
                  ),
                  CustomListTile(
                    iconLeading: Icons.warning_amber_outlined,
                    title: 'إرسال شكوى',
                    onTap: () {
                      Get.to(() => AddComplaintScreen());
                    },
                  ),
                  CustomListTile(
                    iconLeading: RichFoodIcons.logout,
                    title: 'تسجيل الخروج',
                    onTap: () {
                      doLogout();
                    },
                  ),
                ],
              ));
        });
  }
}

doLogout() {
  Get.put(AuthController())
      .logout()
      .then((value) => Get.offAll(() => const LoginScreen()));
}

class CustomListTile extends StatelessWidget {
  final IconData iconLeading;
  final Widget? trailing;
  final void Function()? onTap;
  final String title;

  const CustomListTile(
      {super.key,
      required this.iconLeading,
      this.trailing,
      this.onTap,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          iconLeading,
          size: 24,
          color: primary,
        ),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 14.w, fontWeight: FontWeight.w400, color: primary),
        ),
        onTap: onTap,
        trailing: trailing ?? const SizedBox());
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    // DrawerCustomerController controller = Get.put(DrawerCustomerController());
    return GetBuilder<DrawerCustomerController>(
      init: DrawerCustomerController(),
      builder: (controller) {
        return Container(
          width: 45.w,
          height: 18.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            color: controller.isSwitchedForShowTime ? accent : grey,
          ),
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn,
                left: controller.isSwitchedForShowTime ? 24.w : 0.0,
                right: controller.isSwitchedForShowTime ? 0.0 : 24.w,
                child: Container(
                  width: 24.w,
                  height: 18.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: controller.isSwitchedForShowTime
                        ? blueTheme
                        : secondary,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
