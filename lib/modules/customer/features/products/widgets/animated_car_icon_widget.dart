import 'package:flutter/material.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

class AnimatedCarIconWidget extends StatefulWidget {
  final int? second;
  final VoidCallback voidCallback;
  const AnimatedCarIconWidget(
      {super.key, this.second, required this.voidCallback});

  @override
  _AnimatedCarIconState createState() => _AnimatedCarIconState();
}

class _AnimatedCarIconState extends State<AnimatedCarIconWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  final bool _actionExecuted = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: widget.second ?? 3),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _onAnimationComplete();
        }
      });

    _controller.forward();
  }

  void _onAnimationComplete() {
    print('Animation completed');
    widget.voidCallback();
    // Call your method here
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 272.w,
        height: 12.h,
        decoration: BoxDecoration(
          color: grey,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            //
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: _animation.value * (272.w - 0.2),
                    height: 12.h,
                    decoration: BoxDecoration(
                      color: blueTheme,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                );
              },
            ),
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Positioned(
                  left: _animation.value * (272.w),
                  top: -17.h,
                  child: child!,
                );
              },
              child: Opacity(
                opacity: 1.0,
                child: Icon(
                  RichFoodIcons.car_filled,
                  size: 30,
                  color: blueTheme,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
