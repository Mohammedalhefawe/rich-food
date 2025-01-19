import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/custom_app_bar.dart';
import '../../../../../shared/widgets/snackBar.dart';
import 'add_complaint_controller.dart';

class AddComplaintScreen extends StatelessWidget {
  AddComplaintScreen({super.key});

  final TextEditingController _reportController = TextEditingController();

  void dispose() {
    _reportController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: const CustomAppBar(
          title: "الشكاوى",
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: TextField(
            maxLines: null,
            style: MyDecorations.textStyle500(primary, 14),
            decoration: InputDecoration(
              hintText: 'اكتب هنا ....',
              hintStyle: MyDecorations.textStyle500(secondary, 14),
              border: InputBorder.none,
            ),
            controller: _reportController,
          ),
        ),
        floatingActionButton: GetBuilder<AddComplaintController>(
          builder: (AddComplaintController controller) {
            return SendButtonWidget(
              onPressed: () {
                if (_reportController.text.isNotEmpty) {
                  controller.addComplaint(_reportController.text).then((value) {
                    log("view status: $value");
                    if (value) {
                      Get.back();
                      showMessage("تم ارسال الشكوى بنجاح", true);
                    } else {
                      // showMessage("Login failed !", false);
                    }
                  });
                }
              },
            );
          },
        ));
  }
}

class SendButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const SendButtonWidget({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: !Get.find<AddComplaintController>().isLoading
            ? blueTheme
            : grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            !Get.find<AddComplaintController>().isLoading
                ? 'إرسال'
                : "جار الإرسال..",
            style: MyDecorations.textStyle600(white, 14),
          ),
          const SizedBox(width: 8),
          const SizedBox(
            width: 24,
            height: 24,
            child: Icon(
              Icons.send_sharp,
              size: 19,
              color: white,
            ),
          ),
        ],
      ),
    );
  }
}
