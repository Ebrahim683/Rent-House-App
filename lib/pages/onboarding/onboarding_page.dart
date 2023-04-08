import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:rent_house/pages/onboarding/onboarding_widget.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/widget/app_widget.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
      'asset/images/sliderhouse1.png',
      'asset/images/sliderhouse2.png',
      'asset/images/sliderhouse3.png',
    ];

    final descriptions = [
      'Description1',
      'Description2',
      'Description3',
    ];

    final colors = [
      Colors.amber,
      Colors.orange,
      Colors.green,
    ];

    final pages = [
      OnboardingWidget(
          image: images[0], description: descriptions[0], color: colors[0]),
      OnboardingWidget(
          image: images[1], description: descriptions[1], color: colors[1]),
      OnboardingWidget(
          image: images[2], description: descriptions[2], color: colors[2]),
    ];

    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: pages,
            enableLoop: false,
            waveType: WaveType.liquidReveal,
          ),
          Positioned(
            bottom: Get.height * 0.1,
            left: Get.width * 0.43,
            right: Get.width * 0.40,
            child: FloatingActionButton(
              elevation: 20,
              backgroundColor: Colors.black,
              onPressed: () {
                pushOff(name: login_page);
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          )

          /*  SizedBox(
            height: Get.height,
            width: Get.width,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(images[index]), fit: BoxFit.cover),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          descriptions[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20.sp),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(
            right: 20,
            top: 30,
            child: ElevatedButton(
              onPressed: () {
                pushOff(name: login_page);
              },
              child: const Text(
                'এড়িয়ে যান',
              ),
            ),
          ), */
        ],
      ),
    );
  }
}
