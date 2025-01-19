import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/models/notification_model.dart';
import 'package:rich_food/modules/sales_man/features/notifications/widgets/notification_card.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

import '../../../../shared/styles/colors.dart';
import '../../../../shared/widgets/custom_app_bar.dart';
import '../../../../shared/widgets/loading_indicator.dart';
import '../../../../shared/widgets/my_error_widget.dart';
import '../../../../shared/widgets/no_data_frizo/no_data_general.dart';
import 'notification_controller.dart';

class NotificationListScreen extends StatelessWidget {
  const NotificationListScreen({super.key, this.message});
  final RemoteMessage? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: const CustomAppBar(
        title: "الاشعارات",
      ),
      body: GetBuilder<NotificationController>(
        init: NotificationController(),
        builder: (NotificationController controller) {
          if (controller.isLoading) {
            return const LoadingIndicatorWidget();
          }
          if (controller.isError) {
            return MyErrorWidget(
              onTapped: controller.fetchData,
            );
          }
          return RefreshIndicator(
              color: blueTheme,
              onRefresh: controller.fetchData,
              child: Builder(builder: (_) {
                if (controller.notificationList.isEmpty) {
                  return const NoDataGeneralWidget(
                    message: 'لا يوجد إشعارات لعرضها',
                  );
                }
                return ListView.separated(
                  itemCount: controller.notificationList.length,
                  itemBuilder: (BuildContext context, int index) {
                    NotificationModel notification =
                        controller.notificationList[index];
                    return NotificationCard(
                      customerName: notification.title!,
                      address: notification.location!,
                      content: notification.content!,
                      date: notification.date!,
                      isRead: notification.isRead!,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 0.3.h,
                      child: Divider(
                        color: grey,
                      ),
                    );
                  },
                );
              }));
        },
      ),
    );
  }
}
