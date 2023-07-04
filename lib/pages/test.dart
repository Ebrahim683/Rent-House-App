import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/utils/assets.dart';

import '../widget/app_widget.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final images = [
    family_icon,
    bachelor_icon,
    male_icon,
    female_icon,
    sublet_icon,
    office_icon,
    shop_icon,
    garage_icon,
    industry_icon,
    flat_icon,
  ];

  final titles = [
    'Family',
    'Bachelor',
    'Male',
    'Female',
    'Sublet',
    'Office',
    'Shop',
    'Garage',
    'Industry',
    'Flat',
  ];

  final colors = [
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.pink,
    Colors.green,
    Colors.amber,
    Colors.cyan,
    Colors.yellow,
    Colors.purple,
    Colors.lime,
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Test Page'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width,
            height: size.height * 0.7,
            color: Colors.yellow,
            child: Column(
              children: [
                gap(h: 80.h),
                CircleAvatar(
                  radius: 80.r,
                  child: Image.asset(avatar_icon),
                ),
                gap(h: 10.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.w, color: Colors.black),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Text(
                    'Md Abdul Kuddus',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                gap(h: 10.h),
                Flexible(
                  child: GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisCount: 3,
                    children: List.generate(
                      6,
                      (index) => singleCategory(index),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding singleCategory(int index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: colors[index][200],
              borderRadius: BorderRadius.circular(100.r),
            ),
            height: 90.h,
            width: 90.w,
            child: Center(
              child: AspectRatio(
                  aspectRatio: 1 / 1.4, child: Image.asset(images[index])),
            ),
          ),
          Text(titles[index]),
        ],
      ),
    );
  }
}
