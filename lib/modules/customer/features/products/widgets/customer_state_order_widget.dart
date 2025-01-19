import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/shared/styles/theme/app_theme.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

class CustomerStateOrderWidget extends StatelessWidget {
  final bool isHaveOrder;
  final String? textTime;
  final bool? typeTow;
  const CustomerStateOrderWidget(
      {super.key,
      required this.isHaveOrder,
      this.textTime,
      this.typeTow = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      width: 336.w,
      height: 51.h,
      decoration: BoxDecoration(
        color: isHaveOrder
            ? (AppTheme.isDark ? accent.withOpacity(0.2) : accent)
            : const Color.fromARGB(63, 206, 52, 70),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(
        child: isHaveOrder
            ? CustomMarquee(
                typeTow: typeTow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'وقت الوصول المتوقع للمندوب : ',
                      style: MyDecorations.textStyle600(blueTheme, 12.sp),
                    ),
                    Text(
                      textTime!,
                      style: MyDecorations.textStyle600(blueTheme, 12.sp),
                    ),
                    Gap(
                      w: 5.w,
                    ),
                    Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(3.14159),
                        child: Icon(RichFoodIcons.car, color: blueTheme)),
                  ],
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'لا يوجد رحلة لمنطقتك في الوقت الحالي',
                    style: MyDecorations.textStyle600(red, 12),
                  ),
                  Gap(
                    w: 7.w,
                  ),
                  Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(3.14159),
                      child: const Icon(RichFoodIcons.car, color: red)),
                ],
              ),
      ),
    );
  }
}

class CustomMarquee extends StatefulWidget {
  final Widget child;
  final bool? typeTow;
  const CustomMarquee({
    super.key,
    required this.child,
    this.typeTow = false,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomMarqueeState createState() => _CustomMarqueeState();
}

class _CustomMarqueeState extends State<CustomMarquee>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _animationController;
  late double _maxScrollExtent;
  late double _scrollWidth;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );

    _animationController.addListener(() {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_animationController.value * _maxScrollExtent);
      }
    });

    _animationController.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        Timer(const Duration(seconds: 2), () {
          if (mounted) {
            _animationController.reset();

            _animationController.forward();
          }
        });
        // await Future.delayed(const Duration(seconds: 2)).then((value) {
        //   try {
        //     _animationController.reset();
        //   } catch (e) {
        //     print(e);
        //   }
        //   _animationController.forward();
        // });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => _startScrolling());
  }

  void _startScrolling() {
    final renderBox = context.findRenderObject() as RenderBox;
    _scrollWidth = renderBox.size.width;
    _maxScrollExtent = _scrollController.position.maxScrollExtent;
    _animationController.duration =
        Duration(seconds: (_maxScrollExtent / 80).round());
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          reverse: true,
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.typeTow == true) SizedBox(width: 40.w),
              widget.child,
              SizedBox(width: 40.w),
              widget.child,
              if (!AppTheme.isDark == true) SizedBox(width: 10.w),
              SizedBox(width: 30.w),
            ],
          ),
        );
      },
    );
  }
}
