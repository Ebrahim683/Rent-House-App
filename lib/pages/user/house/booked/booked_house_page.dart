import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/data/model/bookedhousemodel/booked_house_list_model.dart';
import 'package:rent_house/state/cubit/showbookedhouse/show_booked_house_cubit.dart';
import 'package:rent_house/state/cubit/showbookedhouse/show_booked_house_state.dart';
import 'package:rent_house/utils/utils.dart';
import '../../../../routers/routes.dart';
import '../../../../widget/app_widget.dart';

class BookedHousePage extends StatefulWidget {
  const BookedHousePage({super.key});

  @override
  State<BookedHousePage> createState() => _BookedHousePageState();
}

class _BookedHousePageState extends State<BookedHousePage> {
  @override
  Widget build(BuildContext context) {
    refreshCallBack() async {
      setState(() {
        BlocProvider.of<ShowBookedHouseCubit>(context).showBookedHouse();
      });
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('ভাড়াকৃত রুম'),
      // ),
      body: LiquidPullToRefresh(
        onRefresh: refreshCallBack,
        child: BlocConsumer<ShowBookedHouseCubit, ShowBookedHouseState>(
          listener: (context, state) {
            if (state is ShowBookedHouseErrorState) {
              log(state.error);
            } else if (state is ShowBookedHouseSuccessState) {
              log(state.bookedHouseListModel.toString());
            }
          },
          builder: (context, state) {
            if (state is ShowBookedHouseLoadingState) {
              return Center(
                child: Lottie.asset(
                  'asset/animations/timer.json',
                ),
              );
            } else if (state is ShowBookedHouseErrorState) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.error),
                    gap(),
                    refreshButton(onPress: () {
                      BlocProvider.of<ShowBookedHouseCubit>(context)
                          .showBookedHouse();
                    }),
                  ],
                ),
              );
            } else if (state is ShowBookedHouseSuccessState) {
              BookedHouseListModel bookedHouseListModel =
                  state.bookedHouseListModel;
              List<BookedHouseModel>? bookedHouseModel =
                  bookedHouseListModel.bookedHouseModel;
              if (state.bookedHouseListModel.status == 'fail') {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(state.bookedHouseListModel.message.toString()),
                      gap(),
                      refreshButton(onPress: () {
                        BlocProvider.of<ShowBookedHouseCubit>(context)
                            .showBookedHouse();
                      }),
                    ],
                  ),
                );
              } else {
                return LoadingOverlay(
                  isLoading:
                      state is ShowBookedHouseLoadingState ? true : false,
                  progressIndicator: Lottie.asset(
                    'asset/animations/timer.json',
                  ),
                  child: ListView.builder(
                    itemCount: (bookedHouseModel ?? []).length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          bookedHouseModel![index].ownerName.toString(),
                        ),
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue[300],
                          child: Text((index + 1).toString()),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              makeCall(
                                  number: bookedHouseModel[index]
                                      .ownerNumber
                                      .toString());
                            },
                            icon: const Icon(Icons.call)),
                        subtitle:
                            Text(bookedHouseModel[index].category.toString()),
                        onTap: () => Navigator.pushNamed(
                            context, booked_house_details_page, arguments: {
                          'bookedHouseModel': bookedHouseModel[index]
                        }),
                      );
                    },
                  ),
                );
              }
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Something went wrong try again'),
                    gap(),
                    refreshButton(onPress: () {
                      BlocProvider.of<ShowBookedHouseCubit>(context)
                          .showBookedHouse();
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
