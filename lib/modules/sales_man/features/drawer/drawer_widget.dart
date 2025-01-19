import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/auth/controller/auth_controller.dart';
import 'package:rich_food/modules/auth/controller/branches_controller.dart';
import 'package:rich_food/modules/sales_man/features/drawer/widgets/radio_list_generator_salesman_widget.dart';
import 'package:rich_food/modules/sales_man/features/drawer/widgets/sidebar_user_info.dart';
import 'package:rich_food/modules/sales_man/features/drawer/widgets/visibility_theme_widget.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../shared/styles/colors.dart';
import '../../../../utils/helpers/cacheKeys.dart';
import '../../../auth/screens/login_screen.dart';
import '../../../customer/features/drawer/widgets/visibility_branch_widget.dart';
import 'drawer_salesman_controller.dart';

class MyDrawerSalesman extends StatelessWidget {
  MyDrawerSalesman({
    super.key,
  });
  final branchController = Get.find<BranchesController>();
  final GetStorage storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    String userName = storage.read(CacheKeys.userName);
    String userPhone = storage.read(CacheKeys.userPhone);
    String userRole = storage.read(CacheKeys.roleAr);
    String userCity = storage.read(CacheKeys.city);
    return Drawer(
      backgroundColor: background,
      child: GetBuilder(
          init: DrawerSalesmanController(),
          builder: (context) {
            return ListView(
              children: [
                UserInfoCard(
                    name: userName,
                    phone: userPhone,
                    role: userRole,
                    city: userCity,
                    branch: storage.read(CacheKeys.branchName) ?? ""),
                Divider(
                  color: grey,
                ),
                const RadioListGeneratorSalesman(
                  buttonIcon: Icons.dark_mode_outlined,
                  buttonName: 'الثيم',
                  visibilityWidget: VisibilityThemeSalesmanWidget(),
                ),
                const RadioListGeneratorSalesman(
                  buttonIcon: Icons.account_tree_outlined,
                  buttonName: 'الافرع',
                  visibilityWidget: VisibilityBranchesWidget(),
                ),
                ListTile(
                  leading: Icon(
                    RichFoodIcons.logout,
                    size: 24,
                    color: primary,
                  ),
                  title: Text(
                    'تسجيل الخروج',
                    style: TextStyle(
                        fontSize: 14.w,
                        fontWeight: FontWeight.w400,
                        color: primary),
                  ),
                  onTap: () {
                    doLogout();
                  },
                ),
              ],
            );
          }),
    );
  }

  doLogout() {
    Get.put(
      AuthController(),
    ).logout().then((value) {
      if (value) Get.offAll(() => LoginScreen());
    });
  }
}
