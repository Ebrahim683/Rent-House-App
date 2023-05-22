import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import '../utils/app_colors.dart';
import '../utils/utils.dart';

Row setInfo() {
  return Row(
    children: [
      CircleAvatar(
        radius: 15.r,
        backgroundColor: Colors.black,
        child: const CircleAvatar(
          backgroundColor: Colors.white,
        ),
      ),
      gap(w: 5.w),
      Container(
        height: 20.h,
        width: 40.w,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
    ],
  );
}

listLoadingWidget() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
    height: 300.h,
    width: Get.width,
    decoration: BoxDecoration(
      color: Colors.tealAccent,
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(25.r),
    ),
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25.r),
          child: Container(),
        ),
        Positioned(
          bottom: 10,
          left: 8,
          right: 8,
          child: Shimmer(
            period: const Duration(seconds: 2),
            gradient:
                const LinearGradient(colors: [Colors.black45, Colors.white60]),
            child: Container(
              height: 180.h,
              width: Get.width,
              decoration: BoxDecoration(
                color: const Color(0xFFEBAF00).withOpacity(0.3),
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                    ),
                    gap(h: 8.h),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15.r,
                          backgroundColor: Colors.teal,
                        ),
                        gap(w: 10.w),
                        Expanded(
                          child: Container(
                            height: 20.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                          ),
                        ),
                      ],
                    ),
                    gap(h: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        setInfo(),
                        setInfo(),
                        setInfo(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

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
