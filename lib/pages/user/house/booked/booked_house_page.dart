import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:rent_house/data/model/bookedhousemodel/booked_house_list_model.dart';
import 'package:rent_house/pages/user/house/booked/booked_house_widget.dart';
import 'package:rent_house/state/cubit/showbookedhouse/show_booked_house_cubit.dart';
import 'package:rent_house/state/cubit/showbookedhouse/show_booked_house_state.dart';
import 'package:rent_house/utils/app_colors.dart';
import 'package:rent_house/utils/assets.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../widget/app_widget.dart';

class BookedHousePage extends StatefulWidget {
  const BookedHousePage({super.key});

  @override
  State<BookedHousePage> createState() => _BookedHousePageState();
}

class _BookedHousePageState extends State<BookedHousePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    refreshCallBack() async {
      setState(() {
        BlocProvider.of<ShowBookedHouseCubit>(context).showBookedHouse();
      });
    }

    return Scaffold(
      backgroundColor: userBackgroundColor,
      body: LiquidPullToRefresh(
        onRefresh: () => refreshCallBack(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.4,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.r),
                    bottomRight: Radius.circular(35.r),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white38,
                      radius: 90.r,
                      child: Center(
                        child: Image.asset(
                          booked_house_list_icon,
                          height: 120.h,
                          width: 120.w,
                        ),
                      ),
                    ),
                    Text(
                      'ভাড়াকৃত রুমের তালিকা',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: BlocConsumer<ShowBookedHouseCubit, ShowBookedHouseState>(
                  listener: (context, state) {
                    if (state is ShowBookedHouseErrorState) {
                      log(state.error);
                      errorDialog(context: context, message: state.error);
                    }
                  },
                  builder: (context, state) {
                    if (state is ShowBookedHouseLoadingState) {
                      return SizedBox(
                        child: Shimmer(
                          period: const Duration(seconds: 2),
                          gradient: const LinearGradient(
                              colors: [Colors.black45, Colors.white60]),
                          child: ListView.builder(
                            padding: EdgeInsets.only(top: 15.h),
                            itemCount: 10,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return Container(
                                width: size.width,
                                height: size.height * 0.2,
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  color: Colors.white,
                                ),
                              );
                            },
                          ),
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
                      if (bookedHouseListModel.status == 'fail') {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(state.bookedHouseListModel.message
                                  .toString()),
                              gap(),
                              refreshButton(onPress: () {
                                BlocProvider.of<ShowBookedHouseCubit>(context)
                                    .showBookedHouse();
                              }),
                            ],
                          ),
                        );
                      } else {
                        List<BookedHouseModel> bookedHouseModel =
                            bookedHouseListModel.bookedHouseModel!;
                        return SizedBox(
                          child: ListView.builder(
                            padding: EdgeInsets.only(top: 10.h),
                            itemCount: bookedHouseModel.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) => BookedHouseWidget(
                                bookedHouseModel: bookedHouseModel[index]),
                          ),
                        );
                      }
                    } else {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Something went wrong'),
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
            ],
          ),
        ),
      ),
    );
  }
}
