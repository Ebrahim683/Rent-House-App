import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:rent_house/state/cubit/owner/singlehouse/single_house_cubit.dart';
import 'package:rent_house/state/cubit/owner/singlehouse/single_house_state.dart';
import 'package:rent_house/utils/utils.dart';

import '../../../data/model/housemodel/house_list_model.dart';
import '../../../data/model/owner/bookhouserequestmodel/book_house_request_list_model.dart';
import '../../../widget/app_widget.dart';

class ApproveBookRequestPage extends StatefulWidget {
  final BookHouseRequestModel bookedHouseRequestModel;
  const ApproveBookRequestPage(
      {super.key, required this.bookedHouseRequestModel});

  @override
  State<ApproveBookRequestPage> createState() => _ApproveBookRequestPageState();
}

class _ApproveBookRequestPageState extends State<ApproveBookRequestPage> {
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
              successDialog(
                  context: context, message: state.commonModel.message!);
            }
          },
          builder: (context, state) {
            if (state is SuccessState) {
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
                return Center(
                  child: Text(getHouseModel[0].ownerName.toString()),
                );
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          BlocProvider.of<SingleHouseCubit>(context).approve(
              houseId: widget.bookedHouseRequestModel.houseId!,
              userNumber: widget.bookedHouseRequestModel.userNumber.toString());
        },
        child: const Icon(
          Icons.done,
          color: Colors.white,
        ),
      ),
    );
  }
}
