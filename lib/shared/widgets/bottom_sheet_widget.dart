import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/sales_man/models/customer_model.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../modules/sales_man/features/customers/all_customers/all_customers_controller.dart';
import '../../modules/sales_man/features/customers/all_customers/delete_customer_controller.dart';
import '../../modules/sales_man/features/customers/edit_customer/edit_customer_screen.dart';
import '../../utils/helpers/cacheKeys.dart';
import '../dialog/confirmation_dialog.dart';
import '../styles/colors.dart';
import '../styles/rich_food_icons.dart';

class BottomSheetWidget extends StatefulWidget {
  final CustomerModel customer;
  final String type;

  const BottomSheetWidget({
    super.key,
    required this.customer,
    required this.type,
  });

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  ///1,2

  final GetStorage storage = GetStorage();
  late AllCustomersController controller;
  late CustomerModel currentCustomer;

  @override
  void initState() {
    super.initState();
    controller = Get.find<AllCustomersController>();
    currentCustomer = widget
        .customer; // Initialize currentCustomer with the passed customerModel
  }

  void updateCustomerInfo(CustomerModel updatedCustomer) {
    setState(() {
      currentCustomer =
          updatedCustomer; // Update currentCustomer with the updated customer
    });
    controller.updateCustomer(updatedCustomer);
  }

  @override
  Widget build(BuildContext context) {
    final bool deletePermission = storage.read(CacheKeys.deletePermission);
    final bool editPermission = storage.read(CacheKeys.editPermission);
    final int userId = storage.read(CacheKeys.userId);
    return Container(
      width: 360.w,
      height: 146.h,
      padding: EdgeInsets.only(top: 12.h, bottom: 24.h),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.r),
          topRight: Radius.circular(12.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: () {
              Get.to(() => EditCustomerScreen(
                    customer: widget.customer,
                    onCustomerUpdated: updateCustomerInfo,
                  ));
            },
            child: editPermission == false
                ? Container(
                    width: 360.w,
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Icon(
                          RichFoodIcons.create,
                          color: Color.fromRGBO(38, 38, 38, 0.30),
                        ),
                        SizedBox(width: 12.w),
                        Text(
                          'تعديل معلومات الزبون (غير متاح)',
                          style: MyDecorations.textStyle400(
                              const Color.fromRGBO(38, 38, 38, 0.30), 14),
                        ),
                      ],
                    ),
                  )
                : Container(
                    width: 360.w,
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(RichFoodIcons.create, color: primary),
                        SizedBox(width: 12.w),
                        Text(
                          'تعديل معلومات الزبون',
                          style: MyDecorations.textStyle400(primary, 14),
                        ),
                      ],
                    ),
                  ),
          ),
          (deletePermission == true && widget.customer.addedBy == userId)
              ? GetBuilder<DeleteCustomerController>(
                  builder: (DeleteCustomerController controller) {
                    return InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return ConfirmationDialog(
                                title: "حذف زبون",
                                content: "هل تريد بالتأكيد حذف هذا الزبون؟",
                                onConfirm: () {
                                  controller.deleteCustomer(widget.customer.id);
                                  Get.find<AllCustomersController>()
                                      .fetchData();
                                  Get.back();
                                  Get.back();
                                  widget.type == "profile" ? Get.back() : null;
                                },
                                confirmationText: "حذف",
                              );
                            });
                      },
                      child: Container(
                        width: 360.w,
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const Icon(RichFoodIcons.delete, color: red),
                            SizedBox(width: 12.w),
                            Text(
                              'حذف زبون ',
                              style: MyDecorations.textStyle400(red, 14),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              : Container(
                  width: 360.w,
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        RichFoodIcons.delete,
                        color: secondary.withOpacity(0.6),
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        'حذف زبون (غير متاح)',
                        style: MyDecorations.textStyle400(
                            secondary.withOpacity(0.6), 14),
                      ),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
