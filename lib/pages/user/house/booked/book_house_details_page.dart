import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/data/model/bookedhousemodel/booked_house_list_model.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/state/cubit/leaveroomrequest/leave_room_request_cubit.dart';
import 'package:rent_house/state/cubit/leaveroomrequest/leave_room_request_state.dart';
import 'package:rent_house/utils/notification_service.dart';
import 'package:rent_house/utils/storage_utils.dart';
import 'package:rent_house/utils/utils.dart';

import '../../../../utils/app_colors.dart';
import '../../../../widget/app_widget.dart';

class BookedHouseDetailsPage extends StatefulWidget {
  final BookedHouseModel bookedHouseModel;
  const BookedHouseDetailsPage({super.key, required this.bookedHouseModel});

  @override
  State<BookedHouseDetailsPage> createState() => _BookedHouseDetailsPageState();
}

class _BookedHouseDetailsPageState extends State<BookedHouseDetailsPage> {
  String deviceToken = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NotificationService.getPersonDeviceToken(
            number: widget.bookedHouseModel.ownerNumber.toString())
        .then((value) => deviceToken = value);
  }

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

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.bookedHouseModel.ownerName.toString()),
      ),
      body: BlocConsumer<LeaveRoomRequestCubit, LeaveRoomRequestState>(
        listener: (context, state) {
          if (state is LeaveRoomRequestErrorState) {
            errorDialog(context: context, message: state.error);
          } else if (state is LeaveRoomRequestSuccessState) {
            NotificationService.sentNotification(
              deviceToken: deviceToken,
              title: 'রুম ছাড়ার আবেদন',
              body: '${storageUtils.getName} রুম ছাড়ার জন্য আবেদন করেছেন',
            );
            showSnackBar(
                context: context,
                title: 'সফল',
                message: state.commonModel.message.toString());
            pop(context: context);
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
                    description: '${widget.bookedHouseModel.ownerName}',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.style_outlined,
                    title: 'রুমের ধরনঃ ',
                    description: '${widget.bookedHouseModel.category}',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.wallet,
                    title: 'মাসিক ভাড়াঃ',
                    description: '${widget.bookedHouseModel.fee} টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.add_home_work_outlined,
                    title: 'রুম সংখাঃ',
                    description: widget.bookedHouseModel.quantity.toString(),
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.electrical_services_outlined,
                    title: 'বিদ্যুৎ বিলঃ',
                    description:
                        '${widget.bookedHouseModel.electricityFee} টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.gas_meter_outlined,
                    title: 'গ্যাস বিলঃ',
                    description: '${widget.bookedHouseModel.gasFee} টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.money,
                    title: 'অন্যান্য বিলঃ',
                    description: '${widget.bookedHouseModel.othersFee} টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.currency_exchange,
                    title: 'অগ্রিমঃ',
                    description: '${widget.bookedHouseModel.advanceFee} টাকা',
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.location_on_outlined,
                    title: 'ঠিকানাঃ',
                    description: widget.bookedHouseModel.address.toString(),
                  ),
                  gap(),
                  setInfo(
                    icon: Icons.money,
                    title: 'অগ্রিম টাকা পরিশোধঃ ',
                    description: '${widget.bookedHouseModel.payment}',
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
                      widget.bookedHouseModel.notice.toString(),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  gap(),
                  CupertinoButton(
                    color: btnColor,
                    child: const Text('রুম ছাড়ুন'),
                    onPressed: () {
                      BlocProvider.of<LeaveRoomRequestCubit>(context).leaveRoom(
                        id: widget.bookedHouseModel.id!,
                        userName: storageUtils.getName!,
                        userNumber: storageUtils.getNumber!,
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
