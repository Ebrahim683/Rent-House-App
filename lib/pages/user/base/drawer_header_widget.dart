import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/assets.dart';
import '../../../utils/storage_utils.dart';
import '../../../widget/app_widget.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 100.w,
          height: 100.h,
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
                errorWidget: (context, url, error) =>
                    Image.asset(error_image),
              ),
            ),
          ),
        ),
        gap(h: 10.h),
        Text(
          storageUtils.getName.toString(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        gap(h: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.email,
              color: Colors.black,
            ),
            gap(w: 5.w),
            Text(
              storageUtils.getEmail.toString(),
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
