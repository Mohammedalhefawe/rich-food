/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/trips/trip_timer/trip_timer_controller.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/utils/extensions/time_formatter.dart';
import '../../../../../shared/dialog/confirmation_dialog.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';


class TripTimerWidget extends GetView<TripTimerController> {
   TripTimerWidget({
    super.key,
    required this.tripCase,
  });

   TripCase tripCase;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TripTimerController>(
      builder: (controller) {
        if (tripCase.name == 'non') return SizedBox.shrink();
     if (tripCase.name == 'next') return _buildStartButton();
          return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!controller.hasStarted)
                _buildStartButton()
              else
                Wrap(
                  children: [
                    _buildExpandButton(),
                    if (controller.isExpanded) ...[
                      _buildTripInfo(),
                      _buildEndButton(),
                    ],
                    _buildPauseResumeButton(),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildStartButton() {
    return Container(
      width: 58.w,
      height: 56.h,
      decoration: ShapeDecoration(
        color: blueTheme,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: InkWell(
        onTap: () async {
          if (tripCase == TripCase.next && controller.hasStarted) {
            bool result = await showConfirmationDialog(
              content: 'هل انت متأكد من انك تريد انهاء الرحلة السابقة\nوالبدء بالرحلة الجديدة؟',
            );
            if (result) {
              controller.startTrip();
              tripCase = TripCase.current;
            }
          } else {
            controller.startTrip();
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:   [
            Icon(Icons.play_arrow, color: whiteTheme),
            Text(
              'بدء',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: whiteTheme,
                fontSize: 12,
                fontFamily: MyDecorations.myFont,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpandButton() {
    return Container(
      width: 58.w,
      height: 56.h,
      decoration: ShapeDecoration(
        color: blueTheme,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(12),
            left: Radius.zero,
          ),
        ),
      ),
      child: InkWell(
        onTap: () {
          // implement open the counter drawer
          controller.onExpandTimer();
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Expand button icon
            Icon(
                (controller.isExpanded)
                    ? Icons.arrow_forward_ios_rounded
                    : Icons.arrow_back_ios_new_rounded,
                color: base),
          ],
        ),
      ),
    );
  }

  Widget _buildPauseResumeButton() {
    return Container(
      width: 58.w,
      height: 56.h,
      decoration: ShapeDecoration(
        color: blueTheme,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(12),
            right: Radius.zero,
          ),
        ),
      ),
      child: controller.isPlaying
          ? InkWell(
        onTap: () {
          controller.pauseTrip();
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:   [
            // Pause button icon
            Icon(Icons.pause, color: base),
            Text(
              'ايقاف',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: whiteTheme,
                fontSize: 12,
                fontFamily: MyDecorations.myFont,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      )
          : InkWell(
        onTap: () {
          // final breakTime = breakTimer.elapsed.toString().split('.').first.padLeft(8, '0');
          controller.resumeTrip();
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:   [
            // Pause button icon
            Icon(Icons.play_arrow, color: base),
            Text(
              'استئناف',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: whiteTheme,
                fontSize: 12,
                fontFamily: MyDecorations.myFont,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEndButton() {
    return Container(
      width: 58.w,
      height: 56.h,
      decoration: ShapeDecoration(
        color: blueTheme,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.zero,
          ),
        ),
      ),
      child: InkWell(
        onTap: () async {
          bool result = await showConfirmationDialog(content: 'هل انت متأكد من انك تريد انهاء الرحلة؟', );
          if (result) {
            controller.endTrip();
            tripCase = TripCase.non;
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:   [
            // Stop button icon
            Icon(Icons.stop, color: whiteTheme),
            Text(
              'إنهاء',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: whiteTheme,
                fontSize: 12,
                fontFamily: MyDecorations.myFont,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildTripInfo() {
    return Container(
      width: 146.w,
      height: 56.h,
      decoration: ShapeDecoration(
        color: blueTheme,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'وقت الانطلاق: ${controller.startTime?.toFormattedString()}',
            textAlign: TextAlign.center,
            style:   TextStyle(
              color: whiteTheme,
              fontSize: 12,
              fontFamily: MyDecorations.myFont,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
          controller.getFormattedElapsedTime(),
            textAlign: TextAlign.center,
            style:   TextStyle(
              color: whiteTheme,
              fontSize: 12,
              fontFamily: MyDecorations.myFont,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> showConfirmationDialog({required String content}) async {
    return await Get.dialog<bool>(
      ConfirmationCancelDialog(
        content: content,
        onConfirm: () => Get.back(result: true),
        onCancel: () => Get.back(result: false),
        confirmationText: "إنهاء",
        cancelText: "تراجع",
      ),
      barrierDismissible: false,
    ) ?? false;
  }
}*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/trips/trip_timer/trip_timer_controller.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/utils/extensions/time_formatter.dart';
import '../../../../../shared/dialog/confirmation_dialog.dart';
import '../../../../../shared/enums.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';

class TripTimerWidget extends GetView<TripTimerController> {
  const TripTimerWidget({super.key, required this.initTripCase});

  final TripCase initTripCase;

  @override
  Widget build(BuildContext context) {
    Get.find<TripTimerController>().tripCase = initTripCase;
    return GetBuilder<TripTimerController>(
      builder: (controller) {
        if (controller.tripCase.name == 'non') return const SizedBox.shrink();
        if (controller.tripCase.name == 'next') return _buildStartButton();
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!controller.hasStarted)
                _buildStartButton()
              else
                Wrap(
                  children: [
                    _buildExpandButton(),
                    if (controller.isExpanded) ...[
                      _buildTripInfo(),
                      _buildEndButton(),
                    ],
                    _buildPauseResumeButton(),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildStartButton() {
    return Container(
      width: 58.w,
      height: 56.h,
      decoration: ShapeDecoration(
        color: blueTheme,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: InkWell(
        onTap: () async {
          if (controller.tripCase == TripCase.next && controller.hasStarted) {
            bool result = await showConfirmationDialog(
              content:
                  'هل انت متأكد من انك تريد انهاء الرحلة السابقة\nوالبدء بالرحلة الجديدة؟',
            );
            if (result) {
              controller.startTrip();
              controller.tripCase = TripCase.current;
            }
          } else {
            controller.startTrip();
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.play_arrow, color: white),
            Text(
              'بدء',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: white,
                fontSize: 12,
                fontFamily: MyDecorations.myFont,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpandButton() {
    return Container(
      width: 58.w,
      height: 56.h,
      decoration: ShapeDecoration(
        color: blueTheme,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(12),
            left: Radius.zero,
          ),
        ),
      ),
      child: InkWell(
        onTap: () {
          // implement open the counter drawer
          controller.onExpandTimer();
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Expand button icon
            Icon(
                (controller.isExpanded)
                    ? Icons.arrow_forward_ios_rounded
                    : Icons.arrow_back_ios_new_rounded,
                color: white),
          ],
        ),
      ),
    );
  }

  Widget _buildPauseResumeButton() {
    return Container(
      width: 58.w,
      height: 56.h,
      decoration: ShapeDecoration(
        color: blueTheme,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(12),
            right: Radius.zero,
          ),
        ),
      ),
      child: controller.isPlaying
          ? InkWell(
              onTap: () {
                controller.pauseTrip();
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Pause button icon
                  const Icon(Icons.pause, color: white),
                  Text(
                    'ايقاف',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: white,
                      fontSize: 12,
                      fontFamily: MyDecorations.myFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          : InkWell(
              onTap: () {
                // final breakTime = breakTimer.elapsed.toString().split('.').first.padLeft(8, '0');
                controller.resumeTrip();
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Pause button icon
                  const Icon(Icons.play_arrow, color: white),
                  Text(
                    'استئناف',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: white,
                      fontSize: 12,
                      fontFamily: MyDecorations.myFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildEndButton() {
    return Container(
      width: 58.w,
      height: 56.h,
      decoration: ShapeDecoration(
        color: blueTheme,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.zero,
          ),
        ),
      ),
      child: InkWell(
        onTap: () async {
          bool result = await showConfirmationDialog(
            content: 'هل انت متأكد من انك تريد انهاء الرحلة؟',
          );
          if (result) {
            controller.endTrip();
            controller.tripCase = TripCase.non;
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Stop button icon
            const Icon(Icons.stop, color: white),
            Text(
              'إنهاء',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: white,
                fontSize: 12,
                fontFamily: MyDecorations.myFont,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildTripInfo() {
    return Container(
      width: 146.w,
      height: 56.h,
      decoration: ShapeDecoration(
        color: blueTheme,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'وقت الانطلاق: ${controller.startTime?.toFormattedString()}',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: white,
              fontSize: 12,
              fontFamily: MyDecorations.myFont,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            controller.getFormattedElapsedTime(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: white,
              fontSize: 12,
              fontFamily: MyDecorations.myFont,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> showConfirmationDialog({required String content}) async {
    return await Get.dialog<bool>(
          ConfirmationCancelDialog(
            content: content,
            onConfirm: () => Get.back(result: true),
            onCancel: () => Get.back(result: false),
            confirmationText: "إنهاء",
            cancelText: "تراجع",
          ),
          barrierDismissible: false,
        ) ??
        false;
  }
}
