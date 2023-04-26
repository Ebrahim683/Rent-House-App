import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rent_house/data/model/gethousemodel/get_house_model.dart';
import 'package:rent_house/state/cubit/bookhouse/book_house_cubit.dart';
import 'package:rent_house/state/cubit/bookhouse/book_house_state.dart';
import 'package:rent_house/utils/app_colors.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:rent_house/widget/app_widget.dart';
import 'package:rive/rive.dart';

import '../../../utils/storage_utils.dart';

class HouseDetailsPage extends StatelessWidget {
  final GetHouseModel getHouseModel;
  const HouseDetailsPage({super.key, required this.getHouseModel});

  @override
  Widget build(BuildContext context) {
    final roomList = [
      'asset/images/sliderhouse2.png',
      'asset/images/sliderhouse3.png',
      'asset/images/sliderhouse2.png',
      'asset/images/sliderhouse3.png',
    ];
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
              style: TextStyle(color: Colors.black),
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
            successDialog(
                context: context,
                message: state.bookHouseModel.message.toString());
            log(state.bookHouseModel.message.toString());
          }
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state is BookHouseLoadingState ? true : false,
            progressIndicator:
                const RiveAnimation.asset('asset/animations/loadingEarth.riv'),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  leading: IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  backgroundColor: Colors.amber[200],
                  pinned: true,
                  toolbarHeight: 60,
                  elevation: 0,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(0.h),
                    child: Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.r),
                              topRight: Radius.circular(40.r))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                getHouseModel.ownerName.toString(),
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500),
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  expandedHeight: Get.height * 0.55,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'asset/images/sliderhouse3.png',
                      fit: BoxFit.cover,
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
                          description: '${getHouseModel.fee} টাকা',
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.add_home_work_outlined,
                          title: 'রুম সংখাঃ',
                          description: getHouseModel.quantity.toString(),
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.electrical_services_outlined,
                          title: 'বিদ্যুৎ বিলঃ',
                          description: '${getHouseModel.electricityFee} টাকা',
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.gas_meter_outlined,
                          title: 'গ্যাস বিলঃ',
                          description: '${getHouseModel.gasFee} টাকা',
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.money,
                          title: 'অন্যান্য বিলঃ',
                          description: '${getHouseModel.othersFee} টাকা',
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.currency_exchange,
                          title: 'অগ্রিমঃ',
                          description: '${getHouseModel.advanceFee} টাকা',
                        ),
                        gap(),
                        setInfo(
                          icon: Icons.location_on_outlined,
                          title: 'ঠিকানাঃ',
                          description: getHouseModel.address.toString(),
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
                            getHouseModel.notice.toString(),
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                        gap(),
                        SizedBox(
                          height: 130.h,
                          width: Get.width,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: roomList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.w),
                                  child: Image.asset(
                                    roomList[index],
                                    fit: BoxFit.cover,
                                  ),
                                );
                              }),
                        ),
                        gap(),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          width: Get.width,
                          child: MaterialButton(
                            color: Colors.orange[300],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r)),
                            onPressed: () {
                              log(getHouseModel.id!.toString());
                              String ownerName = getHouseModel.ownerName!;
                              String ownerNumber = getHouseModel.ownerNumber!;

                              if (getHouseModel.status == 'booked') {
                                warningDialog(
                                    context: context,
                                    message: 'Already booked');
                              } else {
                                BlocProvider.of<BookHouseCubit>(context)
                                    .bookRoom(
                                  phoneNumber: StorageUtils.getNumber(),
                                  ownerName: ownerName,
                                  ownerNumber: ownerNumber,
                                  houseId: getHouseModel.id!,
                                );
                              }
                            },
                            child: const Text(
                              'এখনি বুক করুন',
                              style: TextStyle(color: Colors.white),
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
