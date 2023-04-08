import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/widget/app_widget.dart';

import '../../../data/model/gethousemodel/get_house_model.dart';

class HouseWidget extends StatelessWidget {
  final GetHouseModel getHouseModel;
  const HouseWidget({super.key, required this.getHouseModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, house_details_page),
      child: Container(
        margin: const EdgeInsets.all(8.0),
        height: Get.height * 0.2,
        width: Get.width,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 0.5.w),
          color: Colors.white,
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
                          'মাসিক ভাড়াঃ ${getHouseModel.fee} টাকা',
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
                          'অবস্থা: খালি আছে',
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
                  // Container(
                  //   margin: EdgeInsets.symmetric(horizontal: 5.w),
                  //   width: Get.width,
                  //   child: MaterialButton(
                  //       onPressed: () {
                  //         Navigator.pushNamed(context, house_details_page);
                  //       },
                  //       child: const Text('বুক করুন')),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
