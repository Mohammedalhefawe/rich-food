import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/shared/widgets/custom_app_bar.dart';
import '../../../../shared/styles/colors.dart';
import '../../../../shared/styles/rich_food_icons.dart';
import '../../../../shared/widgets/icon_button.dart';
import '../drawer/drawer_widget.dart';
import '../notifications/notification_controller.dart';
import '../notifications/notification_list_screen.dart';
import '../prices/price_list_screen.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../drawer/drawer_customer_controller.dart';
import '../products/customer_product_screen_add.dart';

class CustomerMainLayout extends StatelessWidget {
  CustomerMainLayout({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DoubleBack(
        onFirstBackPress: (context) {
          // showMessage('اضغط مرة أخرى للخروج', true);
        },
        child: GetBuilder<DrawerCustomerController>(
            init: DrawerCustomerController(),
            builder: (controller) {
              return Scaffold(
                backgroundColor: background,
                key: scaffoldKey,
                appBar: CustomAppBar(
                  leadingIcon: BarIconButton(
                      onPressed: () => scaffoldKey.currentState?.openDrawer(),
                      icon: RichFoodIcons.bars),
                  title: 'المنتجات',
                  actionsList: [
                    BarIconButton(
                      icon: RichFoodIcons.total,
                      onPressed: () {
                        Get.to(() => CustomerPriceScreen());
                      },
                    ),
                    GetBuilder<CustomerNotificationController>(
                      builder: (CustomerNotificationController controller) {
                        return IconButton(
                            onPressed: () {
                              Get.to(
                                  () => const CustomerNotificationListScreen());
                            },
                            icon: Stack(children: [
                              Icon(
                                RichFoodIcons.notification,
                                size: 25,
                                color: iconColor,
                              ),
                              if (controller.unReadNotifications != 0) ...[
                                CircleAvatar(
                                  backgroundColor: red,
                                  radius: 7.r,
                                  child: Text(
                                    "${controller.unReadNotifications}",
                                    style: TextStyle(
                                        fontSize: 9.w, color: whiteTheme),
                                  ),
                                ),
                              ],
                            ]));
                      },
                    ),
                  ],
                ),
                drawer: MyDrawerCustomer(),
                body: const CustomerProductScreenAdd(),
              );
            }));
  }
}
