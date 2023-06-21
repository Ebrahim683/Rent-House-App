import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/widget/app_widget.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import '../../../../data/model/housemodel/house_list_model.dart';
import '../../../../utils/assets.dart';

class HouseWidget extends StatelessWidget {
  final HouseModel getHouseModel;
  const HouseWidget({super.key, required this.getHouseModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25.r),
              child: CachedNetworkImage(
                imageUrl: getHouseModel.image1.toString(),
                fit: BoxFit.cover,
                width: size.width,
                progressIndicatorBuilder: (context, url, progress) => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(loading_image),
                  ),
                ),
                errorWidget: (context, url, error) => Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(broken_image),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 8,
              right: 8,
              child: GlassContainer(
                border: Border.all(color: Colors.teal),
                borderRadius: BorderRadius.circular(20.r),
                blur: 8,
                height: 180.h,
                width: size.width,
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
            ),
          ],
        ),
      ),
    );
  }
}
