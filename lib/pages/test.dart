import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/utils/app_colors.dart';
import 'package:rent_house/utils/assets.dart';

import '../routers/routes.dart';
import '../widget/app_widget.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int dotPos = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Widget setInfo({
      required IconData icon,
      required String title,
      required String description,
      double? textSize,
    }) {
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
              style:
                  TextStyle(fontSize: textSize ?? 16.sp, color: Colors.black),
              overflow: TextOverflow.ellipsis,
            ),
            gap(w: 5.w),
            Text(
              description,
              // softWrap: false,
              // maxLines: 3,
              // overflow: TextOverflow.ellipsis,
              style:
                  TextStyle(color: Colors.black, fontSize: textSize ?? 15.sp),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.cyan[200],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: InkWell(
              onTap: () => pop(context: context),
              child: const Icon(
                Icons.arrow_back,
              ),
            ),
            toolbarHeight: 60,
            elevation: 0,
            expandedHeight: size.height * 0.40,
            backgroundColor: transparentColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: 6,
                    itemBuilder: (context, index, realIndex) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(30.r),
                        child: Image.asset(
                          sliderHouse1,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayCurve: Curves.easeIn,
                      height: size.height * 0.40,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          dotPos = index;
                        });
                      },
                    ),
                  ),
                  // gap(h: 5.h),
                  // DotsIndicator(
                  //   dotsCount: 6,
                  //   position: dotPos.toDouble(),
                  // ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                gap(h: 5.h),
                setInfo(
                  icon: Icons.wallet,
                  title: 'মাসিক ভাড়াঃ',
                  description: '5000 টাকা',
                  textSize: 25.sp,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text('fsdfhdskfgskfgdsfghdjsfgbkddtgdfgfhfhtrfghfdh'),
                ),
                gap(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  padding:
                      EdgeInsets.symmetric(vertical: 5.w, horizontal: 10.h),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 190, 196, 195),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Text(
                    'euiryweitsifhdjsfbmzxvc jsdgfiesutfresifusdhfvhmxcbzckjvgdshftrweuiyfrsdhfgmxbcvbxdjfghesdtydfhkdjsxbvzxnbcjvkdsfgweiursofghkdjsfghvkjzbxxcvbzxmvnbkdjsfgwkefhrweuitgdskjfgbvmnzxbcvkjsxbvkjdshfgdsi',
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                gap(),
                setInfo(
                  icon: Icons.add_home_work_outlined,
                  title: 'রুম সংখাঃ',
                  description: '1',
                ),
                gap(),
                setInfo(
                  icon: Icons.electrical_services_outlined,
                  title: 'বিদ্যুৎ বিলঃ',
                  description: '500 টাকা',
                ),
                gap(),
                setInfo(
                  icon: Icons.gas_meter_outlined,
                  title: 'গ্যাস বিলঃ',
                  description: '500 টাকা',
                ),
                gap(),
                setInfo(
                  icon: Icons.money,
                  title: 'অন্যান্য বিলঃ',
                  description: '500 টাকা',
                ),
                gap(),
                setInfo(
                  icon: Icons.currency_exchange,
                  title: 'অগ্রিমঃ',
                  description: '5000 টাকা',
                ),
                gap(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
