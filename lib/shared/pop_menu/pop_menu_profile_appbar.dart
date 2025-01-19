import 'package:flutter/material.dart';
import '../dialog/confirmation_dialog.dart';
import 'menu_item_model.dart';

void onSelectedProfileAppBar(
    BuildContext context, MenuItemModel item, int id, String pageName) {
  switch (item.icon) {
    case Icons.stars:
      {
        // implement something in this case
      }
      break;
    case Icons.close:
      showDialog(
        context: context,
        builder: (context) => ConfirmationDialog(
          title: '',
          content: '',
          confirmationText: '',
          onConfirm: () {},
        ),
      );
      break;
  }
}
