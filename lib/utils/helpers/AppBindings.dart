import 'package:get/get.dart';
import 'package:rich_food/modules/auth/controller/branches_controller.dart';
import 'package:rich_food/modules/customer/features/cart/cart_controller.dart';
import 'package:rich_food/modules/customer/features/edit_cart/edit_cart_controller.dart';
import 'package:rich_food/modules/customer/features/my_order/my_order_controller.dart';
import 'package:rich_food/modules/sales_man/features/customers/edit_customer/edit_customer_controller.dart';
import 'package:rich_food/modules/sales_man/features/orders/add_order/add_order_controller.dart';
import 'package:rich_food/modules/sales_man/features/prices/price_list_controller.dart';
import 'package:rich_food/modules/sales_man/features/trips/week_trips/all_week_trips_controller.dart';
import 'package:rich_food/modules/sales_man/features/customers/add_customer/add_customer_controller.dart';
import 'package:rich_food/modules/sales_man/features/customers/all_customers/all_customers_controller.dart';
import 'package:rich_food/modules/sales_man/features/customers/all_customers/delete_customer_controller.dart';
import 'package:rich_food/modules/sales_man/features/main_layout/main_layout_controller.dart';
import 'package:rich_food/modules/sales_man/features/notifications/notification_controller.dart';
import 'package:rich_food/modules/sales_man/features/orders/all_orders/all_orders_controller.dart';
import 'package:rich_food/modules/sales_man/features/orders/products/product_controller.dart';
import 'package:rich_food/modules/sales_man/features/trips/custom_day_trips/custom_day_trips_controller.dart';
import 'package:rich_food/modules/sales_man/features/trips/day_trips/all_day_trips_controller.dart';
import 'package:rich_food/modules/sales_man/features/trips/trip_timer/trip_timer_controller.dart';
import '../../modules/customer/features/complaints/add_complaint/add_complaint_controller.dart';
import '../../modules/customer/features/drawer/drawer_customer_controller.dart';
import '../../modules/customer/features/notifications/notification_controller.dart';
import '../../modules/customer/features/prices/price_list_controller.dart';
import '../../modules/customer/features/products/customer_products_controller.dart';
import '../../modules/customer/features/view_customer/view_customer_controller.dart';
import '../../modules/sales_man/features/drawer/drawer_salesman_controller.dart';
import '../../modules/sales_man/features/orders/edit_order/edit_order_controller.dart';
import '../../modules/sales_man/features/trips/trip_dates/trip_dates_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Get.put(TripTimerController(), permanent: true);
    Get.lazyPut(() => TripTimerController(), fenix: true);
    // Get.put(DrawerCustomerController());
    // Get.put(DrawerSalesmanController());
    Get.lazyPut(
      () => DrawerCustomerController(),
      fenix: true,
    );
    Get.lazyPut(
      () => DrawerSalesmanController(),
      fenix: true,
    );
    // Get.lazyPut(() => AuthController(), fenix: true);
    Get.lazyPut(() => SalesmanMainLayoutController(), fenix: true);
    Get.lazyPut(() => PriceListController(), fenix: true);
    Get.lazyPut(() => ProductsController(), fenix: true);
    Get.lazyPut(() => AllCustomersController(), fenix: true);
    Get.lazyPut(() => EditCustomerController(), fenix: true);
    Get.lazyPut(() => DeleteCustomerController(), fenix: true);
    Get.lazyPut(() => DayTripsController(), fenix: true);
    Get.lazyPut(() => AddCustomerController(), fenix: true);
    Get.lazyPut(() => AllWeekTripsController(), fenix: true);
    Get.lazyPut(() => CustomDayController(), fenix: true);
    Get.lazyPut(() => AllOrdersController(), fenix: true);
    Get.lazyPut(() => NotificationController(), fenix: true);
    // Get.lazyPut(() => BranchesController(), fenix: true);
    Get.lazyPut(() => TripDatesController(), fenix: true);
    Get.put(
      AddOrderController(),
    );
    Get.put(
      EditOrderController(),
    );

    Get.lazyPut(() => CustomerProfileController(), fenix: true);
    Get.lazyPut(() => CustomerPriceListController(), fenix: true);
    Get.lazyPut(() => CustomerNotificationController(), fenix: true);
    Get.lazyPut(() => AddComplaintController(), fenix: true);
    Get.lazyPut(() => CustomerProductsController(), fenix: true);
    Get.put(
      CartController(),
    );
    Get.put(
      EditCartController(),
    );
    Get.lazyPut(() => MyOrderController(), fenix: true);
  }
}
