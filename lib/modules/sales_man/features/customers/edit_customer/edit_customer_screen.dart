import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rich_food/shared/widgets/custom_app_bar.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/dialog/select_type_to_editCustomer_dialog.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/styles/rich_food_icons.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../widgets/area_selection_to_editCustomer_widget.dart';
import '../../../models/customer_model.dart';
import '../all_customers/all_customers_controller.dart';
import '../widgets/edit_customer_footer.dart';
import 'edit_customer_controller.dart';

class EditCustomerScreen extends StatefulWidget {
  final CustomerModel customer;
  final Function(CustomerModel) onCustomerUpdated;

  const EditCustomerScreen(
      {super.key, required this.customer, required this.onCustomerUpdated});

  @override
  State<EditCustomerScreen> createState() => _EditCustomerScreenState();
}

class _EditCustomerScreenState extends State<EditCustomerScreen> {
  late TextEditingController nameController = TextEditingController();
  late TextEditingController usernameController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  late TextEditingController locationDetailsController =
      TextEditingController();
  List<TextEditingController> phonNumberControllers = [];

  final EditCustomerController controller = Get.find();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        nameController.text = widget.customer.name ?? "";
        usernameController.text = widget.customer.userName ?? "";
        passwordController.text = widget.customer.userPassword.password;
        locationDetailsController.text = widget.customer.location ?? "";
        controller.region = widget.customer.address.area ?? "";
        controller.regionId = widget.customer.address.id!;
        controller.type = widget.customer.customerType == "shop"
            ? "مفرق"
            : widget.customer.customerType == "center"
                ? "جملة"
                : "";

        if (widget.customer.contacts != null &&
            widget.customer.contacts!.isNotEmpty) {
          for (var contact in widget.customer.contacts!) {
            TextEditingController phoneController =
                TextEditingController(text: contact.phoneNumber);
            phonNumberControllers.add(phoneController);
          }
        } else {
          // Ensure at least one phone number field is present
          addInitialTextField();
        }
      });
    });
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
        appBar: const CustomAppBar(title: "تعديل زبون"),
        body: GetBuilder<EditCustomerController>(
          builder: (EditCustomerController controller) {
            return Column(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formKey,
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
                                label: 'تحديد النوع',
                                hintText: controller.type),
                            SizedBox(height: 12.h),
                            buildContactField(),
                            SizedBox(height: 0.h),
                            buildDropdownField(
                                label: 'المنطقة', hintText: controller.region),
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
                ),
                EditCustomerFooter(onTap: () {
                  if (_formKey.currentState!.validate()) {
                    List<String> phoneNumbers = phonNumberControllers
                        .map((controller) => controller.text)
                        .toList();
                    controller
                        .editCustomer(
                      widget.customer.id,
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
                          // تحديث بيانات العميل في شاشة CustomerProfile
                          widget.customer.name = nameController.text;
                          widget.customer.userName = usernameController.text;
                          widget.customer.userPassword.password =
                              passwordController.text;
                          widget.customer.location =
                              locationDetailsController.text;
                          widget.customer.customerType =
                              controller.type == "جملة" ? "center" : "shop";
                          widget.customer.contacts = phoneNumbers
                              .map((number) => Contact(phoneNumber: number))
                              .toList();
                          widget.customer.address.area = controller.region;

                          // استدعاء دالة التحديث
                          widget.onCustomerUpdated(widget.customer);
                          Get.find<AllCustomersController>().fetchData();
                          Get.back();
                          Get.back();
                          showMessage("تم تعديل معلومات الزبون بنجاح", true);
                        }
                      },
                    );
                  }
                }),
              ],
            );
          },
        ));
  }

  Widget buildTextField(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                      ? GestureDetector(
                          child: Icon(
                            RichFoodIcons.delete2,
                            size: 18,
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
              size: 18,
              color: iconColor,
            ),
            SizedBox(width: 2.w),
            Text("أرقام التواصل",
                style: MyDecorations.textStyle500(primary, 14)),
          ],
        ),
        ...List.generate(
            phonNumberControllers.length, (index) => buildTextField(index)),
        SizedBox(height: 6.h),
        if (phonNumberControllers.length < 2)
          GestureDetector(
            onTap: addTextField,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.add,
                  size: 18,
                  color: iconColor,
                ),
                SizedBox(width: 8.w),
                Text('إضافة رقم',
                    style: MyDecorations.textStyle400(primary, 12)),
              ],
            ),
          ),
        SizedBox(height: 10.h),
      ],
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
                    size: 20,
                    color: iconColor,
                  )
                : label == "كلمة السر"
                    ? Icon(
                        RichFoodIcons.lock_filled,
                        size: 20,
                        color: iconColor,
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
          // height: 43.h,
          width: 336.w,
          child: TextFormField(
            style: TextStyle(color: secondary),
            controller: controller,
            keyboardType: TextInputType.text,
            decoration: MyDecorations.myInputDecoration3(
              hint: hintText,
            ),
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
                  (value == null || value.length <= 8)) {
                return 'الحد الأدنى لكلمة السر هو ۸ محارف';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }

  Widget buildDropdownField({required String label, required String hintText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            label == "المنطقة"
                ? Icon(
                    Icons.location_on_rounded,
                    size: 18,
                    color: iconColor,
                  )
                : const SizedBox(),
            SizedBox(
              width: 2.w,
            ),
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
            label == "المنطقة"
                ? showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const AreaSelectionToEditWidget();
                    },
                  )
                : showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const SelectTypeToEditCustomerDialog();
                    },
                  );
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: lightGrey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    hintText,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: secondary,
                    ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 20.sp,
                  color: secondary,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void addInitialTextField() {
    if (phonNumberControllers.isEmpty) {
      TextEditingController controller = TextEditingController();
      phonNumberControllers.add(controller);
    }
  }
}
