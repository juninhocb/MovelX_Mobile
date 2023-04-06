import 'package:flutter/material.dart';

import '../helpers/constants/app_colors.dart';

class Dialogs {
   static Future<void> showConfirmDialog(BuildContext context,  String title, String message, String btnOk, String btnCancel) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.textColor,
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStatePropertyAll(AppColors.mainColor)),
              child:  Text(
                btnOk,
                style: TextStyle(color: AppColors.textColor),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStatePropertyAll(AppColors.mainColor)),
              child: Text(btnCancel,
                  style: TextStyle(color: AppColors.textColor)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}