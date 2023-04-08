import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rent_house/utils/app_colors.dart';
import 'package:rent_house/widget/app_widget.dart';

class HouseDetailsPage extends StatelessWidget {
  const HouseDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final roomList = [
      'asset/images/sliderhouse2.png',
      'asset/images/sliderhouse3.png',
      'asset/images/sliderhouse2.png',
      'asset/images/sliderhouse3.png',
    ];
    Widget setInfo(
        {required IconData icon,
        required String title,
        required String description}) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(vertical: 5.w, horizontal: 10.h),
        decoration: BoxDecoration(
          color: transparentColor,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            gap(w: 15.w),
            Text(
              title,
              softWrap: false,
              style: TextStyle(fontSize: 16.sp, color: Colors.black),
              overflow: TextOverflow.ellipsis,
            ),
            gap(w: 5.w),
            Text(
              description,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            backgroundColor: Colors.amber[200],
            pinned: true,
            toolbarHeight: 60,
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0.h),
              child: Container(
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.r),
                        topRight: Radius.circular(40.r))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          'মোঃ ছাব্বির হোসেন (গিরোস্তো)',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500),
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            expandedHeight: Get.height * 0.55,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'asset/images/sliderhouse3.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r))),
              child: Column(
                children: [
                  gap(h: 5.h),
                  setInfo(
                    icon: Icons.wallet,
                    title: 'মাসিক ভাড়াঃ',
                    description: '১০০০০০০০০০ টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.add_home_work_outlined,
                    title: 'রুম সংখাঃ',
                    description: '৪',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.electrical_services_outlined,
                    title: 'বিদ্যুৎ বিলঃ',
                    description: '150 টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.gas_meter_outlined,
                    title: 'গ্যাস বিলঃ',
                    description: '200 টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.money,
                    title: 'অন্যান্য বিলঃ',
                    description: '৬০ টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.currency_exchange,
                    title: 'অগ্রিমঃ',
                    description: '৬০ টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.location_on_outlined,
                    title: 'ঠিকানাঃ',
                    description: 'জিরাবো, আশুলিয়া, সাভার, ঢাকা',
                  ),
                  gap(),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.h),
                    padding:
                        EdgeInsets.symmetric(vertical: 5.w, horizontal: 10.h),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 190, 196, 195),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text(
                      'অবশ্যই বাড়ি ছাড়ার ২ মাস আগে বাড়িওয়ালাকে জানাতে হবে। অন্যথায় ১ মাস আগের ভাড়া দিয়ে বাড়ি ছাড়তে হবে।',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  gap(),
                  SizedBox(
                    height: 130.h,
                    width: Get.width,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: roomList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.w),
                            child: Image.asset(
                              roomList[index],
                              fit: BoxFit.cover,
                            ),
                          );
                        }),
                  ),
                  gap(),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    width: Get.width,
                    child: MaterialButton(
                      color: Colors.orange[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r)),
                      onPressed: () {},
                      child: Text(
                        'এখনি বুক করুন',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  gap(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
