import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            'asset/images/sliderhouse1.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 100,
          left: 50,
          child: Text(
            'Title',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          )
              .animate()
              .fade(duration: 800.ms)
              .slideY(curve: Curves.easeIn)
              .then()
              .shake(),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Descriptionfdhkdhgkhgfdkhjfdkdskjhkdjsfhkfdsfgddfvdsf',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ).animate().fade(duration: 1000.ms).slideX(curve: Curves.easeIn),
          ),
        ),
      ],
    );
  }
}
