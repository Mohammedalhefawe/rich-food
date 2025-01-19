import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:lottie/lottie.dart';
import '../../../shared/styles/colors.dart';
import '../../../shared/styles/decoration.dart';
import '../../../shared/widgets/gap.dart';
import '../../../shared/widgets/no_data_frizo/no_branches.dart';
import '../../../shared/widgets/no_data_frizo/no_data_error.dart';
import '../_methods.dart';
import '../controller/branches_controller.dart';

class NoBranchScreen extends StatefulWidget {
  const NoBranchScreen(
      {super.key, required this.isError, required this.isCustomer});
  final bool isError, isCustomer;

  @override
  State<NoBranchScreen> createState() => _NoBranchScreenState();
}

class _NoBranchScreenState extends State<NoBranchScreen> {
  @override
  Widget build(BuildContext context) {
    return DoubleBack(
      onFirstBackPress: (context) {
        // showMessage('اضغط مرة أخرى للخروج', true);
      },
      child: Scaffold(
        backgroundColor: widget.isError ? background : Color(0x3F73A3D0),
        body: widget.isError
            ? InkWell(
                onTap: () {
                  Get.find<BranchesController>().fetchData().then((success) {
                    if (success) {
                      navigateToMainLayout((widget.isCustomer));
                    }
                  });
                },
                child: NoDataErrorWidget(
                  message: 'خطأ بتحميل الأفرع \n إعادة المحاولة !',
                ),
              )
            : Column(
                children: [
                  Expanded(
                    child: Stack(children: [
                      SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Lottie.asset(
                          "assets/json/no_branch_animation.json",
                        ),
                      ),
                      Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          NoBranchesWidget(),
                          Gap(
                            h: 24,
                          ),
                          Text('المعذرة, لا يوجد معلومات لعرضها حالياً ',
                              style: MyDecorations.textStyle500(secondary, 14)),
                        ],
                      )),
                    ]),
                  )
                ],
              ),
      ),
    );
  }
}
