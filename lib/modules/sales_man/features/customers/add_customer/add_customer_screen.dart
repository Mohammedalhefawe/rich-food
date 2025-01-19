import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/customers/all_customers/all_customers_controller.dart';
import 'package:rich_food/shared/widgets/custom_app_bar.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/dialog/select_type_to_addCustomer_dialog.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/styles/rich_food_icons.dart';
import '../../../../../shared/widgets/gap.dart';
import '../widgets/area_selection_to_addCustomer_widget.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../widgets/add_customer_footer.dart';
import 'add_customer_controller.dart';

class AddCustomerScreen extends StatefulWidget {
  const AddCustomerScreen({super.key});

  @override
  State<AddCustomerScreen> createState() => _AddCustomerScreenState();
}

class _AddCustomerScreenState extends State<AddCustomerScreen> {
  late TextEditingController nameController;
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  late TextEditingController locationDetailsController;
  late TextEditingController typeController = TextEditingController();
  late TextEditingController regionController = TextEditingController();
  List<TextEditingController> phonNumberControllers = [];

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    locationDetailsController = TextEditingController();
    addInitialTextField();
  }

  @override
  void dispose() {
    nameController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    locationDetailsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: const CustomAppBar(title: "إضافة زبون"),
      body: GetBuilder<AddCustomerController>(
        builder: (AddCustomerController controller) {
          return Form(
            key: _formKey,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          buildInputField(
                              controller: nameController,
                              label: 'الاسم',
                              hintText: 'اسم'),
                          SizedBox(height: 12.h),
                          buildInputField(
                              controller: usernameController,
                              label: 'اسم المستخدم',
                              hintText: 'اسم المستخدم'),
                          SizedBox(height: 12.h),
                          buildInputField(
                              controller: passwordController,
                              label: 'كلمة السر',
                              hintText: 'كلمة السر'),
                          SizedBox(height: 12.h),
                          buildDropdownField(
                              controller: typeController,
                              label: 'تحديد النوع',
                              hintText: controller.type),
                          SizedBox(height: 12.h),
                          buildContactField(),
                          SizedBox(height: 12.h),
                          buildDropdownField(
                              controller: regionController,
                              label: 'المنطقة',
                              hintText: controller.region),
                          SizedBox(height: 12.h),
                          buildInputField(
                              controller: locationDetailsController,
                              label: 'تفاصيل الموقع',
                              hintText: 'تفاصيل الموقع'),
                        ],
                      ),
                    ),
                  ),
                ),
                AddCustomerFooter(
                  onTap: () {
                    print(typeController.text);
                    print(regionController.text);
                    if (_formKey.currentState!.validate()) {
                      List<String> phoneNumbers = phonNumberControllers
                          .map((controller) => controller.text)
                          .toList();
                      controller
                          .addCustomer(
                        nameController.text,
                        usernameController.text,
                        passwordController.text,
                        locationDetailsController.text,
                        controller.type == "جملة" ? "center" : "shop",
                        phoneNumbers,
                        controller.regionId,
                      )
                          .then(
                        (value) {
                          if (value) {
                            Get.back();
                            showMessage('تم إضافة الزبون بنجاح', true);
                            Get.find<AllCustomersController>().fetchData();
                            // Get.off(()=>AllCustomersScreen());
                            controller.type = "النوع";
                            controller.region = "المنطقة";
                            // Get.back();
                            // Get.back();
                          }
                        },
                      );
                    }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildInputField(
      {required TextEditingController controller,
      required String label,
      required String hintText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            label == "اسم المستخدم"
                ? Icon(
                    RichFoodIcons.person_filled,
                    size: 20.w,
                    color: iconColor,
                  )
                : label == "كلمة السر"
                    ? Icon(
                        RichFoodIcons.lock_filled,
                        color: iconColor,
                        size: 20.w,
                      )
                    : label == "تفاصيل الموقع"
                        ? Icon(
                            Icons.location_on_rounded,
                            size: 18,
                            color: iconColor,
                          )
                        : const SizedBox(),
            SizedBox(
              width: 2.w,
            ),
            Text(label, style: MyDecorations.textStyle500(primary, 14)),
          ],
        ),
        SizedBox(height: 8.h),
        SizedBox(
          width: 336.w,
          child: TextFormField(
            style: TextStyle(color: secondary),
            controller: controller,
            keyboardType: TextInputType.text,
            decoration: MyDecorations.myInputDecoration3(
              hint: hintText,
            ),
            // onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
            validator: (value) {
              if (label == "الاسم" && (value == null || value.isEmpty)) {
                return 'الرجاء إدخال الاسم ';
              } else if (label == "اسم المستخدم" &&
                  (value == null || value.isEmpty)) {
                return 'الرجاء إدخال اسم المستخدم';
              } else if (label == "تفاصيل الموقع" &&
                  (value == null || value.isEmpty)) {
                return 'الرجاء إدخال الموقع ';
              } else if (label == "كلمة السر" &&
                  (value == null || value.isEmpty)) {
                return 'الرجاء إدخال كلمة السر';
              } else if (label == "كلمة السر" &&
                  (value == null || value.length < 8)) {
                return 'الحد الأدنى لكلمة السر هو ۸ محارف';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }

  Widget buildDropdownField({
    required TextEditingController controller,
    required String label,
    required String hintText,
  }) {
    return GetBuilder<AddCustomerController>(
        builder: (AddCustomerController con) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (label == "المنطقة")
                Icon(
                  Icons.location_on_rounded,
                  size: 18,
                  color: iconColor,
                ),
              if (label == "المنطقة") const Gap(w: 2),
              Text(
                label,
                style: MyDecorations.textStyle500(primary, 14),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          GestureDetector(
            onTap: () {
              print(hintText);
              if (label == "المنطقة") {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const AreaSelectionToAddWidget();
                  },
                );
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const SelectTypeToAddCustomerDialog();
                  },
                );
              }
            },
            child: AbsorbPointer(
              child: TextFormField(
                controller: controller,
                readOnly: true,
                decoration: MyDecorations.myInputDecoration3(
                  hint: label == "المنطقة" ? con.region : con.type,
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 20.w,
                    color: secondary,
                  ),
                ),
                validator: (value) {
                  if (label == "تحديد النوع" && con.type == "النوع") {
                    return 'الرجاء إدخال النوع';
                  } else if (label == "المنطقة" && con.region == "المنطقة") {
                    return 'الرجاء إدخال المنطقة';
                  }
                  return null;
                },
              ),
            ),
          ),
        ],
      );
    });
  }

  void addInitialTextField() {
    TextEditingController controller = TextEditingController();
    phonNumberControllers.add(controller);
  }

  Widget buildTextField(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              // height: 43.h,
              width: 336.w,
              child: TextFormField(
                style: TextStyle(color: secondary),
                controller: phonNumberControllers[index],
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: MyDecorations.myInputDecoration3(
                  hint: "رقم للتواصل",
                  suffix: (phonNumberControllers.length > 1)
                      ? InkWell(
                          child: Icon(
                            RichFoodIcons.delete2,
                            size: 18.w,
                            color: iconColor,
                          ),
                          onTap: () {
                            setState(() {
                              phonNumberControllers.removeAt(index);
                            });
                          },
                        )
                      : const SizedBox(),
                ),
                onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'الرجاء إدخال رقم للتواصل';
                  } else if (value.length < 10) {
                    return 'الرجاء إدخال رقم صحيح';
                  }
                  return null;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void addTextField() {
    TextEditingController controller = TextEditingController();
    setState(() {
      phonNumberControllers.add(controller);
    });
  }

  Widget buildContactField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.phone_enabled,
              size: 18.w,
              color: iconColor,
            ),
            SizedBox(
              width: 2.w,
            ),
            Text("أرقام التواصل",
                style: MyDecorations.textStyle500(primary, 14)),
          ],
        ),
        ...List.generate(
            phonNumberControllers.length, (index) => buildTextField(index)),
        if (phonNumberControllers.length < 2)
          Column(
            children: [
              SizedBox(height: 8.h),
              InkWell(
                onTap: addTextField,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.add,
                      size: 18.w,
                      color: iconColor,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'إضافة رقم',
                      style: MyDecorations.textStyle400(primary, 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        // SizedBox(height: 10.h),
      ],
    );
  }
}
