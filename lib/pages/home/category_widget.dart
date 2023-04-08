import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/state/cubit/gethouse/get_house_list_cubit.dart';

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
            arguments: {'category': title.toLowerCase().replaceAll(' ', '')});
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
          side: BorderSide(color: Colors.black, width: 0.5.w),
        ),
        child: Container(
          // margin: const EdgeInsets.all(15),
          // height: Get.height * 0.5,
          // width: Get.width * 0.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
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
      ),
    );
  }
}
