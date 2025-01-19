import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/orders/add_order/add_order_controller.dart';
import 'package:rich_food/modules/sales_man/features/orders/add_order/add_order_screen.dart';
import 'package:rich_food/modules/sales_man/features/orders/all_orders/all_orders_controller.dart';
import 'package:rich_food/modules/sales_man/models/customer_model.dart';
import 'package:rich_food/modules/sales_man/features/customers/widgets/customer_card.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/widgets/loading_indicator.dart';
import '../../../../../shared/widgets/my_error_widget.dart';
import '../../../../../shared/widgets/no_data_frizo/no_data_general.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/custom_app_bar.dart';
import '../../../../../utils/services/phone_list_interpolater.dart';
import '../../customers/all_customers/all_customers_controller.dart';
import '../edit_order/edit_order_controller.dart';

class SelectCustomerScreen extends StatelessWidget {
  SelectCustomerScreen(
      {super.key,
      required this.isEditingOrder,
      required this.isChangingCustomer});
  final AllCustomersController customersController =
      Get.find<AllCustomersController>()
        ..resetSearch()
        ..isNoOrders = true;
  final bool isEditingOrder;
  final bool isChangingCustomer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: CustomAppBar(
        title: 'الزبائن',
        bottomWidget: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: Container(
            width: 360.w,
            height: 60.h,
            color: background,
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: 14.w, vertical: 12.h),
            child: SizedBox(
                width: 332.w,
                height: 36.h,
                child: TextField(
                  onChanged: (text) {
                    customersController.runFilter(text);
                  },
                  cursorColor: grey,
                  decoration: MyDecorations.searchInputDecoration(
                    icon: Icon(
                      Icons.search,
                      color: secondary,
                      size: 20,
                    ),
                    hint: "بحث",
                  ),
                  style: TextStyle(
                    color: secondary,
                    fontSize: 12.w,
                  ),
                )),
          ),
        ),
      ),
      body: GetBuilder<AllCustomersController>(
        builder: (controller) {
          if (controller.isLoadingCustomersList) {
            return const LoadingIndicatorWidget();
          }
          if (controller.isError) {
            return MyErrorWidget(
              onTapped: controller.fetchData,
            );
          }
          return RefreshIndicator(
              onRefresh: controller.fetchData,
              child: Builder(builder: (_) {
                if (controller.filteredCustomersList.isEmpty) {
                  return const NoDataGeneralWidget(
                    message: 'لا يوجد زبائن لعرضها',
                  );
                }
                return ListView.separated(
                  itemCount: controller.filteredCustomersList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 12.h);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    CustomerModel customer =
                        controller.filteredCustomersList[index];
                    String phoneNumbers = '';
                    phoneNumbers = getPhoneNumbers(customer, phoneNumbers);
                    return InkWell(
                      onTap: () {
                        (!isEditingOrder)
                            ? {
                                Get.find<AddOrderController>()
                                    .selectedCustomer = customer,
                                Get.find<AddOrderController>()
                                    .getNearestTrip()
                                    .then((success) {
                                  if (success) {
                                    isChangingCustomer
                                        ? Get.back()
                                        : Get.off(() => AddOrderScreen());
                                  }
                                })
                              }
                            : {
                                Get.find<EditOrderController>()
                                    .selectedCustomer = customer,
                                Get.find<EditOrderController>()
                                    .getNearestTrip()
                                    .then((success) {
                                  if (success) {
                                    Get.back();
                                    Get.find<AllOrdersController>().fetchData();
                                  }
                                })
                              };
                      },
                      child: GetBuilder<AddOrderController>(builder: (_) {
                        return IgnorePointer(
                          ignoring: _.isLoading,
                          child: Opacity(
                            opacity: (_.isLoading) ? 0.5 : 1,
                            child: CustomerCard(
                              customer: customer,
                              isShowIcon: false,
                            ),
                          ),
                        );
                      }),
                    );
                  },
                );
              }));
        },
      ),
    );
  }
}
