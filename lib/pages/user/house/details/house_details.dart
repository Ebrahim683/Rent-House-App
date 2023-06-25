import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/data/model/housemodel/house_list_model.dart';
import 'package:rent_house/state/cubit/bookhouse/book_house_cubit.dart';
import 'package:rent_house/state/cubit/bookhouse/book_house_state.dart';
import 'package:rent_house/utils/app_colors.dart';
import 'package:rent_house/utils/assets.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:rent_house/widget/app_widget.dart';
import '../../../../routers/routes.dart';

class HouseDetailsPage extends StatefulWidget {
  final HouseModel houseModel;
  const HouseDetailsPage({super.key, required this.houseModel});

  @override
  State<HouseDetailsPage> createState() => _HouseDetailsPageState();
}

class _HouseDetailsPageState extends State<HouseDetailsPage> {
  late String videoUrl;
  int dotPos = 0;
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

  @override
  void initState() {
    super.initState();
    getImageLink();
    String video = widget.houseModel.video.toString();
    videoUrl = video.toString();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Widget setInfo({
      required IconData icon,
      required String title,
      required String description,
      double? textSize,
    }) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(vertical: 5.w, horizontal: 10.h),
        decoration: BoxDecoration(
          color: transparentColor,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
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

    return Scaffold(
      body: BlocConsumer<BookHouseCubit, BookHouseState>(
        listener: (context, state) {
          if (state is BookHouseErrorState) {
            errorDialog(context: context, message: state.error);
            log(state.error);
          } else if (state is BookHouseSuccessState) {
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
                  leading: Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: InkWell(
                      onTap: () => pop(context: context),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue.withOpacity(0.8),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: InkWell(
                        onTap: () {
                          makeCall(
                              number:
                                  widget.houseModel.ownerNumber.toString());
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.blue.withOpacity(0.8),
                          child: const Icon(
                            Icons.call_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                  toolbarHeight: 60,
                  elevation: 0,
                  expandedHeight: size.height * 0.5,
                  backgroundColor: transparentColor,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      children: [
                        gap(h: 25.h),
                        CarouselSlider.builder(
                          itemCount: imageList.length,
                          itemBuilder: (context, index, realIndex) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(30.r),
                              child: CachedNetworkImage(
                                imageUrl: imageList[index],
                                fit: BoxFit.cover,
                                progressIndicatorBuilder:
                                    (context, url, progress) => Center(
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
                            );
                          },
                          options: CarouselOptions(
                            autoPlay: true,
                            autoPlayCurve: Curves.easeIn,
                            height: size.height * 0.40,
                            enlargeCenterPage: true,
                            // onPageChanged: (index, reason) {
                            //   setState(() {
                            //     dotPos = index;
                            //   });
                            // },
                          ),
                        ),
                        // gap(h: 5.h),
                        // DotsIndicator(
                        //   dotsCount: 6,
                        //   position: dotPos.toDouble(),
                        // ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.r),
                            topRight: Radius.circular(40.r))),
                    child: Column(
                      children: [
                        gap(h: 5.h),
                        setInfo(
                          icon: Icons.wallet,
                          title: 'মাসিক ভাড়াঃ',
                          description: '${widget.houseModel.fee} টাকা',
                          textSize: 25.sp,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Text(widget.houseModel.address.toString()),
                          ),
                        ),
                        gap(),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.h),
                          padding: EdgeInsets.symmetric(
                              vertical: 5.w, horizontal: 10.h),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 190, 196, 195),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Text(
                            widget.houseModel.notice.toString(),
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.person_outline,
                          title: 'বাড়িওয়ালার নামঃ',
                          description: widget.houseModel.ownerName.toString(),
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.dialpad_outlined,
                          title: 'বাড়িওয়ালার নাম্বারঃ',
                          description: widget.houseModel.ownerNumber.toString(),
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.add_home_work_outlined,
                          title: 'রুম সংখাঃ',
                          description: widget.houseModel.quantity.toString(),
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.currency_exchange,
                          title: 'অগ্রিমঃ',
                          description: '${widget.houseModel.advanceFee} টাকা',
                        ),

                        gap(),
                        setInfo(
                          icon: Icons.gas_meter_outlined,
                          title: 'গ্যাস বিলঃ',
                          description: '${widget.houseModel.gasFee} টাকা',
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.money,
                          title: 'অন্যান্য বিলঃ',
                          description: '${widget.houseModel.othersFee} টাকা',
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.electrical_services_outlined,
                          title: 'বিদ্যুৎ বিলঃ',
                          description:
                              '${widget.houseModel.electricityFee} টাকা',
                        ),
                        gap(),
                        // SizedBox(
                        //   height: 130.h,
                        //   width: size.width,
                        //   child: ListView.builder(
                        //     shrinkWrap: true,
                        //     itemCount: imageList.length,
                        //     scrollDirection: Axis.horizontal,
                        //     itemBuilder: (context, index) {
                        //       return Padding(
                        //         padding: EdgeInsets.symmetric(horizontal: 15.w),
                        //         child: ClipRRect(
                        //           borderRadius: BorderRadius.circular(25.r),
                        //           child: FadeInImage.assetNetwork(
                        //             image: imageList[index].toString(),
                        //             imageScale: 1.0,
                        //             fit: BoxFit.cover,
                        //             width: size.width * 0.5,
                        //             placeholder:
                        //                 'asset/images/sliderhouse1.png',
                        //           ),
                        //         ),
                        //       );
                        //     },
                        //   ),
                        // ),
                        // gap(),
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
