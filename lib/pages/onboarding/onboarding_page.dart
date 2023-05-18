import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rent_house/pages/onboarding/onboarding_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final pageViewController = PageController(initialPage: 0);
  double currentIndex = 0;
  @override
  void initState() {
    pageViewController.addListener(() {
      setState(() {
        currentIndex = pageViewController.page!;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageViewController,
            itemCount: 3,
            itemBuilder: (context, index) {
              return const OnBoardingWidget();
            },
          ),
          Positioned(
            left: Get.width * 0.45,
            bottom: 60.h,
            child: FloatingActionButton(
              elevation: 15,
              splashColor: Colors.yellow,
              backgroundColor: Colors.teal,
              onPressed: () {},
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: DotsIndicator(
              position: currentIndex.toDouble(),
              dotsCount: 3,
              decorator: DotsDecorator(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r)),
                size: Size(50.w, 8.h),
                color: Colors.black,
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r)),
                activeSize: Size(50.w, 8.h),
                activeColor: Colors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}