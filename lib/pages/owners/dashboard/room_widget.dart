import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/data/model/owner/ownerhousemodel/owner_house_list_model.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/widget/app_widget.dart';

class RoomWidget extends StatelessWidget {
  final OwnerHouseModel ownerHouseModel;
  const RoomWidget({super.key, required this.ownerHouseModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, update_house_page,
            arguments: {'ownerHouseModel': ownerHouseModel});
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        height: size.height * 0.25,
        width: size.width,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 0.5.w),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          children: [
            SizedBox(
              height: size.height * 0.25,
              width: size.width * 0.45,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                // child: FadeInImage.assetNetwork(
                //   image: ownerHouseModel.image1.toString(),
                //   imageScale: 1.0,
                //   fit: BoxFit.cover,
                //   width: size.width,
                //   placeholder: 'asset/images/sliderhouse1.png',
                // ),
                child: CachedNetworkImage(
                  imageUrl: ownerHouseModel.image1.toString(),
                  fit: BoxFit.cover,
                  width: size.width,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                    child: CircularProgressIndicator(
                        value: downloadProgress.progress),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
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
                          'ভাড়া নিতে পারবেঃ ${ownerHouseModel.canBook}',
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
