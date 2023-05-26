import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/data/model/owner/leaveroomlistmodel/leave_room_list_model.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:rent_house/widget/app_widget.dart';
import 'package:shimmer/shimmer.dart';

import '../../../state/cubit/owner/leaveroomrequestlist/leave_room_request_list_cubit.dart';
import '../../../state/cubit/owner/leaveroomrequestlist/leave_room_request_list_state.dart';

class LeaveRoomRequestListPage extends StatefulWidget {
  const LeaveRoomRequestListPage({super.key});

  @override
  State<LeaveRoomRequestListPage> createState() =>
      _LeaveRoomRequestListPageState();
}

class _LeaveRoomRequestListPageState extends State<LeaveRoomRequestListPage> {
  @override
  Widget build(BuildContext context) {
    refreshCallBack() async {
      setState(() {
        BlocProvider.of<LeaveRoomRequestListCubit>(context).getRequestList();
      });
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('রুম ছাড়ার আবেদন'),
      // ),
      body: LiquidPullToRefresh(
        child:
            BlocConsumer<LeaveRoomRequestListCubit, LeaveRoomRequestListState>(
          listener: (context, state) {
            if (state is LeaveRoomRequestErrorState) {
              errorDialog(context: context, message: state.error);
            }
          },
          builder: (context, state) {
            if (state is LeaveRoomRequestLoadingState) {
              return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Shimmer(
                    gradient: const LinearGradient(
                        colors: [Colors.black45, Colors.white60]),
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.teal,
                      ),
                      title: Container(
                        height: 15.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                      ),
                      subtitle: Container(
                        height: 15.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                      ),
                      trailing: const CircleAvatar(
                        backgroundColor: Colors.teal,
                      ),
                    ),
                  );
                },
              );
            } else if (state is LeaveRoomRequestSuccessState) {
              LeaveRoomListModel leaveRoomListModel = state.leaveRoomListModel;
              List<LeaveRoomModel>? leaveRoomModel =
                  leaveRoomListModel.leaveRoomModel;
              if (state.leaveRoomListModel.status == 'fail') {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(state.leaveRoomListModel.message.toString()),
                      gap(),
                      refreshButton(onPress: () {
                        BlocProvider.of<LeaveRoomRequestListCubit>(context)
                            .getRequestList();
                      }),
                    ],
                  ),
                );
              } else {
                return LoadingOverlay(
                  isLoading:
                      state is LeaveRoomRequestLoadingState ? true : false,
                  progressIndicator: Lottie.asset(
                    'asset/animations/timer.json',
                  ),
                  child: ListView.builder(
                    itemCount: (leaveRoomModel ?? []).length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          child:
                              Text(leaveRoomModel![index].requestId.toString()),
                        ),
                        title: Text(leaveRoomModel[index].userName.toString()),
                        subtitle:
                            Text(leaveRoomModel[index].userNumber.toString()),
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            approve_page,
                            arguments: {
                              'leaveRoomModel': leaveRoomModel[index]
                            },
                          );
                        },
                      );
                    },
                  ),
                );
              }
            } else if (state is LeaveRoomRequestErrorState) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.error),
                    gap(),
                    refreshButton(onPress: () {
                      BlocProvider.of<LeaveRoomRequestListCubit>(context)
                          .getRequestList();
                    }),
                  ],
                ),
              );
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Something went wrong try again'),
                    gap(),
                    refreshButton(onPress: () {
                      BlocProvider.of<LeaveRoomRequestListCubit>(context)
                          .getRequestList();
                    }),
                  ],
                ),
              );
            }
          },
        ),
        onRefresh: () => refreshCallBack(),
      ),
    );
  }
}
