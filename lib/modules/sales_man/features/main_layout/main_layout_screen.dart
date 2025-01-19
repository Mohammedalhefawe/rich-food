import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/notifications/notification_controller.dart';
import 'package:rich_food/shared/widgets/custom_app_bar.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../shared/styles/colors.dart';
import '../../../../shared/styles/rich_food_icons.dart';
import '../../../../shared/widgets/icon_button.dart';
import '../customers/all_customers/all_customers_screen.dart';
import '../drawer/drawer_widget.dart';
import '../home/home_screen.dart';
import '../notifications/notification_list_screen.dart';
import '../orders/all_orders/all_orders_screen.dart';
import '../prices/price_list_screen.dart';
import 'main_layout_controller.dart';

class SalesManMainLayout extends StatelessWidget {
  SalesManMainLayout({super.key});

  final controller = Get.find<SalesmanMainLayoutController>();

  final screens = <Widget>[
    const HomePage(),
    AllOrdersScreen(),
    const AllCustomersScreen(),
  ];

  final List<String> screenNames = [
    'الرحلات',
    'الطلبات',
    'الزبائن',
  ];

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DoubleBack(
        onFirstBackPress: (context) {
          if (scaffoldKey.currentState!.isDrawerOpen) {
            Get.back();
            return false;
          } else {
            // showMessage('اضغط مرة أخرى للخروج', true);
          }
        },
        child: GetBuilder<SalesmanMainLayoutController>(
          init: SalesmanMainLayoutController(),
          builder: (_) {
            return Scaffold(
              backgroundColor: background,
              key: scaffoldKey,
              appBar: CustomAppBar(
                hideShadow: controller.selectedIndex == 0,
                leadingIcon: BarIconButton(
                    onPressed: () => scaffoldKey.currentState?.openDrawer(),
                    icon: RichFoodIcons.bars),
                title: screenNames[controller.selectedIndex],
                actionsList: [
                  BarIconButton(
                    icon: RichFoodIcons.total,
                    onPressed: () {
                      Get.to(() => PriceScreen());
                    },
                  ),
                  GetBuilder<NotificationController>(
                    builder: (NotificationController controller) {
                      return IconButton(
                          onPressed: () {
                            Get.to(() => const NotificationListScreen());
                          },
                          icon: Stack(children: [
                            Icon(
                              RichFoodIcons.notification,
                              color: iconColor,
                              size: 25,
                            ),
                            controller.unReadNotifications != 0
                                ? CircleAvatar(
                                    backgroundColor: red,
                                    radius: 7.r,
                                    child: Text(
                                      "${controller.unReadNotifications}",
                                      style: TextStyle(
                                          fontSize: 9.w, color: whiteTheme),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ]));
                    },
                  ),
                ],
              ),
              body: Container(child: screens[controller.selectedIndex]),
              drawer: MyDrawerSalesman(),
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: base,
                currentIndex: controller.selectedIndex,
                selectedItemColor: blueTheme,
                unselectedItemColor: primary,
                selectedFontSize: 12.w,
                unselectedFontSize: 12.w,
                selectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.w600),
                // unselectedLabelStyle: MyDecorations.TextStyle600(primary, 12),
                onTap: (index) {
                  controller.selectedIndex = index;
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      RichFoodIcons.car,
                      size: 24.w,
                    ),
                    label: screenNames[0],
                    activeIcon: Icon(
                      RichFoodIcons.car_filled,
                      size: 24.w,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      RichFoodIcons.cart,
                      size: 24.w,
                    ),
                    label: screenNames[1],
                    activeIcon: Icon(
                      RichFoodIcons.cart_filled,
                      size: 24.w,
                    ),
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(
                        RichFoodIcons.people,
                        size: 24.w,
                      ),
                      label: screenNames[2],
                      activeIcon: Icon(
                        RichFoodIcons.people_filled,
                        size: 24.w,
                      )),
                ],
              ),
            );
          },
        ));
  }
}
