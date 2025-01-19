import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/sales_man/features/customers/all_customers/all_customers_controller.dart';
import 'package:rich_food/modules/sales_man/models/customer_model.dart';
import 'package:rich_food/modules/sales_man/features/customers/widgets/customer_card.dart';
import 'package:rich_food/shared/widgets/snackBar.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/loading_indicator.dart';
import '../../../../../shared/widgets/my_error_widget.dart';
import '../../../../../shared/widgets/no_data_frizo/no_data_general.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../add_customer/add_customer_screen.dart';
import '../view_customer/view_customer_screen.dart';

class AllCustomersScreen extends StatefulWidget {
  const AllCustomersScreen({super.key});

  @override
  State<AllCustomersScreen> createState() => _AllCustomersScreenState();
}

class _AllCustomersScreenState extends State<AllCustomersScreen> {
  final GetStorage storage = GetStorage();

  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.clear();
    Get.find<AllCustomersController>().filteredCustomersList =
        Get.find<AllCustomersController>().customersList;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool createPermission = storage.read(CacheKeys.createPermission);
    Get.find<AllCustomersController>().isNoOrders = false;

    return GetBuilder<AllCustomersController>(
        init: AllCustomersController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: background,
            appBar: PreferredSize(
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
                    child: TextFormField(
                      controller: _searchController,
                      onChanged: (text) {
                        Get.find<AllCustomersController>().runFilter(text);
                      },
                      cursorColor: grey,
                      decoration: MyDecorations.searchInputDecoration(
                        icon: Icon(
                          Icons.search,
                          color: secondary,
                          size: 20,
                        ),
                        hint: "بحث",
                      ),
                      style: TextStyle(
                        color: secondary,
                        fontSize: 12.w,
                      ),
                    )),
              ),
            ),
            body: Builder(
              builder: (_) {
                if (controller.isLoadingCustomersList) {
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
                      if (controller.filteredCustomersList.isEmpty) {
                        return const NoDataGeneralWidget(
                          message: 'لا يوجد زبائن لعرضها',
                        );
                      }
                      return ListView.separated(
                        itemCount: controller.filteredCustomersList.length,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 12.h);
                        },
                        itemBuilder: (BuildContext context, int index) {
                          CustomerModel customer =
                              controller.filteredCustomersList[index];
                          String phoneNumbers = '';
                          if (customer.contacts != null &&
                              customer.contacts!.isNotEmpty) {
                            phoneNumbers =
                                customer.contacts![0].phoneNumber ?? '';
                            if (customer.contacts!.length > 1 &&
                                customer.contacts![1].phoneNumber != null) {
                              phoneNumbers +=
                                  ' - ${customer.contacts![1].phoneNumber}';
                            }
                          }
                          return GestureDetector(
                            onTap: () {
                              Get.to(() => CustomerProfile(
                                    customerModel: customer,
                                  ));
                            },
                            child: CustomerCard(
                              customer: customer,
                              isShowIcon: true,
                            ),
                          );
                        },
                      );
                    }));
              },
            ),
            floatingActionButton: FloatingActionButton(
                elevation: 0.0,
                onPressed: () {
                  createPermission == true
                      ? Get.to(() => const AddCustomerScreen())
                      : showMessage("لا يمكنك إضافة زبون", false);
                },
                backgroundColor: blueTheme,
                child: Icon(
                  Icons.add,
                  color: white,
                  size: 28.w,
                )),
          );
        });
  }
}
