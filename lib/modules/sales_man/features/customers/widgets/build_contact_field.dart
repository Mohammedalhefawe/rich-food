import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/styles/rich_food_icons.dart';

class buildContactField extends StatefulWidget {
  const buildContactField({super.key});

  @override
  _TextFieldManagerState createState() => _TextFieldManagerState();
}

class _TextFieldManagerState extends State<buildContactField> {
  List<TextEditingController> controllers = [];
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    addInitialTextField();
  }

  void addInitialTextField() {
    TextEditingController controller = TextEditingController();
    controllers.add(controller);
  }

  Widget buildTextField(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 60.h,
              width: 336.w,
              child: TextFormField(
                style: TextStyle(color: secondary),
                controller: controllers[index],
                keyboardType: TextInputType.phone,
                decoration: MyDecorations.myInputDecoration3(
                  hint: "رقم للتواصل",
                  suffix: (controllers.length > 1)
                      ? InkWell(
                          child: const Icon(
                            RichFoodIcons.delete2,
                            size: 18,
                          ),
                          onTap: () {
                            setState(() {
                              controllers.removeAt(index);
                            });
                          },
                        )
                      : const SizedBox(),
                ),
                onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
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
      controllers.add(controller);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.phone_enabled,
              size: 18,
            ),
            SizedBox(
              width: 2.w,
            ),
            Text("أرقام التواصل",
                style: MyDecorations.textStyle500(primary, 14)),
          ],
        ),
        ...List.generate(controllers.length, (index) => buildTextField(index)),
        SizedBox(height: 8.h),
        if (controllers.length < 2) ...[
          InkWell(
            onTap: addTextField,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.add,
                  size: 18,
                ),
                SizedBox(width: 8.w),
                Text(
                  'إضافة رقم',
                  style: MyDecorations.textStyle400(primary, 12),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
        ]
      ],
    );
  }
}
