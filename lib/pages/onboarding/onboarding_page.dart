import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/widget/app_widget.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    const images = [
      'asset/images/sliderhouse1.png',
      'asset/images/sliderhouse2.png',
      'asset/images/sliderhouse3.png',
    ];

    const descriptions = [
      'Description1',
      'Description2',
      'Description3',
    ];
    return Scaffold(
      body: Stack(
        children: [
          /*  Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: Get.height * 0.8,
                width: Get.width,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: descriptions.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(descriptions[index]),
                          gap(),
                          Text(descriptions[index]),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    color: const Color.fromARGB(255, 157, 180, 189),
                    onPressed: () {},
                    child: const Text(
                      'এড়িয়ে যান',
                      style: TextStyle(color: Colors.pink),
                    )),
                MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    color: const Color.fromARGB(255, 157, 180, 189),
                    onPressed: () {},
                    child: const Text(
                      'পরবর্তী',
                      style: TextStyle(color: Colors.pink),
                    )),
              ],
            ),
          ), */

          SizedBox(
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
          ),
        ],
      ),
    );
  }
}
