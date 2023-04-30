import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/widget/app_widget.dart';
import '../../../data/model/gethousemodel/get_house_model.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class HouseWidget extends StatelessWidget {
  final GetHouseModel getHouseModel;
  const HouseWidget({super.key, required this.getHouseModel});

  @override
  Widget build(BuildContext context) {
    Row setInfo({
      required IconData icon,
      required String text,
    }) {
      return Row(
        children: [
          CircleAvatar(
            radius: 15.r,
            backgroundColor: Colors.black,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          gap(w: 5.w),
          Text(
            text,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }

    return GestureDetector(
      onTap: () {
        Map<String, dynamic> arguments = {'getHouseModel': getHouseModel};
        Navigator.pushNamed(context, house_details_page, arguments: arguments);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        height: 300.h,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(25.r),
          image: DecorationImage(
            image: NetworkImage(
              getHouseModel.image.toString(),
              scale: 1.0,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 10,
              left: 8,
              right: 8,
              child: GlassContainer(
                border: Border.all(color: Colors.teal),
                borderRadius: BorderRadius.circular(20.r),
                blur: 8,
                height: 180.h,
                width: Get.width,
                color: const Color(0xFFEBAF00).withOpacity(0.3),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        getHouseModel.ownerName.toString(),
                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                      ),
                      gap(h: 8.h),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15.r,
                            backgroundColor: Colors.black,
                            child: const Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                          ),
                          gap(w: 10.w),
                          Expanded(
                            child: Text(
                              getHouseModel.address.toString(),
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      gap(h: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          setInfo(
                            icon: Icons.wallet,
                            text: '${getHouseModel.fee} টাকা',
                          ),
                          setInfo(
                            icon: Icons.add_home_work_outlined,
                            text: getHouseModel.quantity.toString(),
                          ),
                          setInfo(
                            icon: Icons.hourglass_bottom_rounded,
                            text: getHouseModel.status.toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


/*

 Container(
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
                image: const DecorationImage(
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
                          getHouseModel.ownerName.toString(),
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
                          'রুম সংখাঃ ${getHouseModel.quantity}',
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
                          'অবস্থা: ${getHouseModel.status}',
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
                          'ঠিকানাঃ ${getHouseModel.address}',
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
 */