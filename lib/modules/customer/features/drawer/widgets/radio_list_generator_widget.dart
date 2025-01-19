import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:rich_food/modules/customer/features/drawer/drawer_customer_controller.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

class RadioListGeneratorForCustomer extends StatefulWidget {
  const RadioListGeneratorForCustomer({
    super.key,
    required this.buttonIcon,
    required this.buttonName,
    required this.visibilityWidget,
  });

  final IconData buttonIcon;
  final String buttonName;
  final Widget visibilityWidget;

  @override
  State<RadioListGeneratorForCustomer> createState() =>
      _RadioListGeneratorForCustomerState();
}

class _RadioListGeneratorForCustomerState
    extends State<RadioListGeneratorForCustomer> {
  bool _showList = false;
  // final branchController = Get.find<BranchesController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DrawerCustomerController>(
        init: DrawerCustomerController(),
        builder: (controller) {
          return SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  onTap: () {
                    setState(() {
                      _showList = !_showList;
                    });
                  },
                  leading: Icon(
                    widget.buttonIcon,
                    color: primary,
                    size: 24,
                  ),
                  title: Text(
                    widget.buttonName,
                    style: TextStyle(
                        fontSize: 14.w,
                        fontWeight: FontWeight.w400,
                        color: primary),
                  ),
                  trailing: Icon(
                    _showList
                        ? Icons.keyboard_arrow_up_outlined
                        : Icons.keyboard_arrow_down_outlined,
                    color: primary,
                    size: 15.sp,
                  ),
                ),
                Visibility(
                  visible: _showList,
                  child: widget.visibilityWidget,
                ),
              ],
            ),
          );
        });
  }
}
