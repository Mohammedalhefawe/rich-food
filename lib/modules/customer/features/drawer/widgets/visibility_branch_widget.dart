import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/auth/controller/branches_controller.dart';
import 'package:rich_food/modules/customer/features/drawer/drawer_customer_controller.dart';
import 'package:rich_food/modules/customer/features/products/customer_products_controller.dart';
import 'package:rich_food/modules/sales_man/features/orders/all_orders/all_orders_controller.dart';
import 'package:rich_food/modules/sales_man/features/trips/day_trips/all_day_trips_controller.dart';
import 'package:rich_food/modules/sales_man/features/trips/week_trips/all_week_trips_controller.dart';
import 'package:rich_food/modules/sales_man/models/branch_model.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/shared/styles/theme/app_theme.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/shared/widgets/loading_indicator.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

class VisibilityBranchesWidget extends StatelessWidget {
  const VisibilityBranchesWidget({
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
          // Get.offAll(() =>   NoBranchScreen());
          return Center(
              child: Text(
            'لا يوجد أفرع !',
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
              'خطأ بتحميل الأفرع \n إعادة المحاولة !',
              style: MyDecorations.textStyle500(primary, 12),
            ),
          ));
        }
        return SizedBox(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: controller.branchesList.length,
            itemBuilder: (context, index) {
              final item = controller.branchesList[index];
              final bool isSelectedBranch =
                  (Get.find<BranchesController>().currentBranch.id == item.id);
              return BranchTile(
                title: item.name,
                isSelected: isSelectedBranch,
                onItemSelect: () {
                  Get.back();
                  changeBranch(context, item);
                },
              );
            },
          ),
        );
      },
    );
  }
}

class BranchTile extends StatelessWidget {
  const BranchTile({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onItemSelect,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onItemSelect;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onItemSelect,
      child: Stack(
        children: [
          Container(
            height: 60.h,
            margin: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: isSelected
                ? BoxDecoration(
                    color: AppTheme.isDark ? accent.withOpacity(0.2) : accent,
                    borderRadius: BorderRadius.circular(8.r))
                : const BoxDecoration(),
          ),
          Container(
            height: 60.h,
            // margin: EdgeInsets.symmetric(horizontal: 6.w),
            padding: EdgeInsetsDirectional.only(start: 40.w),
            child: ListTile(
              title: Text(
                title,
                style: TextStyle(
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                    color: isSelected ? blueTheme : primary),
              ),
              trailing: Padding(
                padding: EdgeInsetsDirectional.only(start: 37.w),
                child:
                    isSelected ? const SelectedIcon() : const UnSelectedIcon(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UnSelectedIcon extends StatelessWidget {
  const UnSelectedIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.radio_button_off_outlined,
      color: primary,
      size: 15,
    );
  }
}

class SelectedIcon extends StatelessWidget {
  const SelectedIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.radio_button_checked_outlined,
      color: blueTheme,
      size: 15,
    );
  }
}

class ChangingBranchDialog extends StatelessWidget {
  const ChangingBranchDialog({super.key, required this.branch});
  final Branch branch;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'الانتقال إلى فرع ${branch.name}',
              style: MyDecorations.textStyle400(primary, 14),
            ),
            const Gap(
              h: 16,
            ),
            const LoadingIndicatorWidget(),
          ],
        ),
      ),
    );
  }
}

Future<void> changeBranch(
  BuildContext context,
  Branch item,
) async {
  ChangingBranchDialog(branch: item);
  // showDialog(
  //   context: context,
  //   barrierDismissible: false,
  //   builder: (BuildContext context) {
  //     return ChangingBranchDialog(branch: item);
  //   },
  // );

  // Simulate a network request or any async task
  await Get.find<BranchesController>().setCurrentBranch(item);
  await Get.find<DayTripsController>().fetchData();
  await Get.find<CustomerProductsController>().getProductList();
  await Get.find<AllWeekTripsController>().fetchData();
  await Get.find<AllOrdersController>().fetchData();
  await Get.find<DrawerCustomerController>().infoAccessTimeModel();

  // Close the dialog
  // Get.back();
}
