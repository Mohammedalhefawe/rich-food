import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/shared/widgets/gap.dart';

import '../styles/colors.dart';
import 'no_data_frizo/no_data_search.dart';

class MyErrorWidget extends StatelessWidget {
  final Function onTapped;
  final int? stateCode;
  final String? error;
  const MyErrorWidget(
      {super.key, required this.onTapped, this.stateCode, this.error});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTapped();
      },
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const NoDataSearchWidget(),
          const Gap(
            h: 24,
          ),
          if (stateCode != null && kDebugMode)
            Text('$stateCode', style: MyDecorations.textStyle600(black, 18)),
          if (error != null && kDebugMode)
            Text('$error',
                maxLines: 2, style: MyDecorations.textStyle600(black, 18)),
          Text('خطأ في الاتصال!',
              style: MyDecorations.textStyle600(blueTheme, 16)),
          const Gap(
            h: 24,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.refresh,
                color: secondary,
                size: 20,
                grade: 0.1,
              ),
              const Gap(
                w: 4,
              ),
              Text('إعادة المحاولة',
                  style: MyDecorations.textStyle500(secondary, 14)),
            ],
          ),
        ],
      )),
    );
  }
}
