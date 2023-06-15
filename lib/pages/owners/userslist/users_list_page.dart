import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/data/model/owner/bookedroommodel/show_booked_room_list_model.dart';
import 'package:rent_house/state/cubit/owner/showownerbookedhouse/show_owner_booked_house_cubit.dart';
import 'package:rent_house/state/cubit/owner/showownerbookedhouse/show_owner_booked_house_state.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:shimmer/shimmer.dart';

import '../../../routers/routes.dart';
import '../../../widget/app_widget.dart';

class UsersListPage extends StatefulWidget {
  const UsersListPage({super.key});

  @override
  State<UsersListPage> createState() => _UsersListPageState();
}

class _UsersListPageState extends State<UsersListPage> {
  refreshCallBack() async {
    setState(() {
      BlocProvider.of<ShowOwnerBookedHouseCubit>(context).showUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('ভারাটিয়া লিস্ট'),
      // ),
      body: LiquidPullToRefresh(
        onRefresh: () => refreshCallBack(),
        child:
            BlocConsumer<ShowOwnerBookedHouseCubit, ShowOwnerBookedHouseState>(
          listener: (context, state) {
            if (state is ShowOwnerBookedHouseErrorState) {
              errorDialog(context: context, message: state.error);
            }
          },
          builder: (context, state) {
            if (state is ShowOwnerBookedHouseLoadingState) {
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
            } else if (state is ShowOwnerBookedHouseSuccessState) {
              ShowBookedRoomListModel showBookedRoomListModel =
                  state.showBookedRoomListModel;
              List<ShowBookedRoomModel>? showBookedRoomModel =
                  showBookedRoomListModel.bookedRoomModel;
              if (state.showBookedRoomListModel.status == 'fail') {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(state.showBookedRoomListModel.message.toString()),
                      gap(),
                      refreshButton(onPress: () {
                        BlocProvider.of<ShowOwnerBookedHouseCubit>(context)
                            .showUsers();
                      }),
                    ],
                  ),
                );
              } else {
                return LoadingOverlay(
                  isLoading:
                      state is ShowOwnerBookedHouseLoadingState ? true : false,
                  progressIndicator: Lottie.asset(
                    'asset/animations/timer.json',
                  ),
                  child: ListView.builder(
                    itemCount: (showBookedRoomModel ?? []).length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue[300],
                          child: Text((index + 1).toString()),
                        ),
                        trailing: IconButton(
                          onPressed: () async {
                            makeCall(
                                number: showBookedRoomModel![index]
                                    .userNumber
                                    .toString());
                          },
                          icon: const Icon(Icons.call),
                        ),
                        title: Text(
                            showBookedRoomModel![index].userName.toString()),
                        subtitle: Text(
                            showBookedRoomModel[index].userNumber.toString()),
                        onTap: () {
                          Navigator.pushNamed(context, profile_page,
                              arguments: {
                                'phoneNumber': showBookedRoomModel[index]
                                    .userNumber
                                    .toString(),
                                'role': 'user',
                              });
                        },
                      );
                    },
                  ),
                );
              }
            } else if (state is ShowOwnerBookedHouseErrorState) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.error),
                    gap(),
                    refreshButton(onPress: () {
                      BlocProvider.of<ShowOwnerBookedHouseCubit>(context)
                          .showUsers();
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
                      BlocProvider.of<ShowOwnerBookedHouseCubit>(context)
                          .showUsers();
                    }),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
