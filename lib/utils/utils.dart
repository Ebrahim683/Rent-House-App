import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rent_house/routers/routes.dart';
import 'app_colors.dart';
import 'package:cool_alert/cool_alert.dart';

showSnackBar({required BuildContext context, required String message}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    margin: EdgeInsets.symmetric(horizontal: 15.w),
  ));
}

showGetSnackBar({required String title, required String message}) {
  Get.snackbar(title, message,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: snackColor);
}

errorDialog({required BuildContext context, required String message}) {
  CoolAlert.show(
      context: context,
      type: CoolAlertType.error,
      text: message,
      loopAnimation: true);
}

successDialog({required BuildContext context, required String message}) {
  CoolAlert.show(
    context: context,
    type: CoolAlertType.success,
    text: message,
    loopAnimation: true,
  );
}

warningDialog({required BuildContext context, required String message}) {
  CoolAlert.show(
      context: context,
      type: CoolAlertType.warning,
      text: message,
      loopAnimation: true);
}
