import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/customer/features/prices/price_list_controller.dart';
import 'package:rich_food/modules/customer/features/prices/widgets/prices_card.dart';
import 'package:rich_food/shared/widgets/loading_indicator.dart';
import 'package:rich_food/shared/widgets/my_error_widget.dart';
import 'package:rich_food/shared/widgets/no_data_frizo/no_data_general.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/custom_app_bar.dart';
import '../../../sales_man/models/price_model.dart';

class CustomerPriceScreen extends StatelessWidget {
  CustomerPriceScreen({super.key});

  final CustomerPriceListController controller =
      Get.find<CustomerPriceListController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: CustomAppBar(
        title: 'نشرة الأسعار',
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
                onChanged: (value) {
                  controller.runFilter(value);
                },
                cursorColor: grey,
                decoration: MyDecorations.searchInputDecoration(
                  icon: Icon(
                    Icons.search,
                    size: 20,
                    color: secondary,
                  ),
                  hint: "بحث",
                ),
                style: TextStyle(
                  color: primary,
                  fontSize: 12.w,
                ),
              ),
            ),
          ),
        ),
      ),
      body: GetBuilder<CustomerPriceListController>(
        builder: (controller) {
          if (controller.isLoading) {
            return const LoadingIndicatorWidget();
          }
          if (controller.isError) {
            return MyErrorWidget(
              onTapped: controller.fetchData,
            );
          }
          return RefreshIndicator(
              color: blueTheme,
              onRefresh: controller.fetchData,
              child: Builder(builder: (_) {
                if (controller.filteredPriceList.isEmpty) {
                  return const NoDataGeneralWidget(
                    message: 'لا يوجد أسعار لعرضها',
                  );
                }
                return ListView.separated(
                  itemCount: controller.filteredPriceList.length,
                  itemBuilder: (BuildContext context, int index) {
                    PriceModel priceModel = controller.filteredPriceList[index];
                    return CustomerPriceCard(priceModel);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                        height: 3.h,
                        child: Divider(
                          color: grey,
                        ));
                  },
                );
              }));
        },
      ),
    );
  }
}
