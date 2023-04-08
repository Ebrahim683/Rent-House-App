import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rent_house/widget/app_widget.dart';

class OnboardingWidget extends StatelessWidget {
  final String image;
  final String description;
  final Color color;
  const OnboardingWidget(
      {super.key,
      required this.image,
      required this.description,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          gap(h: 50.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Image.asset(
              image,
              width: Get.width * 7,
              height: Get.height * 0.6,
            ),
          ),
          gap(h: 20.h),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
