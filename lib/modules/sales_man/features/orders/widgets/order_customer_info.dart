import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/orders/edit_order/edit_order_screen.dart';
import 'package:rich_food/modules/sales_man/models/order_model.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../utils/services/date_to_day_name.dart';
import '../../../../../utils/services/time_formatter.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/dialog_button.dart';

class OrderCustomerInfo extends StatelessWidget {
  final String phoneNumbers;
  final OrderModel orderModel;
  final VoidCallback onCancel;
  final VoidCallback onRevoke;

  const OrderCustomerInfo({
    super.key,
    required this.phoneNumbers,
    required this.orderModel,
    required this.onCancel,
    required this.onRevoke,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        // width: 360.w,
        height: 144.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: base,
          boxShadow: const [
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 7,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          RichFoodIcons.calendar,
                          color: iconColor,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        SizedBox(
                          width: 60,
                          child: Text(
                            getArabicDayName(orderModel.deliveryDate),
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: primary,
                              fontSize: 14.w,
                              fontFamily: MyDecorations.myFont,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(
                      h: 6,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          RichFoodIcons.clock,
                          color: primary,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        SizedBox(
                          width: 68.w,
                          child: Text(
                            formatArabicTime(orderModel.deliveryTime),
                            textAlign: TextAlign.right,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              color: primary,
                              fontSize: 14,
                              fontFamily: MyDecorations.myFont,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 4.w,
                  height: 73.h,
                  margin: const EdgeInsetsDirectional.symmetric(horizontal: 8),
                  decoration: BoxDecoration(color: blueTheme),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 137.w,
                      height: 26.h,
                      child: Text(
                        orderModel.customer.name,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: primary,
                          fontSize: 14,
                          fontFamily: MyDecorations.myFont,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    SizedBox(
                      width: 203.w,
                      child: Text(
                        "رقم الطلب ${orderModel.id}",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: secondary,
                          fontSize: 14,
                          fontFamily: MyDecorations.myFont,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 203.w,
                      child: Text(
                        "${(orderModel.customer.address?.area)!} - ${orderModel.customer.location}" ??
                            '',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: secondary,
                          fontSize: 14,
                          fontFamily: MyDecorations.myFont,
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildOrderDateText(orderModel.deliveryDate),
                _buildOrderStatusWidget(orderModel),
              ],
            ),
          ],
        ),
      ),
      (orderModel.status == 'accepted' || orderModel.status == 'canceled') &&
              (orderModel.isLate)
          ? PositionedDirectional(
              end: 12.w,
              top: 12.h,
              child: Icon(
                RichFoodIcons.warning,
                size: 20,
                color: secondary,
              ),
            )
          : const SizedBox.shrink()
    ]);
  }

  Widget _buildOrderDateText(String orderDate) {
    return Text(
      orderDate.split(' ')[0],
      style: TextStyle(
        color: secondary,
        fontSize: 14,
        fontFamily: MyDecorations.myFont,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _buildOrderStatusWidget(OrderModel orderModel) {
    switch (orderModel.status) {
      case 'delivered':
        return Text(
          'تم التسليم',
          style: MyDecorations.textStyle500(blueTheme, 12),
        );
      case 'accepted':
        return _buildAcceptedButtons(orderModel);
      case 'canceled':
        return orderModel.canUndo == true
            ? _buildUndoButton()
            : _buildCanceledText();
      default:
        return const SizedBox();
    }
  }

  Widget _buildAcceptedButtons(OrderModel orderModel) {
    return Row(
      children: [
        DialogButton(
          onTap: () {
            Get.to(() => EditOrderScreen(
                  order: orderModel,
                ));
          },
          buttonColor: blueTheme.withOpacity(0.25),
          labelColor: blueTheme,
          label: "تعديل",
        ),
        SizedBox(width: 9.w),
        DialogButton(
          onTap: onCancel,
          buttonColor: red.withOpacity(0.25),
          labelColor: red,
          label: "إلغاء",
        ),
      ],
    );
  }

  Widget _buildUndoButton() {
    return DialogButton(
      buttonColor: secondary.withOpacity(0.25),
      label: "تراجع",
      labelColor: secondary,
      onTap: onRevoke,
    );
  }

  Widget _buildCanceledText() {
    return Text(
      'تم الإلغاء',
      style: MyDecorations.textStyle500(red, 12),
    );
  }
}
