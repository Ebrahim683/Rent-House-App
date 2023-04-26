import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rent_house/data/model/owner/ownerhousemodel/owner_house_list_model.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/widget/app_widget.dart';

class RoomWidget extends StatelessWidget {
  final OwnerHouseModel ownerHouseModel;
  const RoomWidget({super.key, required this.ownerHouseModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, update_house_page,
            arguments: {'ownerHouseModel': ownerHouseModel});
      },
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
                          ownerHouseModel.ownerName.toString(),
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
                          'মাসিক ভাড়াঃ ${ownerHouseModel.fee} টাকা',
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
                          'রুম সংখাঃ ${ownerHouseModel.quantity}',
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
                          'ধরনঃ ${ownerHouseModel.category}',
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
                          'অবস্থা: ${ownerHouseModel.status}',
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
                          'ঠিকানাঃ ${ownerHouseModel.address}',
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
    );
  }
}
