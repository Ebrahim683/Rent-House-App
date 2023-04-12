import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/pages/home/category_widget.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/storage_utils.dart';
import '../../utils/strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    log(StorageUtils.getName().toString() +
        StorageUtils.getNumber().toString());
  }

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

    handlePopUp(int value) {
      switch (value) {
        case 0:
          StorageUtils.logOut();
          pushOff(name: login_page);
          break;
        case 1:
          push(name: booked_house_page);
          break;
        default:
          null;
      }
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(appName),
        actions: [
          PopupMenuButton<int>(
            onSelected: (value) => handlePopUp(value),
            itemBuilder: (context) => [
              const PopupMenuItem<int>(value: 0, child: Text('লগ আউট')),
              const PopupMenuItem<int>(value: 1, child: Text('ভাড়াকৃত রুম')),
            ],
          ),
        ],
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
