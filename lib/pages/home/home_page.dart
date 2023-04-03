import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rent_house/pages/home/category_widget.dart';
import 'package:rent_house/routers/routes.dart';

import '../../utils/strings.dart';
import '../../widget/app_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final animations = [
      'asset/animations/house1.json',
      'asset/animations/house2.json',
      'asset/animations/house3.json',
      'asset/animations/house2.json',
      'asset/animations/house1.json',
      'asset/animations/house3.json',
      'asset/animations/house1.json',
      'asset/animations/house2.json',
      'asset/animations/house3.json',
      'asset/animations/house2.json',
    ];

    final titles = [
      'Family House',
      'Bachelor Mess',
      'Female Mess',
      'Sublet',
      'Office',
      'Warehouse',
      'Shop',
      'Garage',
      'Others',
      'Industry',
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(appName),
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15.w),
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              height: 50.h,
              width: Get.width,
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Category',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            gap(h: 10.h),
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              shrinkWrap: true,
              primary: false,
              children: List.generate(
                  titles.length,
                  (index) => CategoryWidget(
                        title: titles[index],
                        animation: animations[index],
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
