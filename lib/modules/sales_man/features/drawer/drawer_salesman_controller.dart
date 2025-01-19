import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/sales_man/features/main_layout/main_layout_controller.dart';
import 'package:rich_food/modules/sales_man/features/trips/day_trips/all_day_trips_controller.dart';
import 'package:rich_food/modules/sales_man/features/trips/week_trips/all_week_trips_controller.dart';

import '../../../../shared/styles/theme/app_theme.dart';
import '../customers/all_customers/all_customers_controller.dart';
import '../orders/all_orders/all_orders_controller.dart';

class DrawerSalesmanController extends GetxController {
  late bool isDark;
  late GetStorage storage;

  bool _isError = false;
  bool _isLoading = false;

  bool get isError => _isError;
  bool get isLoading => _isLoading;

  // Setters with update call
  set isError(bool value) {
    _isError = value;
    update();
  }

  set isLoading(bool value) {
    _isLoading = value;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    storage = GetStorage();
    isDark = AppTheme.isDark;
  }

  void changeTheme() async {
    isDark = !isDark;
    AppTheme.isDark = isDark;
    await Get.find<AppTheme>().changeTheme();
    SalesmanMainLayoutController controller =
        Get.find<SalesmanMainLayoutController>();
    controller.update();
    if (controller.selectedIndex == 0) {
      Get.find<DayTripsController>().update();
      Get.find<AllWeekTripsController>().update();
    } else if (controller.selectedIndex == 1) {
      Get.find<AllOrdersController>().update();
    } else {
      Get.find<AllCustomersController>().update();
    }

    update();
  }
}
