import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/models/customer_model.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/shared/widgets/custom_app_bar.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/bottom_sheet_widget.dart';
import '../all_customers/all_customers_controller.dart';
import '../widgets/customer_info_tile.dart';

class CustomerProfile extends StatefulWidget {
  final CustomerModel customerModel;

  const CustomerProfile({super.key, required this.customerModel});

  @override
  State<CustomerProfile> createState() => _CustomerProfileState();
}

class _CustomerProfileState extends State<CustomerProfile> {
  late CustomerModel customer;

  @override
  void initState() {
    super.initState();
    customer = widget.customerModel;
  }

  @override
  Widget build(BuildContext context) {
    // String phoneNumbers = '';
    //
    // // Build the phone numbers string
    // if (customer.contacts != null && customer.contacts!.isNotEmpty) {
    //   phoneNumbers = customer.contacts![0].phoneNumber ?? '';
    //   if (customer.contacts!.length > 1 &&
    //       customer.contacts![1].phoneNumber != null) {
    //     phoneNumbers += ' - ${customer.contacts![1].phoneNumber}';
    //   }
    // }

    return GetBuilder<AllCustomersController>(
      init: AllCustomersController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: background,
          appBar: CustomAppBar(
            title: customer.name,
            actionsList: [
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (builder) {
                      return BottomSheetWidget(
                        customer: customer,
                        type: 'profile',
                      );
                    },
                  );
                },
                icon: Icon(
                  Icons.more_vert,
                  size: 24,
                  color: iconColor,
                ),
              ),
              SizedBox(width: 12.w),
            ],
          ),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 32.h),
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
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      customer.name,
                      style: MyDecorations.textStyle600(primary, 16),
                    ),
                    Text(
                      customer.customerTypeAr,
                      style: MyDecorations.textStyle500(secondary, 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              CustomerInfoTile(
                title: 'اسم المستخدم',
                subtitle: customer.userName,
                icon: RichFoodIcons.person,
              ),
              CustomerInfoTile(
                title: 'كلمة السر',
                subtitle: customer.userPassword.password,
                icon: RichFoodIcons.lock,
              ),
              CustomerInfoTile(
                title: 'أرقام التواصل',
                subtitle: customer.contacts != null &&
                        customer.contacts!.isNotEmpty
                    ? (customer.contacts!.length > 1 &&
                            customer.contacts![1].phoneNumber != null
                        ? '${customer.contacts![0].phoneNumber ?? ''} - ${customer.contacts![1].phoneNumber}'
                        : customer.contacts![0].phoneNumber ?? '')
                    : '',
                icon: RichFoodIcons.phone,
              ),
              CustomerInfoTile(
                title: 'الموقع',
                subtitle:
                    "${customer.address != null ? customer.address.area : ""} - ${customer.location!}",
                icon: RichFoodIcons.location,
              ),
            ],
          ),
        );
      },
    );
  }
}
