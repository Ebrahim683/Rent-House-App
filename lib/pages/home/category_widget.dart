import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/widget/app_widget.dart';

import '../../routers/routes.dart';

class CategoryWidget extends StatelessWidget {
  final String animation;
  final String title;

  const CategoryWidget(
      {super.key, required this.animation, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, house_list_page,
            arguments: {'category': title});
      },
      child: Container(
        margin: const EdgeInsets.all(15),
        height: Get.height * 0.5,
        width: Get.width * 0.5,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 151, 156, 158),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Lottie.asset(
                animation,
                height: 120,
                animate: true,
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
