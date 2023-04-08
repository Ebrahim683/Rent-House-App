import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/pages/home/category_widget.dart';
import '../../utils/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final animations = [
      'asset/animations/house1.json',
      'asset/animations/house2.json',
      'asset/animations/house2.json',
      'asset/animations/house2.json',
      'asset/animations/house1.json',
      'asset/animations/house2.json',
      'asset/animations/house1.json',
      'asset/animations/house2.json',
      'asset/animations/house2.json',
      'asset/animations/house2.json',
    ];

    final titles = [
      'Family House',
      'Bachelor Mess',
      'Female Mess',
      'Sublet',
      'Office',
      'Warehouse',
      'Shop',
      'Garage',
      'Others',
      'Industry',
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(appName),
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Category',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            // gap(h: 10.h),
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              shrinkWrap: true,
              primary: false,
              children: List.generate(
                  titles.length,
                  (index) => CategoryWidget(
                        title: titles[index],
                        animation: animations[index],
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
