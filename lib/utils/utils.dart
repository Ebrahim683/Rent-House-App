import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app_colors.dart';

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
