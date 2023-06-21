import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingWidget extends StatelessWidget {
  final String image;
  final String description;

  const OnBoardingWidget({
    super.key,
    required this.image,
    required this.description,
  });

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
        Positioned(
          bottom: 120.h,
          left: 10.w,
          right: 10.w,
          child: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.orangeAccent.withOpacity(0.5),
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Text(
              description,
              style: GoogleFonts.righteous(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ).animate().fade(duration: 1000.ms).slideX(curve: Curves.easeIn),
          ),
        ),
      ],
    );
  }
}
