import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/auth/controller/branches_controller.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/shared/widgets/loading_indicator.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class VisibilityDelegateWidget extends StatelessWidget {
  const VisibilityDelegateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BranchesController>(
      init: BranchesController(),
      builder: (controller) {
        if (controller.isLoading) {
          return const LoadingIndicatorWidget();
        }
        if (controller.branchesList.isEmpty) {
          return Center(
              child: Text(
            'لا يوجد مندوبين !',
            style: MyDecorations.textStyle500(primary, 12),
          ));
        }
        if (controller.isError) {
          return Center(
              child: TextButton(
            onPressed: () {
              controller.fetchData();
            },
            child: Text(
              'خطأ بتحميل المندوبين \n إعادة المحاولة !',
              style: MyDecorations.textStyle500(primary, 12),
            ),
          ));
        }
        return SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                child: Text(
                  controller.currentBranch.salesman != null
                      ? controller.currentBranch.salesman!.name
                      : '------',
                  style: MyDecorations.textStyle400(primary, 12),
                ),
              ),
              Gap(
                h: 8.h,
              ),
              if (controller.currentBranch.salesman != null)
                Column(
                  children: List.generate(
                      controller.currentBranch.salesman!.contacts.length,
                      (index) {
                    return InkWell(
                      onLongPress: () {
                        makePhoneCall(
                          controller.currentBranch.salesman!.contacts[index]
                              .phoneNumber
                              .toString(),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 8.h),
                        child: Text(
                          controller.currentBranch.salesman!.contacts[index]
                              .phoneNumber
                              .toString(),
                          style: MyDecorations.textStyle400(primary, 12),
                        ),
                      ),
                    );
                  }),
                )
            ],
          ),
        );
      },
    );
  }
}

void makePhoneCall(String phoneNumber) async {
  String telScheme = 'tel:$phoneNumber';
  if (await canLaunch(telScheme)) {
    await launch(telScheme);
  } else {
    throw 'Could not launch $telScheme';
  }
}
