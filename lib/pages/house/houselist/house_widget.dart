import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/widget/app_widget.dart';

class HouseWidget extends StatelessWidget {
  const HouseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: Get.height * 0.2,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.cyan[100],
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          Container(
            height: Get.height * 0.2,
            width: Get.width * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/images/sliderhouse1.png'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          gap(w: 10.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'মোঃ ছাব্বির হোসেন (গিরোস্তো)',
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.w500),
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'মাসিক ভাড়াঃ ৩০০০ টাকা',
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'রুম সংখাঃ ৪',
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'ঠিকানাঃ জিরাবো, আশুলিয়া, সাভার, ঢাকা',
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  width: Get.width,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, house_details_page);
                      },
                      child: const Text('বুক করুন')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
