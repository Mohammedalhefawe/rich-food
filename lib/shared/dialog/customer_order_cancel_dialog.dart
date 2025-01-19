import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/customer/features/my_order/my_order_controller.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../styles/colors.dart';
import '../styles/decoration.dart';

class CustomerCancelOrderDialog extends StatefulWidget {
  const CustomerCancelOrderDialog({
    super.key,
    required this.onCancel,
    required this.onConfirm,
    required this.customerName,
    required this.orderId,
  });
  final VoidCallback onCancel;
  final Function onConfirm;
  final String customerName, orderId;

  @override
  State<CustomerCancelOrderDialog> createState() =>
      _CustomerCancelOrderDialogState();
}

class _CustomerCancelOrderDialogState extends State<CustomerCancelOrderDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: background,
      title: Text('إلغاء طلب',
          textAlign: TextAlign.center,
          style: MyDecorations.textStyle500(primary, 16)),
      actions: [
        InkWell(
          onTap: widget.onCancel,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
            decoration: ShapeDecoration(
              color: lightGrey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
            ),
            child: Text(
              'تراجع',
              style: TextStyle(
                color: secondary,
                fontSize: 14.w,
                fontFamily: MyDecorations.myFont,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            widget.onConfirm();
          },
          child: GetBuilder<MyOrderController>(builder: (controller) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
              decoration: ShapeDecoration(
                color: !controller.isLoadingChangeStatus ? red : grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
              ),
              child: Text(
                !controller.isLoadingChangeStatus ? 'تأكيد' : "جار الإلغاء..",
                style: TextStyle(
                  color: white,
                  fontSize: 14.w,
                  fontFamily: MyDecorations.myFont,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          }),
        ),
      ],
      content: SizedBox(
        width: 288.w,
        child: RichText(
          textAlign: TextAlign.start,
          textDirection: TextDirection.rtl,
          text: TextSpan(
            children: [
              TextSpan(
                  text: 'هل تريد الغاء طلب ',
                  style: MyDecorations.textStyle400(primary, 14)),
              TextSpan(
                  text: widget.customerName,
                  style: MyDecorations.textStyle500(primary, 14)),
              TextSpan(
                text: ' رقم ${widget.orderId} ',
                style: MyDecorations.textStyle400(primary, 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
