import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/data/model/bookedhousemodel/booked_house_list_model.dart';
import 'package:rent_house/state/cubit/leaveroomrequest/leave_room_request_cubit.dart';
import 'package:rent_house/state/cubit/leaveroomrequest/leave_room_request_state.dart';
import 'package:rent_house/utils/storage_utils.dart';
import 'package:rent_house/utils/utils.dart';

import '../../../utils/app_colors.dart';
import '../../../widget/app_widget.dart';

class BookedHouseDetailsPage extends StatelessWidget {
  final BookedHouseModel bookedHouseModel;
  const BookedHouseDetailsPage({super.key, required this.bookedHouseModel});

  @override
  Widget build(BuildContext context) {
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

    handlePopUp(int value) {
      switch (value) {
        case 0:
          log(bookedHouseModel.id!.toString());
          BlocProvider.of<LeaveRoomRequestCubit>(context).leaveRoom(
            id: bookedHouseModel.id!,
            userName: storageUtils.getName!,
            userNumber: storageUtils.getNumber!,
          );
          break;
        default:
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(bookedHouseModel.ownerName.toString()),
        actions: [
          PopupMenuButton<int>(
            onSelected: (value) => handlePopUp(value),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 0,
                child: Text('রুম ছাড়ুন'),
              ),
            ],
          ),
        ],
      ),
      body: BlocConsumer<LeaveRoomRequestCubit, LeaveRoomRequestState>(
        listener: (context, state) {
          if (state is LeaveRoomRequestErrorState) {
            errorDialog(context: context, message: state.error);
          } else if (state is LeaveRoomRequestSuccessState) {
            successDialog(
                context: context,
                message: state.commonModel.message.toString());
          }
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state is LeaveRoomRequestLoadingState ? true : false,
            progressIndicator: Lottie.asset(
              'asset/animations/timer.json',
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  gap(h: 5.h),
                  setInfo(
                    icon: Icons.person,
                    title: 'বাড়ীওয়ালার নামঃ ',
                    description: '${bookedHouseModel.ownerName}',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.style_outlined,
                    title: 'রুমের ধরনঃ ',
                    description: '${bookedHouseModel.category}',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.wallet,
                    title: 'মাসিক ভাড়াঃ',
                    description: '${bookedHouseModel.fee} টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.add_home_work_outlined,
                    title: 'রুম সংখাঃ',
                    description: bookedHouseModel.quantity.toString(),
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.electrical_services_outlined,
                    title: 'বিদ্যুৎ বিলঃ',
                    description: '${bookedHouseModel.electricityFee} টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.gas_meter_outlined,
                    title: 'গ্যাস বিলঃ',
                    description: '${bookedHouseModel.gasFee} টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.money,
                    title: 'অন্যান্য বিলঃ',
                    description: '${bookedHouseModel.othersFee} টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.currency_exchange,
                    title: 'অগ্রিমঃ',
                    description: '${bookedHouseModel.advanceFee} টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.location_on_outlined,
                    title: 'ঠিকানাঃ',
                    description: bookedHouseModel.address.toString(),
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.money,
                    title: 'অগ্রিম টাকা পরিশোধঃ ',
                    description: '${bookedHouseModel.payment}',
                  ),
                  gap(),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.h),
                    padding:
                        EdgeInsets.symmetric(vertical: 5.w, horizontal: 10.h),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 190, 196, 195),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text(
                      bookedHouseModel.notice.toString(),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  gap(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
