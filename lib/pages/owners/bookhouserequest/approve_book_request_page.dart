import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/pages/owners/bookhouserequest/request_house_details.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/state/cubit/owner/singlehouse/single_house_cubit.dart';
import 'package:rent_house/state/cubit/owner/singlehouse/single_house_state.dart';
import 'package:rent_house/utils/utils.dart';

import '../../../data/model/housemodel/house_list_model.dart';
import '../../../data/model/owner/bookhouserequestmodel/book_house_request_list_model.dart';
import '../../../utils/notification_service.dart';
import '../../../utils/storage_utils.dart';
import '../../../widget/app_widget.dart';

class ApproveBookRequestPage extends StatefulWidget {
  final BookHouseRequestModel bookedHouseRequestModel;
  const ApproveBookRequestPage(
      {super.key, required this.bookedHouseRequestModel});

  @override
  State<ApproveBookRequestPage> createState() => _ApproveBookRequestPageState();
}

class _ApproveBookRequestPageState extends State<ApproveBookRequestPage> {
  String deviceToken = '';

  @override
  void initState() {
    super.initState();
    NotificationService.getPersonDeviceToken(
            number: widget.bookedHouseRequestModel.userNumber.toString())
        .then((value) => deviceToken = value);
  }

  @override
  Widget build(BuildContext context) {
    onRefresh() async {
      setState(() {});
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Approve Request'),
      ),
      body: LiquidPullToRefresh(
        onRefresh: onRefresh,
        child: BlocConsumer<SingleHouseCubit, SingleHouseState>(
          listener: (context, state) {
            if (state is ErrorState) {
              log(state.error);
              errorDialog(context: context, message: state.error);
            } else if (state is SuccessStateApprove) {
              NotificationService.sentNotification(
                  deviceToken: deviceToken,
                  title: 'আবেদন এপ্রুভ',
                  body: '${storageUtils.getName} আপনার আবেদন এপ্রুভ করেছেন');
              showSnackBar(
                  context: context,
                  title: 'সফল',
                  message: state.commonModel.message!);
              pop(context: context);
            }
          },
          builder: (context, state) {
            if (state is LoadingState) {
              return Center(
                child: Lottie.asset('asset/animations/timer.json'),
              );
            } else if (state is SuccessState) {
              HouseListModel getHouseListModel = state.houseListModel;
              List<HouseModel> getHouseModel = getHouseListModel.houseModel!;
              if (getHouseModel.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('No data found'),
                      gap(),
                      refreshButton(onPress: () {
                        setState(() {
                          BlocProvider.of<SingleHouseCubit>(context)
                              .singleHouse(
                                  time: widget.bookedHouseRequestModel.time
                                      .toString());
                        });
                      }),
                    ],
                  ),
                );
              } else {
                return LoadingOverlay(
                    isLoading: state is LoadingState ? true : false,
                    progressIndicator:
                        Lottie.asset('asset/animations/timer.json'),
                    child: RequestHouseDetails(houseModel: getHouseModel[0]));
              }
            } else if (state is ErrorState) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.error),
                    gap(),
                    refreshButton(onPress: () {
                      setState(() {
                        BlocProvider.of<SingleHouseCubit>(context).singleHouse(
                            time:
                                widget.bookedHouseRequestModel.time.toString());
                      });
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
                      setState(() {
                        BlocProvider.of<SingleHouseCubit>(context).singleHouse(
                            time:
                                widget.bookedHouseRequestModel.time.toString());
                      });
                    }),
                  ],
                ),
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.orange[300],
        onPressed: () {
          BlocProvider.of<SingleHouseCubit>(context).approve(
              time: widget.bookedHouseRequestModel.time!,
              userNumber: widget.bookedHouseRequestModel.userNumber.toString());
        },
        label: const Text(
          'Approve',
          style: TextStyle(color: Colors.white),
        ),
        icon: const Icon(
          Icons.done,
          color: Colors.white,
        ),
      ),
    );
  }
}
