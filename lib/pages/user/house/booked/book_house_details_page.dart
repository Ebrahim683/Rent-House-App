import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rent_house/data/model/bookedhousemodel/booked_house_list_model.dart';
import 'package:rent_house/state/cubit/leaveroomrequest/leave_room_request_cubit.dart';
import 'package:rent_house/state/cubit/leaveroomrequest/leave_room_request_state.dart';
import 'package:rent_house/utils/notification_service.dart';
import 'package:rent_house/utils/storage_utils.dart';
import 'package:rent_house/utils/utils.dart';
import '../../../../routers/routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/assets.dart';
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
    super.initState();
    NotificationService.getPersonDeviceToken(
            number: widget.bookedHouseModel.ownerNumber.toString())
        .then((value) => deviceToken = value);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
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
      body: BlocConsumer<LeaveRoomRequestCubit, LeaveRoomRequestState>(
          listener: (context, state) {
        if (state is LeaveRoomRequestErrorState) {
          errorDialog(context: context, message: state.error);
        } else if (state is LeaveRoomRequestSuccessState) {
          NotificationService.sentNotification(
              deviceToken: deviceToken,
              title: 'রুম ছাড়ার আবেদন',
              body: '${storageUtils.getName} রুম ছাড়ার জন্য আবেদন করেছেন');
          showSnackBar(
              context: context,
              title: 'সফল',
              message: state.commonModel.message.toString());
          pop(context: context);
        }
      }, builder: (context, state) {
        return LoadingOverlay(
          isLoading: state is LeaveRoomRequestLoadingState ? true : false,
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
                            number:
                                widget.bookedHouseModel.ownerNumber.toString());
                      },
                      child: Image.asset(
                        call_icon,
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
                  )
                ],
                toolbarHeight: 60,
                elevation: 0,
                expandedHeight: size.height * 0.3,
                backgroundColor: transparentColor,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      CachedNetworkImage(
                        imageUrl: widget.bookedHouseModel.image.toString(),
                        fit: BoxFit.cover,
                        width: size.width,
                        progressIndicatorBuilder: (context, url, progress) =>
                            Center(
                          child: Image.asset(loading_image),
                        ),
                        errorWidget: (context, url, error) => Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(error_image),
                        ),
                      ),
                      Positioned(
                        bottom: 10.h,
                        left: 20.w,
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
                                  widget.bookedHouseModel.ownerName.toString(),
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
                        description: widget.bookedHouseModel.address.toString(),
                      ),
                      gap(h: 10.h),
                      setInfo(
                        icon: call_icon,
                        title: 'ফোনঃ',
                        description:
                            widget.bookedHouseModel.ownerNumber.toString(),
                      ),
                      gap(h: 10.h),
                      setInfo(
                        icon: fee_icon,
                        title: 'ভাড়াঃ',
                        description: widget.bookedHouseModel.fee.toString(),
                      ),
                      gap(h: 10.h),
                      setInfo(
                        icon: advance_fee_icon,
                        title: 'অগ্রিমঃ',
                        description:
                            widget.bookedHouseModel.advanceFee.toString(),
                      ),
                      gap(h: 10.h),
                      setInfo(
                        icon: gas_fee_icon,
                        title: 'গ্যাস বিলঃ',
                        description: widget.bookedHouseModel.gasFee.toString(),
                      ),
                      gap(h: 10.h),
                      setInfo(
                        icon: electricity_fee_icon,
                        title: 'বিদ্যুৎ বিলঃ',
                        description:
                            widget.bookedHouseModel.electricityFee.toString(),
                      ),
                      gap(h: 10.h),
                      setInfo(
                        icon: others_fee_icon,
                        title: 'অন্যান্য বিলঃ',
                        description:
                            widget.bookedHouseModel.othersFee.toString(),
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
                              child: Text(
                                  widget.bookedHouseModel.notice.toString()),
                            ),
                          ],
                        ),
                      ),
                      gap(h: 20.h),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.w),
                        width: size.width,
                        height: 50.h,
                        child: MaterialButton(
                          color: btnColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r)),
                          onPressed: () {
                            BlocProvider.of<LeaveRoomRequestCubit>(context)
                                .leaveRoom(
                                    id: widget.bookedHouseModel.id!,
                                    userName: storageUtils.getName.toString(),
                                    userNumber:
                                        storageUtils.getNumber.toString());
                          },
                          child: const Text(
                            'রুম ছাড়ার আবেদন করুন',
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
      }),
    );
  }
}
