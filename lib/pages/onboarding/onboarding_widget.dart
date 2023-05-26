import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingWidget extends StatelessWidget {
  final String image;
  final String description;

  const OnBoardingWidget(
      {super.key, required this.image, required this.description});

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
            image.toString(),
            fit: BoxFit.cover,
          ),
        ),
        // Positioned(
        //   top: 100,
        //   left: 50,
        //   child: Text(
        //     'Title',
        //     style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 20.sp,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   )
        //       .animate()
        //       .fade(duration: 800.ms)
        //       .slideY(curve: Curves.easeIn)
        //       .then()
        //       .shake(),
        // ),
        Positioned(
          top: 100.h,
          left: 10.w,
          right: 10.w,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: GoogleFonts.righteous(
                color: Colors.white,
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
