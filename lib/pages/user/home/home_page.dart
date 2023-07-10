import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/pages/user/home/category_widget.dart';
import 'package:rent_house/utils/app_colors.dart';
import 'package:rent_house/utils/storage_utils.dart';
import 'package:rent_house/utils/strings.dart';
import '../../../utils/assets.dart';
import '../../../widget/app_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // void getCurrentPosition() async {
  //   LocationPermission permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied ||
  //       permission == LocationPermission.deniedForever) {
  //     Geolocator.requestPermission();
  //   } else {
  //     Position position = await Geolocator.getCurrentPosition(
  //         desiredAccuracy: LocationAccuracy.high);
  //     log(position.longitude.toString());
  //     log(position.latitude.toString());
  //     getAddress(position);
  //   }
  // }

  // getAddress(Position position) async {
  //   List<Placemark> placemark =
  //       await placemarkFromCoordinates(position.latitude, position.longitude);
  //   Placemark place = placemark[0];
  //   log('${place.subLocality},${place.locality},${place.subAdministrativeArea},${place.administrativeArea}');
  //   String address =
  //       '${place.subLocality},${place.locality},${place.subAdministrativeArea},${place.administrativeArea}';
  //   StorageUtils.saveLocation(address);
  // }

  @override
  void initState() {
    super.initState();
    log(storageUtils.getName.toString() + storageUtils.getNumber.toString());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    final images = [
      family_icon,
      bachelor_icon,
      office_icon,
      industry_icon,
      shop_icon,
      garage_icon,
    ];

    final titles = [
      familyTitle,
      bachelorTitle,
      officeTitle,
      factoryTitle,
      shopTitle,
      garageTitle,
    ];

    final colors = [
      Colors.red,
      Colors.orange,
      Colors.blue,
      Colors.pink,
      Colors.green,
      Colors.amber,
    ];

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width,
            height: size.height * 0.7,
            decoration: BoxDecoration(
              color: userBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.r),
                bottomRight: Radius.circular(30.r),
              ),
            ),
            child: Column(
              children: [
                gap(h: 80.h),
                SizedBox(
                  height: 150.h,
                  width: 150.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.r),
                    child: Container(
                      color: Colors.teal,
                      child: CachedNetworkImage(
                        imageUrl: storageUtils.getProfilePic == ''
                            ? 'https://img.freepik.com/free-icon/user_318-159711.jpg'
                            : storageUtils.getProfilePic.toString(),
                        placeholder: (context, url) => Image.asset(avatar_icon),
                        fit: BoxFit.cover,
                        width: size.width,
                        errorWidget: (context, url, error) =>
                            Image.asset(error_image),
                      ),
                    ),
                  ),
                ),
                gap(h: 10.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.w, color: Colors.black),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Text(
                    storageUtils.getName.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                gap(h: 10.h),
                Flexible(
                  child: GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisCount: 3,
                    children: List.generate(
                      6,
                      (index) => CategoryWidget(
                        title: titles[index],
                        image: images[index],
                        color: colors[index],
                        index: index,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
