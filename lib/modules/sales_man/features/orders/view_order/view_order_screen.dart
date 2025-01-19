import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:rich_food/modules/sales_man/features/orders/all_orders/all_orders_controller.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/utils/services/date_to_day_name.dart';
import '../../../../../shared/dialog/order_cancel_dialog.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/custom_app_bar.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../trips/widgets/customer_info.dart';
import '../../../../../utils/services/format_phone_numbers.dart';
import '../../../../../utils/services/time_formatter.dart';
import '../../../models/products_model.dart';
import '../edit_order/edit_order_screen.dart';
import '../widgets/order_button.dart';
import '../widgets/product_of_order.dart';
import '../widgets/view_order_footer.dart';

class OrderScreen extends StatefulWidget {
  OrderScreen({super.key});

  // final OrderModel order;
  final AllOrdersController controller = Get.find<AllOrdersController>();

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool _isDeliverButtonVisible = true;
  bool _isUndoButtonVisible = false;
  Timer? _timer;
  int _countdown = 5;

  void _startCountdown() {
    if (_timer != null) {
      _timer!.cancel();
    }
    _countdown = 5;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_countdown > 0) {
          _countdown--;
        } else {
          _isUndoButtonVisible = false;
          _confirmDelivery();
          timer.cancel();
        }
      });
    });
  }

  void _showUndoButton() {
    setState(() {
      _isDeliverButtonVisible = false;
      _isUndoButtonVisible = true;
    });
    _startCountdown();
  }

  void _showDeliverButton() {
    if (_timer != null) {
      _timer!.cancel();
    }
    setState(() {
      _isDeliverButtonVisible = true;
      _isUndoButtonVisible = false;
    });
  }

  void _confirmDelivery() {
    String deliveryDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
    String deliveryTime = DateFormat('HH:mm').format(DateTime.now());

    widget.controller
        .changeOrderStatus(
      action: 'delivered',
      orderId: widget.controller.order.id,
      deliveryDate: deliveryDate,
      deliveryTime: deliveryTime,
    )
        .then((value) {
      if (value) {
        widget.controller.order.status = "delivered";
        showMessage('تم تسليم الطلب بنجاح', true);
      } else {
        showMessage('فشل تسليم الطلب', false);
      }
    });
  }

  @override
  void dispose() {
    if (_timer != null) {
      _timer!.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: CustomAppBar(title: "الطلب #${widget.controller.order.id}"),
      body: Column(
        children: [
          Expanded(
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        CustomerInfo(
                          customerName: widget.controller.order.customer.name,
                          address:
                              widget.controller.order.customer.address?.area ??
                                  '',
                          phoneNumbers: formatPhoneNumbers(
                              widget.controller.order.customer.contacts),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ' تاريخ الطلب: ${formatDate(widget.controller.order.orderDate)}',
                                style:
                                    MyDecorations.textStyle400(secondary, 13),
                              ),
                              widget.controller.order.status == 'delivered'
                                  ? Text(
                                      'تم التسليم',
                                      style: MyDecorations.textStyle400(
                                          blueTheme, 12),
                                    )
                                  : widget.controller.order.status == 'canceled'
                                      ? Text(
                                          'تم الإلغاء',
                                          style: MyDecorations.textStyle400(
                                              red, 12),
                                        )
                                      : const SizedBox.shrink()
                            ],
                          ),
                        ),
                        const Gap(
                          h: 12,
                        ),
                        if (widget.controller.order.status == 'accepted')
                          Column(
                            children: [
                              if (_isDeliverButtonVisible)
                                OrderButton(
                                    color: blueTheme,
                                    label: "تأكيد التسليم",
                                    labelColor: white,
                                    onTap: () {
                                      _showUndoButton();
                                    }),
                              if (_isUndoButtonVisible)
                                OrderButton(
                                    color: blueTheme,
                                    label: 'تراجع $_countdown',
                                    labelColor: whiteTheme,
                                    onTap: () {
                                      // widget.controller.changeOrderStatus(
                                      //     action: 'accepted',
                                      //     orderId: widget.controller.order.id);
                                      _showDeliverButton();
                                    }),
                              const Gap(
                                h: 12,
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ];
              },
              body: ListView.separated(
                itemCount: widget.controller.order.products.length,
                separatorBuilder: (context, index) {
                  return const Gap(h: 12);
                },
                itemBuilder: (BuildContext context, int index) {
                  ProductModel item = widget.controller.order.products[index];
                  bool isCenter =
                      (widget.controller.order.customer.customerType ==
                          'center');
                  return ProductOfOrderCard(item, isCenter);
                },
              ),
            ),
          ),
          ViewOrderFooter(
            totalPrice: widget.controller.order.totalPrice.toString(),
            deliveryDateTime:
                '${widget.controller.order.deliveryDate} - ${widget.controller.order.deliveryTime}',
            status: widget.controller.order.status,
            dayName: widget.controller.order.deliveryDate == ""
                ? 'الوقت غير محدد'
                : getArabicDayName(widget.controller.order.deliveryDate),
            onCancel: () {
              showConfirmationDialog();
            },
            onEdit: () {
              Get.to(() => EditOrderScreen(
                    order: widget.controller.order,
                  ));
            },
            onRevoke: () {
              widget.controller
                  .changeOrderStatus(
                      action: 'accepted', orderId: widget.controller.order.id)
                  .then((success) {
                if (success) {
                  widget.controller.order.status = 'accepted';
                  showMessage('تم التراجع بنجاح', true);
                }
              });
            },
          ),
        ],
      ),
    );
  }

  Future<bool> showConfirmationDialog() async {
    return await Get.dialog<bool>(
          CancelOrderDialog(
            onCancel: () {
              !widget.controller.isLoadingChangeStatus ? Get.back() : null;
            },
            onConfirm: ([String? reason]) {
              widget.controller
                  .changeOrderStatus(
                      action: 'canceled',
                      orderId: widget.controller.order.id,
                      reason: reason)
                  .then((value) {
                if (value) {
                  widget.controller.order.status = 'canceled';
                  Get.back();
                  showMessage('تم إلغاء الطلب بنجاح', true);
                } else {
                  showMessage('فشل إلغاء الطلب', false);
                }
              });
            },
            customerName: widget.controller.order.customer.name,
            orderId: widget.controller.order.id.toString(),
          ),
          barrierDismissible: false,
        ) ??
        false;
  }
}
