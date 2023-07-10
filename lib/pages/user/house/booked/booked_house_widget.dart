import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/data/model/bookedhousemodel/booked_house_list_model.dart';
import 'package:rent_house/widget/app_widget.dart';

import '../../../../routers/routes.dart';
import '../../../../utils/assets.dart';

class BookedHouseWidget extends StatelessWidget {
  final BookedHouseModel bookedHouseModel;
  const BookedHouseWidget({super.key, required this.bookedHouseModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    Widget setInfo(String icon, String title, String description) {
      return SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              icon,
              height: 25.h,
              width: 25.w,
            ),
            gap(w: 5.w),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.black),
            ),
            gap(w: 5.w),
            Expanded(
              child: Text(
                description,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          booked_house_details_page,
          arguments: {
            'bookedHouseModel': bookedHouseModel,
          },
        );
      },
      child: Container(
        margin: const EdgeInsets.all(5.0),
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: CachedNetworkImage(
                imageUrl: bookedHouseModel.image.toString(),
                fit: BoxFit.cover,
                width: size.width * 0.5,
                height: size.height * 0.18,
                progressIndicatorBuilder: (context, url, progress) => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(loading_image),
                  ),
                ),
                errorWidget: (context, url, error) => Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(error_image),
                ),
              ),
            ),
            gap(w: 5.w),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    gap(h: 5.h),
                    setInfo(
                      person_icon,
                      'মালিকঃ',
                      bookedHouseModel.ownerName.toString(),
                    ),
                    gap(h: 10.h),
                    setInfo(
                      fee_icon,
                      'ভাড়াঃ',
                      bookedHouseModel.fee.toString(),
                    ),
                    gap(h: 10.h),
                    setInfo(
                      location_icon,
                      'ঠিকানাঃ',
                      bookedHouseModel.address.toString(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
