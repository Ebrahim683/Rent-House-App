import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/pages/onboarding/onboarding_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/app_colors.dart';
import 'package:rent_house/utils/storage_utils.dart';
import 'package:rent_house/utils/strings.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final pageViewController = PageController(initialPage: 0);
  double currentIndex = 0;
  final images = [
    'asset/images/house1.jpg',
    'asset/images/house2.jpg',
    'asset/images/house3.jpg',
  ];

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageViewController,
            itemCount: 3,
            itemBuilder: (context, index) {
              return OnBoardingWidget(
                image: images[index],
                description: onBoardingDescription[index],
              );
            },
          ),
          Positioned(
            left: size.width * 0.45,
            bottom: 60.h,
            child: FloatingActionButton(
              elevation: 15,
              backgroundColor: btnColor,
              onPressed: () {
                storageUtils.saveOnboarding();
                pushOff(context: context, name: login_page);
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
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
                color: Colors.grey,
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
