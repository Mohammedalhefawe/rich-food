import 'package:flutter/material.dart';
import 'package:rich_food/modules/sales_man/models/customer_model.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/shared/widgets/bottom_sheet_widget.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/utils/services/format_phone_numbers.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../all_customers/all_customers_controller.dart';

class CustomerCard extends StatelessWidget {
  final CustomerModel customer;
  final bool isShowIcon;
  CustomerCard({
    super.key,
    required this.customer,
    required this.isShowIcon,
  });
  late AllCustomersController controller;
  void updateCustomerInfo(CustomerModel updatedCustomer) {
    controller.updateCustomer(updatedCustomer);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336.w,
      height: 128.h,
      margin: EdgeInsetsDirectional.only(start: 12.h, end: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 7,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
        color: base,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: const ShapeDecoration(
                      color: Color(0x3F73A3D0),
                      shape: CircleBorder(),
                    ),
                    child: Center(
                      child: Text(
                        customer.name.characters.first,
                        style: TextStyle(
                          color: blueTheme,
                          fontSize: 16,
                          fontFamily: MyDecorations.myFont,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        customer.name,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: primary,
                          fontSize: 14,
                          fontFamily: MyDecorations.myFont,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        customer.customerTypeAr,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: secondary,
                          fontSize: 12,
                          fontFamily: MyDecorations.myFont,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            RichFoodIcons.location,
                            color: secondary,
                            size: 14,
                          ),
                          const SizedBox(width: 2),
                          SizedBox(
                            width: 203.w,
                            child: Text(
                              "${customer.address.area} - ${customer.location}",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: secondary,
                                fontSize: 12,
                                fontFamily: MyDecorations.myFont,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            RichFoodIcons.phone,
                            color: secondary,
                            size: 14,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            formatPhoneNumbers(customer.contacts),
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: secondary,
                              fontSize: 12,
                              fontFamily: MyDecorations.myFont,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          isShowIcon
              ? Positioned(
                  left: 0.w,
                  top: 0.h,
                  child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (builder) {
                            return BottomSheetWidget(
                              // customer: controller.customerModel=customer,
                              customer: customer,
                              type: 'customersList',
                            );
                          });
                    },
                    icon: const Icon(Icons.more_vert),
                    iconSize: 20,
                    color: secondary,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
