import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/widget/app_widget.dart';

import '../../../../data/model/housemodel/house_list_model.dart';
import '../../../../utils/assets.dart';

class HouseWidget extends StatelessWidget {
  final HouseModel getHouseModel;
  const HouseWidget({super.key, required this.getHouseModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Widget setInfo({
      required String icon,
      required String title,
      required String desc,
    }) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              color: Colors.black,
              height: 20,
              width: 20,
            ),
            gap(w: 5.w),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            gap(w: 5.w),
            Expanded(
              child: Text(
                desc,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        Map<String, dynamic> arguments = {'getHouseModel': getHouseModel};
        Navigator.pushNamed(context, house_details_page, arguments: arguments);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        height: size.height * 0.3,
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
                  child: Image.asset(error_image),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.4,
                  top: 30.h,
                  bottom: 30.h,
                  right: 10.w,
                ),
                child: GlassContainer(
                  border: Border.all(color: Colors.teal),
                  borderRadius: BorderRadius.circular(20.r),
                  blur: 8,
                  height: size.height,
                  width: size.width,
                  color:
                      const Color.fromARGB(255, 218, 214, 204).withOpacity(0.3),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            setInfo(
                              icon: person_icon,
                              title: 'মালিকঃ',
                              desc: getHouseModel.ownerName.toString(),
                            ),
                            setInfo(
                              icon: location_icon,
                              title: 'ঠিকানাঃ',
                              desc: getHouseModel.address.toString(),
                            ),
                            setInfo(
                              icon: call_icon,
                              title: 'ফোনঃ',
                              desc: getHouseModel.ownerNumber.toString(),
                            ),
                            setInfo(
                              icon: fee_icon,
                              title: 'ভাড়াঃ',
                              desc: getHouseModel.fee.toString(),
                            ),
                            setInfo(
                              icon: status_icon,
                              title: 'অবস্থাঃ',
                              desc: getHouseModel.status.toString(),
                            ),
                          ],
                        ),
                      ),
                    ),
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
