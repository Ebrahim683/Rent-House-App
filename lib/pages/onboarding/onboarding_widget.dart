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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.asset(
                image.toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Center(
          child: Text(
            description,
            style: GoogleFonts.righteous(
              color: Colors.black,
              fontSize: 20.sp,
            ),
          ).animate().fade(duration: 1000.ms, curve: Curves.easeIn),
        ),
      ],
    );
  }
}
