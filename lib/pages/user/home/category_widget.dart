import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/widget/app_widget.dart';

class CategoryWidget extends StatelessWidget {
  final String animation;
  final String title;

  const CategoryWidget(
      {super.key, required this.animation, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, house_list_page, arguments: {
          'category': title.toLowerCase().replaceAll(' ', ''),
          'title': title.toString(),
        });
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
          side: BorderSide(color: Colors.black, width: 0.5.w),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                gap(h: 5.h),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset(
                      animation,
                    ),
                  ),
                ),
                gap(h: 3.h),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
