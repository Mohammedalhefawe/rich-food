import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../styles/colors.dart';

class MenuItemModel {
  final String text;
  final IconData icon;
  final Color? widgetColor;

  MenuItemModel({required this.text, required this.icon, this.widgetColor});
}

// Function to build a PopupMenuItem for a given item
PopupMenuItem<MenuItemModel> buildItem(MenuItemModel item,
        {bool? isGrey = true}) =>
    PopupMenuItem<MenuItemModel>(
      value: item,
      child: Row(
        children: [
          Icon(item.icon, color: isGrey == true ? lightGrey : grey, size: 12),
          SizedBox(width: 7.w),
          Text(item.text,
              style: TextStyle(
                  color: isGrey == true ? lightGrey : grey, fontSize: 12.w)),
        ],
      ),
    );
