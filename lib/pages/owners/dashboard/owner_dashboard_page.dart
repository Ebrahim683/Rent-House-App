import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/utils/strings.dart';
import 'package:rent_house/widget/app_widget.dart';

class OwnerDashboardPage extends StatelessWidget {
  const OwnerDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appName),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              'রুম লিস্ট',
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
          ),
          gap(),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
