import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rent_house/data/model/owner/leaveroomlistmodel/leave_room_list_model.dart';
import 'package:rent_house/state/cubit/owner/approve/approve_cubit.dart';
import 'package:rent_house/state/cubit/owner/approve/approve_state.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:rive/rive.dart';

import '../../../utils/app_colors.dart';
import '../../../widget/app_widget.dart';

class ApprovePage extends StatelessWidget {
  final LeaveRoomModel leaveRoomModel;
  const ApprovePage({super.key, required this.leaveRoomModel});

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
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(leaveRoomModel.userName.toString()),
      ),
      body: BlocConsumer<ApproveCubit, ApproveState>(
        listener: (context, state) {
          if (state is ApproveSuccessState) {
            successDialog(
                context: context, message: state.authModel.message.toString());
          } else if (state is ApproveErrorState) {
            errorDialog(context: context, message: state.error);
          }
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state is ApproveLoadingState ? true : false,
            progressIndicator:
                const RiveAnimation.asset('asset/animations/loadingEarth.riv'),
            child: Column(
              children: [
                setInfo(
                  icon: Icons.person,
                  title: 'বাড়ীওয়ালার নামঃ ',
                  description: '${leaveRoomModel.ownerName}',
                ),
                gap(),
                setInfo(
                  icon: Icons.dialpad,
                  title: 'বাড়ীওয়ালার নাম্বার ',
                  description: '${leaveRoomModel.ownerNumber}',
                ),
                gap(),
                setInfo(
                  icon: Icons.person,
                  title: 'ভাড়াটিয়ার নামঃ ',
                  description: '${leaveRoomModel.userName}',
                ),
                gap(),
                setInfo(
                  icon: Icons.dialpad,
                  title: 'ভাড়াটিয়ার নাম্বার ',
                  description: '${leaveRoomModel.userNumber}',
                ),
                gap(),
                setInfo(
                  icon: Icons.style_outlined,
                  title: 'রুমের ধরনঃ ',
                  description: '${leaveRoomModel.category}',
                ),
                gap(),
                setInfo(
                  icon: Icons.wallet,
                  title: 'মাসিক ভাড়াঃ',
                  description: '${leaveRoomModel.fee} টাকা',
                ),
                gap(),
                setInfo(
                  icon: Icons.location_on_outlined,
                  title: 'ঠিকানাঃ',
                  description: leaveRoomModel.address.toString(),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          BlocProvider.of<ApproveCubit>(context).approve(
            requestId: leaveRoomModel.requestId!,
            houseId: leaveRoomModel.houseId!,
            userName: leaveRoomModel.userName!,
            userNumber: leaveRoomModel.userNumber!,
          );
        },
        child: const Icon(
          Icons.done,
          color: Colors.white,
        ),
      ),
    );
  }
}