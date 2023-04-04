import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rent_house/utils/app_colors.dart';
import 'package:rent_house/widget/app_widget.dart';

class HouseDetailsPage extends StatelessWidget {
  const HouseDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: Get.height * 0.55,
                width: Get.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/images/sliderhouse1.png'),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                child: Container(
                  height: Get.height,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: Get.height * 0.5,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.r),
                  topRight: Radius.circular(50.r),
                ),
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [],
                ),
              ),
            ),
          ),
        ],
      ), */
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.amber[200],
            pinned: true,
            toolbarHeight: 60,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0.h),
              child: Container(
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.r),
                        topRight: Radius.circular(40.r))),
                child: Center(
                  child: Text(
                    'Sliver app bar',
                    style: TextStyle(fontSize: 18.sp, color: Colors.black),
                  ),
                ),
              ),
            ),
            expandedHeight: Get.height * 0.55,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'asset/images/sliderhouse1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r))),
              child: Column(
                children: [
                  gap(h: 5.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
