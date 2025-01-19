import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/tour/tour_controller.dart';
import 'package:rich_food/modules/sales_man/models/customer_model.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/shared/widgets/no_data_frizo/tour.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../shared/widgets/custom_app_bar.dart';
import '../customers/widgets/customer_card.dart';

class TourScreen extends StatefulWidget {
  const TourScreen({super.key});

  @override
  State<TourScreen> createState() => _TourScreenState();
}

class _TourScreenState extends State<TourScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    Get.put(TourController());
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _scaleAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // After the build is complete, show the dialog
      Future.delayed(Duration.zero, () {
        _animationController.forward();
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return WillPopScope(
              onWillPop: () async {
                print('object');
                Get.back();
                Get.back();
                return false;
              },
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: GetBuilder<TourController>(
                  init: TourController(),
                  builder: (controller) {
                    return TourDialogWidget(
                      controller: controller,
                      widget: controller.index == 0
                          ? CustomStartFloatingActionButton(
                              onTap: () {
                                controller.next();
                              },
                            )
                          : CustomEndFloatingActionButton(
                              index: controller.index,
                              onTap: () {
                                controller.next();
                              },
                            ),
                    );
                  },
                ),
              ),
            );
          },
        );
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: CustomAppBar(
          title: 'اسم المنطقة',
          bottomWidget: PreferredSize(
            preferredSize: Size.fromHeight(60.h),
            child: Container(
              width: 360.w,
              height: 60.h,
              color: background,
              padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 14.w, vertical: 12.h),
              child: SizedBox(
                width: 332.w,
                height: 36.h,
                child: TextField(
                  onChanged: (value) {},
                  cursorColor: grey,
                  decoration: MyDecorations.searchInputDecoration(
                    icon: Icon(
                      Icons.search,
                      size: 20,
                      color: secondary,
                    ),
                    hint: "بحث",
                  ),
                  style: TextStyle(
                    color: primary,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            CustomerModel customer = CustomerModel(
                contacts: [Contact(id: 0, phoneNumber: "099112233")],
                id: 0,
                name: 'Mohammad Ahmad',
                userName: 'userName',
                customerType: 'customerType',
                customerTypeAr: 'customerTypeAr',
                address: Address(area: "Damascus-Sahnaya", id: 0),
                userPassword: UserPassword(password: 'password', userId: 0));
            return CustomerCard(
              customer: customer,
              isShowIcon: true,
            );
          },
        ));
  }
}

class TourDialogWidget extends StatelessWidget {
  final TourController controller;
  final Widget widget;
  const TourDialogWidget({
    super.key,
    required this.controller,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          children: [
            Gap(
              h: 300.h,
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  constraints: BoxConstraints(
                      minHeight: controller.index == 0
                          ? 137.h
                          : controller.index == 1
                              ? 218.h
                              : 191.h),
                  width: 300.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
                  decoration: BoxDecoration(
                      color: background,
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        controller.dataText[controller.index],
                        style: MyDecorations.textStyle400(primary, 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              controller.next();
                            },
                            child: Text(
                              controller.index < 2 ? "التالي" : "حسناً",
                              style: MyDecorations.textStyle400(blueTheme, 14),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(top: -126.h, child: const TourWidget()),
              ],
            ),
          ],
        ),
        Positioned(left: 14.w, bottom: 24.h, child: widget),
      ],
    );
  }
}

class CustomStartFloatingActionButton extends StatelessWidget {
  final void Function()? onTap;

  const CustomStartFloatingActionButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 56.h,
          width: 56.w,
          decoration: BoxDecoration(
              color: blueTheme, borderRadius: BorderRadius.circular(12.r)),
          child: Column(
            children: [
              Icon(
                Icons.play_arrow_rounded,
                color: white,
                size: 28.w,
              ),
              Text(
                'بدء',
                textAlign: TextAlign.center,
                style: MyDecorations.textStyle600(
                  white,
                  12,
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: AvatarGlow(
            glowColor: const Color.fromRGBO(255, 255, 255, 0.2),
            glowRadiusFactor: 0.7,
            duration: const Duration(milliseconds: 2000),
            glowShape: BoxShape.circle,
            repeat: true,
            curve: Curves.easeOutQuad,
            child: Container(
              height: 50.h,
              width: 50.w,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomEndFloatingActionButton extends StatelessWidget {
  final void Function()? onTap;
  final int? index;
  const CustomEndFloatingActionButton(
      {super.key, this.onTap, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 56.h,
          width: 320.w,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: white,
                    size: 28.w,
                  ),
                ],
              ),
            ),
            Container(
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
                    'وقت الانطلاق: وقت الانطلاق',
                    textAlign: TextAlign.center,
                    style: MyDecorations.textStyle600(
                      white,
                      10,
                    ),
                  ),
                  Text(
                    'h:mm:ss',
                    textAlign: TextAlign.center,
                    style: MyDecorations.textStyle600(
                      white,
                      10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.stop, color: white, size: 28.w),
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
            Container(
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.pause,
                    color: white,
                    size: 28.w,
                  ),
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
          ]),
        ),
        Positioned(
          left: index == 1 ? 8.5.w : 66.w,
          top: 5.h,
          child: GestureDetector(
            onTap: onTap,
            child: AvatarGlow(
              glowColor: const Color.fromRGBO(255, 255, 255, 0.2),
              glowRadiusFactor: 0.6,
              duration: const Duration(milliseconds: 2000),
              glowShape: BoxShape.circle,
              repeat: true,
              curve: Curves.easeOutQuad,
              child: Container(
                height: 40,
                width: 40,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
