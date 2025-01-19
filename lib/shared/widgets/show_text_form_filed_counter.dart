import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

class ShowTextFormFiledCounter extends StatelessWidget {
  final controller;
  const ShowTextFormFiledCounter({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (controller.isWritByKeyboard) {
          controller.changeStateKeyboard();
          return false;
        }

        return true;
      },
      child: Visibility(
        visible: controller.isWritByKeyboard,
        child: Container(
          height: 50.h,
          margin: EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          decoration: BoxDecoration(
              color: whiteTheme, borderRadius: BorderRadius.circular(20.r)),
          child: TextFormField(
            // initialValue: '1',
            onTapOutside: (event) {
              if (controller.isWritByKeyboard) {
                controller.changeStateKeyboard();
              }
              FocusScope.of(context).unfocus();
            },
            onFieldSubmitted: (value) {
              if (controller.isWritByKeyboard) {
                controller.changeStateKeyboard();
              }
              FocusScope.of(context).unfocus();
            },
            autofocus: true,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            keyboardType: TextInputType.number,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: primary,
              fontSize: 12,
              fontFamily: MyDecorations.myFont,
              fontWeight: FontWeight.w500,
            ),
            onChanged: (value) {
              if (value == '') {
                controller.setQuantity(controller.currentCartItemModel, 0);
              } else {
                controller.setQuantity(
                    controller.currentCartItemModel, int.parse(value));
              }
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
