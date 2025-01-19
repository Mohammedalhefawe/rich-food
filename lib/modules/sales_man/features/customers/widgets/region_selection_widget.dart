import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../add_customer/add_customer_controller.dart';
import '../../../../../shared/styles/colors.dart';

class RegionSelectionWidget extends StatefulWidget {
  const RegionSelectionWidget({super.key});

  @override
  State<RegionSelectionWidget> createState() => _RegionSelectionWidgetState();
}

class _RegionSelectionWidgetState extends State<RegionSelectionWidget> {
  int selectedRegionId = -1;
  String selectedRegionName = "";
  List<bool> isSelectedList = [];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddCustomerController>(
      builder: (AddCustomerController controller) {
        // Initialize isSelectedList with the correct length only if it's empty
        if (isSelectedList.isEmpty) {
          isSelectedList =
              List.generate(controller.areaList.length, (index) => false);
        }

        return AlertDialog(
          backgroundColor: background,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: Text(
            'اختر المنطقة',
            textAlign: TextAlign.right,
            style: MyDecorations.textStyle600(black, 14),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 260.w,
                height: 30.h,
                child: TextField(
                  cursorColor: secondary,
                  decoration: MyDecorations.myInputDecoration4(
                    icon: const Icon(
                      Icons.search,
                      size: 15,
                    ),
                    hint: "بحث",
                  ),
                  style: TextStyle(
                    color: primary,
                    fontSize: 12,
                  ),
                  onChanged: (value) {
                    setState(() {
                      controller.runFilter(value);
                    });
                  },
                ),
              ),
              SizedBox(
                height: 180.h,
                child: ListView.separated(
                  padding: EdgeInsetsDirectional.only(top: 3.h),
                  itemCount: controller.filteredAreaList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTileWidget(
                      region: controller.filteredAreaList[index].area,
                      isSelected: isSelectedList[index],
                      onTap: () {
                        setState(() {
                          {
                            for (int i = 0; i < isSelectedList.length; i++) {
                              isSelectedList[i] = (i == index);
                              if (isSelectedList[i]) {
                                selectedRegionId =
                                    controller.filteredAreaList[i].id;
                                selectedRegionName =
                                    controller.filteredAreaList[i].area;
                              }
                            }
                          }
                          {
                            controller.regionId = selectedRegionId;
                            controller.region = selectedRegionName;
                            print("Region ID: ${controller.regionId}");
                            print("Region Name: ${controller.region}");
                            Get.back();
                          }
                        });
                        print("Selected Region ID: $selectedRegionId");
                        print("Selected Region Name: $selectedRegionName");
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 1.h);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ListTileWidget extends StatelessWidget {
  final String region;
  final bool isSelected;
  final Function onTap;

  const ListTileWidget(
      {super.key,
      required this.region,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onTap(),
      title: Text(
        region,
        textAlign: TextAlign.right,
        style: isSelected
            ? MyDecorations.textStyle400(blueTheme, 14)
            : MyDecorations.textStyle400(primary, 14),
      ),
      selectedTileColor: accent,
      selectedColor: blueTheme,
      splashColor: accent,
      selected: isSelected,
    );
  }
}
