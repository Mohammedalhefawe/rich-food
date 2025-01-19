import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/customer/features/view_customer/view_customer_controller.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/shared/widgets/custom_app_bar.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../shared/widgets/loading_indicator.dart';
import '../../../../shared/widgets/my_error_widget.dart';
import '../../../sales_man/features/customers/widgets/customer_info_tile.dart';

class CustomerProfileForCustomer extends StatelessWidget {
  const CustomerProfileForCustomer({
    super.key,
    required this.customerName,
  });
  final String customerName;
  @override
  Widget build(BuildContext context) {
    // CustomerProfileController controller =
    //     Get.find<CustomerProfileController>();
    // CustomerModelForCustomer customerModel = controller.userInfo;

    return Scaffold(
      backgroundColor: background,
      appBar: CustomAppBar(
        title: customerName,
      ),
      body: GetBuilder<CustomerProfileController>(builder: (controller) {
        String phoneNumbers = '';

        // Build the phone numbers string
        if (controller.userInfo.contacts != null &&
            controller.userInfo.contacts!.isNotEmpty) {
          phoneNumbers = controller.userInfo.contacts![0].phoneNumber ?? '';
          if (controller.userInfo.contacts!.length > 1 &&
              controller.userInfo.contacts![1].phoneNumber != null) {
            phoneNumbers +=
            ' - ${controller.userInfo.contacts![1].phoneNumber}';
          }
        }
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
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 32.h,
                    ),
                    Center(
                      child: Container(
                        width: 52.w,
                        height: 52.h,
                        decoration: const ShapeDecoration(
                          color: Color(0x3F73A3D0),
                          shape: CircleBorder(),
                        ),
                        child: Center(
                          child: Text(
                            controller.userInfo.name.characters.first,
                            style: TextStyle(
                              color: blueTheme,
                              fontSize: 16.w,
                              fontFamily: MyDecorations.myFont,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(controller.userInfo.name,
                        style: MyDecorations.textStyle600(primary, 16)),
                    Text(controller.userInfo.customerTypeAr,
                        style: MyDecorations.textStyle500(secondary, 14)),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              CustomerInfoTile(
                title: 'اسم المستخدم',
                subtitle: controller.userInfo.userName,
                icon: RichFoodIcons.person,
              ),
              CustomerInfoTile(
                title: 'كلمة السر',
                subtitle: controller.userInfo.userPassword.password,
                icon: RichFoodIcons.lock,
              ),
              CustomerInfoTile(
                title: 'ارقام التواصل',
                subtitle: phoneNumbers,
                icon: RichFoodIcons.phone,
              ),
              CustomerInfoTile(
                title: 'الموقع',
                subtitle: (
                    (controller.userInfo.address != null
                        ? " ${controller.userInfo.address?.area}"
                        : "")+" - "+controller.userInfo.location! ),
                icon: RichFoodIcons.location,
              ),
            ],
          ),
        );
      }),
    );
  }
}
