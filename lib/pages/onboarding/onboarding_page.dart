import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:rent_house/pages/onboarding/onboarding_widget.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/app_colors.dart';
import 'package:rent_house/utils/assets.dart';
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
    img_house1,
    img_house2,
    img_house3,
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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // PageView.builder(
          //   controller: pageViewController,
          //   itemCount: 3,
          //   itemBuilder: (context, index) {
          //     return OnBoardingWidget(
          //       image: images[index],
          //       description: onBoardingDescription[index],
          //     );
          //   },
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OnBoardingAnimation(
              pages: List.generate(
                  3,
                  (index) => OnBoardingWidget(
                        image: images[index],
                        description: onBoardingDescription[index],
                      )),
              indicatorDotHeight: 10.0,
              indicatorDotWidth: 10.0,
              indicatorType: IndicatorType.expandingDots,
              indicatorPosition: IndicatorPosition.bottomCenter,
              indicatorActiveDotColor: Colors.orangeAccent.shade400,
              indicatorInActiveDotColor: Colors.grey,
            ),
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
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: DotsIndicator(
          //     position: currentIndex.toDouble(),
          //     dotsCount: 3,
          //     decorator: DotsDecorator(
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(15.r)),
          //       size: Size(50.w, 8.h),
          //       color: Colors.grey,
          //       activeShape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(15.r)),
          //       activeSize: Size(50.w, 8.h),
          //       activeColor: Colors.yellow,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
