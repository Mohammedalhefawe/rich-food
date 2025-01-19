import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../styles/colors.dart';
import '../styles/decoration.dart';
import '../widgets/dialog_button.dart';
import 'cancel_button.dart';

class CancelCustomerDialog extends StatelessWidget {
  final String? title;
  final String content;
  final String confirmationText;
  final VoidCallback onConfirm;

  const CancelCustomerDialog({
    super.key,
    this.title,
    required this.content,
    required this.confirmationText,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      title: title != null
          ? Text(
        title!,
        style: MyDecorations.textStyle500(primary, 16),
      )
          : const SizedBox(),
      content: Text(
        content,
        style: MyDecorations.textStyle400(primary, 14),
      ),
      actions: [
        const DialogCancelButton(),
        SizedBox(width: 9.w),
        DialogButton(
          onTap: () {
            onConfirm();
          },
          buttonColor: red.withOpacity(0.25),
          labelColor: red,
          label:confirmationText,
        ),
      ],
    );
  }
}
