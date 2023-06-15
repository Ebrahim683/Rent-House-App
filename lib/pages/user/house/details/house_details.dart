import 'dart:developer';

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
    Widget setInfo(
        {required IconData icon,
        required String title,
        required String description}) {
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
              style: TextStyle(fontSize: 16.sp, color: Colors.black),
              overflow: TextOverflow.ellipsis,
            ),
            gap(w: 5.w),
            Text(
              description,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.black),
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
            snackBar(
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
                  leading: IconButton(
                    onPressed: () => pop(context: context),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.amber[200],
                  pinned: true,
                  toolbarHeight: 60,
                  elevation: 0,
                  expandedHeight: size.height * 0.55,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.network(
                      widget.houseModel.image1.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(0.h),
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.r),
                              topRight: Radius.circular(40.r))),
                      child: Column(
                        children: [
                          gap(h: 10.h),
                          Container(
                            height: 5.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(25.r),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              gap(),
                              Expanded(
                                child: Text(
                                  widget.houseModel.ownerName.toString(),
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              gap(w: 10.w),
                              Text(
                                widget.houseModel.ownerNumber.toString(),
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500),
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                              ),
                              IconButton(
                                  onPressed: () {
                                    makeCall(
                                        number: widget.houseModel.ownerNumber
                                            .toString());
                                  },
                                  icon: const Icon(Icons.call)),
                              gap(),
                            ],
                          ),
                        ],
                      ),
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
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.add_home_work_outlined,
                          title: 'রুম সংখাঃ',
                          description: widget.houseModel.quantity.toString(),
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.electrical_services_outlined,
                          title: 'বিদ্যুৎ বিলঃ',
                          description:
                              '${widget.houseModel.electricityFee} টাকা',
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
                          icon: Icons.currency_exchange,
                          title: 'অগ্রিমঃ',
                          description: '${widget.houseModel.advanceFee} টাকা',
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.location_on_outlined,
                          title: 'ঠিকানাঃ',
                          description: widget.houseModel.address.toString(),
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
                        SizedBox(
                          height: 130.h,
                          width: size.width,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: imageList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25.r),
                                  child: FadeInImage.assetNetwork(
                                    image: imageList[index].toString(),
                                    imageScale: 1.0,
                                    fit: BoxFit.cover,
                                    width: size.width * 0.5,
                                    placeholder:
                                        'asset/images/sliderhouse1.png',
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        gap(),
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
