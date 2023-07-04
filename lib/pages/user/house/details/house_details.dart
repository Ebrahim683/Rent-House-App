import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/data/model/housemodel/house_list_model.dart';
import 'package:rent_house/state/cubit/bookhouse/book_house_cubit.dart';
import 'package:rent_house/state/cubit/bookhouse/book_house_state.dart';
import 'package:rent_house/utils/app_colors.dart';
import 'package:rent_house/utils/assets.dart';
import 'package:rent_house/utils/notification_service.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:rent_house/widget/app_widget.dart';

import '../../../../routers/routes.dart';
import '../../../../utils/storage_utils.dart';

class HouseDetailsPage extends StatefulWidget {
  final HouseModel houseModel;
  const HouseDetailsPage({super.key, required this.houseModel});

  @override
  State<HouseDetailsPage> createState() => _HouseDetailsPageState();
}

class _HouseDetailsPageState extends State<HouseDetailsPage> {
  late String videoUrl;
  List<String> imageList = [];

  List<String> getImageLink() {
    try {
      imageList = [
        widget.houseModel.image1.toString(),
        widget.houseModel.image2.toString(),
        widget.houseModel.image3.toString(),
        widget.houseModel.image4.toString(),
      ];
      log(imageList[0].toString());
    } catch (e) {
      log(e.toString());
    }
    return imageList;
  }

  String deviceToken = '';

  @override
  void initState() {
    super.initState();
    getImageLink();
    String video = widget.houseModel.video.toString();
    videoUrl = video.toString();
    NotificationService.getPersonDeviceToken(
            number: widget.houseModel.ownerNumber.toString())
        .then((value) => deviceToken = value);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget setInfoHeader({
      required String icon,
      required String title,
      required String description,
      double? textSize,
    }) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        padding: EdgeInsets.symmetric(vertical: 5.w, horizontal: 10.h),
        color: transparentColor,
        child: Row(
          children: [
            Image.asset(
              icon,
              height: 20.h,
              width: 20.w,
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
              softWrap: false,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style:
                  TextStyle(color: Colors.black, fontSize: textSize ?? 15.sp),
            ),
          ],
        ),
      );
    }

    Widget setInfo({
      required String icon,
      required String title,
      required String description,
      double? textSize,
    }) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        padding: EdgeInsets.symmetric(vertical: 15.w, horizontal: 5.h),
        color: Colors.white.withOpacity(0.6),
        child: Row(
          children: [
            Image.asset(
              icon,
              height: 25.h,
              width: 25.w,
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
            Expanded(
              child: Text(
                description,
                softWrap: false,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style:
                    TextStyle(color: Colors.black, fontSize: textSize ?? 15.sp),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: BlocConsumer<BookHouseCubit, BookHouseState>(
        listener: (context, state) {
          if (state is BookHouseErrorState) {
            errorDialog(context: context, message: state.error);
            log(state.error);
          } else if (state is BookHouseSuccessState) {
            NotificationService.sentNotification(
                deviceToken: deviceToken,
                title: 'ভাড়ার আবেদন',
                body: '${storageUtils.getName} ভাড়ার জন্য আবেদন করেছেন');
            showSnackBar(
                context: context,
                title: 'সফল',
                message: state.commonModel.message.toString());
            pop(context: context);
          }
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state is BookHouseLoadingState ? true : false,
            progressIndicator: Lottie.asset(
              'asset/animations/timer.json',
            ),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: InkWell(
                        onTap: () {
                          makeCall(
                              number: widget.houseModel.ownerNumber.toString());
                        },
                        child: const Icon(
                          Icons.call,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                  toolbarHeight: 60,
                  elevation: 0,
                  expandedHeight: size.height * 0.25,
                  backgroundColor: transparentColor,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      children: [
                        CarouselSlider.builder(
                          itemCount: imageList.length,
                          itemBuilder: (context, index, realIndex) {
                            return CachedNetworkImage(
                              imageUrl: imageList[index],
                              fit: BoxFit.cover,
                              width: size.width,
                              progressIndicatorBuilder:
                                  (context, url, progress) => Center(
                                child: Image.asset(loading_image),
                              ),
                              errorWidget: (context, url, error) => Padding(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(error_image),
                              ),
                            );
                          },
                          options: CarouselOptions(
                            autoPlay: true,
                            autoPlayCurve: Curves.easeIn,
                            height: size.height * 0.3,
                            viewportFraction: 1,
                          ),
                        ),
                        Positioned(
                          bottom: 10.h,
                          left: 10.w,
                          child: GlassContainer(
                            blur: 5,
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.white.withOpacity(0.4),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: setInfoHeader(
                                icon: person_icon,
                                title: 'মালিকঃ ',
                                description:
                                    widget.houseModel.ownerName.toString(),
                                textSize: 18.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    color: transparentColor,
                    child: Column(
                      children: [
                        gap(h: 20.h),
                        setInfo(
                          icon: location_icon,
                          title: 'ঠিকানাঃ',
                          description: widget.houseModel.address.toString(),
                        ),
                        gap(h: 10.h),
                        setInfo(
                          icon: call_icon,
                          title: 'ফোনঃ',
                          description: widget.houseModel.ownerNumber.toString(),
                        ),
                        gap(h: 10.h),
                        setInfo(
                          icon: fee_icon,
                          title: 'ভাড়াঃ',
                          description: widget.houseModel.fee.toString(),
                        ),
                        gap(h: 10.h),
                        setInfo(
                          icon: advance_fee_icon,
                          title: 'অগ্রিমঃ',
                          description: widget.houseModel.advanceFee.toString(),
                        ),
                        gap(h: 10.h),
                        setInfo(
                          icon: gas_fee_icon,
                          title: 'গ্যাস বিলঃ',
                          description: widget.houseModel.gasFee.toString(),
                        ),
                        gap(h: 10.h),
                        setInfo(
                          icon: electricity_fee_icon,
                          title: 'বিদ্যুৎ বিলঃ',
                          description:
                              widget.houseModel.electricityFee.toString(),
                        ),
                        gap(h: 10.h),
                        setInfo(
                          icon: others_fee_icon,
                          title: 'অন্যান্য বিলঃ',
                          description: widget.houseModel.othersFee.toString(),
                        ),
                        gap(h: 10.h),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          padding: EdgeInsets.symmetric(
                              vertical: 15.w, horizontal: 5.h),
                          color: Colors.white.withOpacity(0.6),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text('ভাড়ার'),
                                  gap(w: 5.w),
                                  Image.asset(
                                    notice_icon,
                                    height: 30.h,
                                    width: 30.w,
                                  ),
                                  gap(w: 5.w),
                                  const Text('নোটিশ'),
                                ],
                              ),
                              gap(),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child:
                                    Text(widget.houseModel.notice.toString()),
                              ),
                            ],
                          ),
                        ),
                        gap(h: 20.h),
                        SizedBox(
                          width: 300.w,
                          child: CupertinoButton(
                              color: Colors.orange,
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('ভিডিও দেখুন'),
                                  Icon(
                                    Icons.video_collection,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/room_video_page',
                                    arguments: {
                                      'videoUrl': videoUrl,
                                    });
                              }),
                        ),
                        gap(),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          width: size.width,
                          child: Visibility(
                            visible: widget.houseModel.canBook == 'yes'
                                ? true
                                : false,
                            child: MaterialButton(
                              color: btnColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r)),
                              onPressed: () {
                                log(widget.houseModel.id!.toString());
                                String ownerName = widget.houseModel.ownerName!;
                                String ownerNumber =
                                    widget.houseModel.ownerNumber!;

                                if (widget.houseModel.status == 'booked') {
                                  warningDialog(
                                      context: context,
                                      message: 'Already booked');
                                } else {
                                  BlocProvider.of<BookHouseCubit>(context)
                                      .bookRoom(
                                          ownerName: ownerName,
                                          ownerNumber: ownerNumber,
                                          houseId: widget.houseModel.houseId!);
                                }
                              },
                              child: const Text(
                                'এখনি বুক করুন',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        gap(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
