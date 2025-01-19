import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../modules/sales_man/features/orders/all_orders/all_orders_controller.dart';
import '../styles/colors.dart';
import '../styles/decoration.dart';

class CancelOrderDialog extends StatefulWidget {
  const CancelOrderDialog({
    super.key,
    required this.onCancel,
    required this.onConfirm,
    required this.customerName,
    required this.orderId,
  });
  final VoidCallback onCancel;
  final Function([String?]) onConfirm;
  final String customerName, orderId;

  @override
  State<CancelOrderDialog> createState() => _CancelOrderDialogState();
}

class _CancelOrderDialogState extends State<CancelOrderDialog> {
  final TextEditingController reasonController = TextEditingController();

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
            if (reasonController.text.isNotEmpty) {
              widget.onConfirm(reasonController.text);
            } else {
              widget.onConfirm();
            }
          },
          child: GetBuilder<AllOrdersController>(
              builder: (AllOrdersController controller) {
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
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
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
          SizedBox(
            width: 288.w,
            child: TextField(
              autofocus: false,
              maxLines: null,
              textAlign: TextAlign.start,
              textDirection: TextDirection.rtl,
              controller: reasonController,
              keyboardType: TextInputType.text,
              maxLength: 255,
              style: MyDecorations.textStyle400(primary, 14),
              decoration: InputDecoration(
                hintText: 'إرسال رسالة توضح سبب إلغاء الطلب.',
                hintStyle: MyDecorations.textStyle400(secondary, 12),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                counterStyle: MyDecorations.textStyle400(secondary, 10),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: secondary),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primary),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
