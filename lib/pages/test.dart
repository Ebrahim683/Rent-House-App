import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/utils/assets.dart';
import 'package:rent_house/widget/app_widget.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  singleItem({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon),
              gap(w: 10.w),
              Text(title),
            ],
          ),
          gap(h: 10.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              description,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
              ),
            ),
          ),
          const Divider(color: Colors.teal),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.45,
            width: size.width,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 123, 70, 209),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45.r),
                bottomRight: Radius.circular(45.r),
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 90.r,
                        child: Image.asset(avatar),
                      ),
                      gap(),
                      Text(
                        'Md.Ebrahim Rahman',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      gap(h: 10.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.h, horizontal: 15.w),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.w, color: Colors.white),
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: const Text(
                          'User',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  gap(),
                  singleItem(
                    icon: Icons.person_outline,
                    title: 'Name',
                    description: 'Md.Ebrahim Rahman',
                  ),
                  singleItem(
                    icon: Icons.email_outlined,
                    title: 'Email',
                    description: 'ebrahim@gmail.com',
                  ),
                  singleItem(
                    icon: Icons.call_outlined,
                    title: 'Phone number',
                    description: '01234567890',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
