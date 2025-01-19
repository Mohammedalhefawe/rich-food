import 'package:flutter/material.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

class DrawerRadioList extends StatefulWidget {
  const DrawerRadioList(
      {super.key,
      required this.buttonIcon,
      required this.buttonName,
      required this.isSelected,
      required this.firstOption,
      required this.secOption,
      required this.firstFun,
      required this.secFun,
      this.firstIcon,
      this.secIcon,
      this.withPreIcon = false});

  final IconData buttonIcon;
  final String buttonName;
  final String firstOption;
  final String secOption;
  final Function firstFun;
  final Function secFun;
  final bool isSelected;
  final bool? withPreIcon;
  final IconData? firstIcon;
  final IconData? secIcon;
  @override
  State<DrawerRadioList> createState() => _DrawerRadioListState();
}

class _DrawerRadioListState extends State<DrawerRadioList> {
  bool _showList = false;
  @override
  Widget build(BuildContext context) {
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
                  fontSize: 14.w, fontWeight: FontWeight.w400, color: primary),
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
            child: ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  onTap: () {
                    widget.firstFun();
                  },
                  leading: (widget.withPreIcon ?? false)
                      ? Icon(
                          widget.firstIcon,
                          size: 20,
                        )
                      : null,
                  title: Text(
                    widget.firstOption,
                    style: TextStyle(
                        fontSize: 12.w,
                        fontWeight: FontWeight.w400,
                        color: !widget.isSelected ? blueTheme : primary),
                  ),
                  trailing: Padding(
                    padding: EdgeInsetsDirectional.only(start: 37.w),
                    child: !widget.isSelected
                        ? const SelectedIcon()
                        : const UnSelectedIcon(),
                  ),
                ),
                ListTile(
                  onTap: () {
                    widget.secFun();
                  },
                  leading: (widget.withPreIcon ?? false)
                      ? Icon(
                          widget.secIcon,
                          size: 20,
                        )
                      : null,
                  title: Text(
                    widget.secOption,
                    style: TextStyle(
                        fontSize: 12.w,
                        fontWeight: FontWeight.w400,
                        color: widget.isSelected ? blueTheme : primary),
                  ),
                  trailing: Padding(
                    padding: EdgeInsetsDirectional.only(start: 37.w),
                    child: widget.isSelected
                        ? const SelectedIcon()
                        : const UnSelectedIcon(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UnSelectedIcon extends StatelessWidget {
  const UnSelectedIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.radio_button_off_outlined,
      color: primary,
      size: 15,
    );
  }
}

class SelectedIcon extends StatelessWidget {
  const SelectedIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.radio_button_checked_outlined,
      color: blueTheme,
      size: 15,
    );
  }
}
