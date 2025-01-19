import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/drawer/drawer_salesman_controller.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

class RadioListGeneratorSalesman extends StatefulWidget {
  const RadioListGeneratorSalesman({
    super.key,
    required this.buttonIcon,
    required this.buttonName,
    required this.visibilityWidget,
  });

  final IconData buttonIcon;
  final String buttonName;
  final Widget visibilityWidget;

  @override
  State<RadioListGeneratorSalesman> createState() =>
      _RadioListGeneratorSalesmanState();
}

class _RadioListGeneratorSalesmanState
    extends State<RadioListGeneratorSalesman> {
  bool _showList = false;
  // final branchController = Get.find<BranchesController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DrawerSalesmanController>(
      init: DrawerSalesmanController(),
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
                      fontSize: 14.sp,
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
      },
    );
  }
}
