import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/customer/features/my_order/widgets/customer_view_order_footer.dart';
import 'package:rich_food/modules/customer/features/my_order/widgets/product_of_customer_order.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/utils/services/time_formatter.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/custom_app_bar.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../shared/dialog/customer_order_cancel_dialog.dart';
import '../../../../shared/widgets/loading_indicator.dart';
import '../../../../shared/widgets/my_error_widget.dart';
import '../../models/customer_order_model.dart';
import '../../models/customer_products_model.dart';
import '../edit_cart/edit_cart_screen.dart';
import 'my_order_controller.dart';


class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyOrderController>(
      builder: (_) {
        if (_.isLoading) {
          return Scaffold(body: const LoadingIndicatorWidget());
        }
        if (_.isError) {
          return Scaffold(
            backgroundColor: background,
            body: MyErrorWidget(
              onTapped: _.fetchData,
            ),
          );
        }
        if (_.myOrder == null) {
          Get.back();
          // showMessage('الطلب غير موجود', false);
          return Container();
        }
        CustomerOrderModel order = _.myOrder!;
        return Scaffold(
          backgroundColor: background,
          appBar: CustomAppBar(title: "الطلب #${Get.find<MyOrderController>().myOrder!.id}"),
          body: ListView.separated(
            shrinkWrap: true,
            itemCount: order.products.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == order.products.length) {
                return CustomerOrderInfo(order.orderDate, order.deliveryDate, order.totalPrice.toString());
              }
              CustomerProductModel item = order.products[index];
              return ProductCardView(item);
            },
            separatorBuilder: (BuildContext context, int index) {
              return  Gap(h: 6.h);
            },
          ),
          bottomNavigationBar: CustomerViewOrderFooter(
            status: order.status,
            onCancel: () {
              showConfirmationDialog();
            },
            onEdit: () async {
              final result = await Get.to(() => EditCartScreen(order: order));
              if (result == true) {
                await _.refreshData();
              }
            },
            onRevoke: () {
              _.changeOrderStatus(action: 'accepted', orderId: order.id);
            },
          ),
        );
      }
    );
  }

  Future<bool> showConfirmationDialog() async {
    MyOrderController controller = Get.find<MyOrderController>();
    CustomerOrderModel order = controller.myOrder!;

    return await Get.dialog<bool>(
      CustomerCancelOrderDialog(
        onCancel: () {
          !controller.isLoadingChangeStatus ? Get.back() : null;
        },
        onConfirm: ([String? reason]) {
          controller.changeOrderStatus(action: 'canceled', orderId: order.id).then((value) {
            if (value) {
              Get.back();
              Get.back();
              showMessage('تم إلغاء الطلب بنجاح', true);
              controller.fetchData();
            } else {
              showMessage('فشل إلغاء الطلب', false);
            }
          });
        },
        customerName: order.customer?.name ?? "",
        orderId: order.id.toString(),
      ),
      barrierDismissible: false,
    ) ?? false;
  }
}

class CustomerOrderInfo extends StatelessWidget {
  const CustomerOrderInfo(this.orderDate, this.deliveryDateTime, this.totalPrice, {super.key});

  final String orderDate, deliveryDateTime, totalPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildText('تاريخ الطلب', formatDate(orderDate)),
          const Gap(h: 4),
          buildText('تاريخ التسليم', deliveryDateTime),
          const Gap(h: 4),
          buildText('السعر الكلي', totalPrice +" ل.س ",),
        ],
      ),
    );
  }

  Text buildText(String title, String value) => Text(
    '$title: $value',
    style: MyDecorations.textStyle400(secondary, 14),
  );
}


/*class MyOrderScreen extends StatelessWidget {
  MyOrderScreen(this.order, {super.key});

  final CustomerOrderModel order;
  final MyOrderController controller = Get.find<MyOrderController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: CustomAppBar(title: "الطلب #${order.id}"),
      body: ListView.separated(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),

          itemCount: order.products.length + 1,
          itemBuilder: (BuildContext context, int index) {
            // dayName: getArabicDayName(order.deliveryDate),
            if (index == order.products.length) {
              return CustomerOrderInfo(order.orderDate, order.deliveryDate,
                  order.totalPrice.toString());
            }
            CustomerProductModel item = order.products[index];

            return ProductCardView(
              item,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Gap(
              h: 12,
            );
          }),
      bottomNavigationBar: CustomerViewOrderFooter(
        status: order.status,
        onCancel: () {
          showConfirmationDialog();
        },
        onEdit: () {
          Get.to(() => EditCartScreen(
                order: order,
              ));
        },
        onRevoke: () {
          controller.changeOrderStatus(action: 'accepted', orderId: order.id);
        },
      ),
    );
  }

  Future<bool> showConfirmationDialog() async {
    return await Get.dialog<bool>(
          CustomerCancelOrderDialog(
            onCancel: () {
              !controller.isLoadingChangeStatus ? Get.back() : null;
            },
            onConfirm: ([String? reason]) {
              controller
                  .changeOrderStatus(
                action: 'canceled',
                orderId: order.id,
              )
                  .then((value) {
                if (value) {
                  Get.back();
                  Get.back();
                  showMessage('تم إلغاء الطلب بنجاح', true);
                  Get.find<MyOrderController>().fetchData();
                } else {
                  showMessage('فشل إلغاء الطلب', false);
                }
              });
            },
            customerName: order.customer?.name ?? "",
            orderId: order.id.toString(),
          ),
          barrierDismissible: false,
        ) ??
        false;
  }
}

class CustomerOrderInfo extends StatelessWidget {
  const CustomerOrderInfo(
      this.orderDate, this.deliveryDateTime, this.totalPrice,
      {super.key});

  final String orderDate, deliveryDateTime, totalPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildText('تاريخ الطلب', formatDate(orderDate)),
          const Gap(
            h: 4,
          ),
          buildText('تاريخ التسليم', deliveryDateTime),
          const Gap(
            h: 4,
          ),
          buildText('السعر الكلي', totalPrice),
        ],
      ),
    );
  }

  Text buildText(String title, String value) => Text(
        '$title: $value',
        style: MyDecorations.textStyle400(secondary, 14),
      );
}*/
