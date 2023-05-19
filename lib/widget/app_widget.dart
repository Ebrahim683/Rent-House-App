import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/utils.dart';

roundButton({required BuildContext context}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: SizedBox(
      height: 50.h,
      width: double.infinity,
      child: MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
        color: btnColor,
        onPressed: () {
          snackBar(title: 'Message', message: 'Register', context: context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buttonText(text: "Register"),
          ],
        ),
      ),
    ),
  );
}

inputText({
  IconData? icon,
  required controller,
  required String hint,
  TextInputType? type,
  Color? color,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: TextField(
      keyboardType: type ?? TextInputType.text,
      controller: controller,
      style: TextStyle(color: color ?? Colors.black),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(
            color: color ?? Colors.black,
          ),
        ),
        filled: true,
        hintText: hint,
        hintStyle: TextStyle(color: color ?? Colors.black),
        fillColor: Colors.white.withAlpha(0),
        prefixIcon: Icon(
          icon ?? Icons.abc,
          color: color ?? Colors.black,
        ),
      ),
    ),
  );
}

buttonText({Color? color, required String text, double? size}) {
  return Text(
    text,
    style: TextStyle(color: color ?? Colors.white, fontSize: size ?? 15.sp),
  );
}

gap({double? h, double? w}) {
  return SizedBox(
    height: h ?? 20.h,
    width: w ?? 20.w,
  );
}

CupertinoButton refreshButton({required Function onPress}) {
  return CupertinoButton(
    color: Colors.orange,
    borderRadius: BorderRadius.circular(20.r),
    onPressed: () {
      onPress();
    },
    child: const Text('Try again'),
  );
}
