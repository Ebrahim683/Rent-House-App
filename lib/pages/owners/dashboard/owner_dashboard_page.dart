import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:rent_house/data/model/owner/ownerhousemodel/owner_house_list_model.dart';
import 'package:rent_house/pages/owners/dashboard/room_widget.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/state/cubit/owner/showownerhouse/show_owner_house_cubit.dart';
import 'package:rent_house/state/cubit/owner/showownerhouse/show_owner_house_state.dart';
import 'package:rent_house/utils/strings.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:rent_house/widget/app_widget.dart';

import '../../../utils/storage_utils.dart';

class OwnerDashboardPage extends StatefulWidget {
  const OwnerDashboardPage({super.key});

  @override
  State<OwnerDashboardPage> createState() => _OwnerDashboardPageState();
}

class _OwnerDashboardPageState extends State<OwnerDashboardPage> {
  void getCurrentPosition() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      Geolocator.requestPermission();
    } else {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      log(position.longitude.toString());
      log(position.latitude.toString());
      getAddress(position);
    }
  }

  getAddress(Position position) async {
    try {
      List<Placemark> placemark =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark place = placemark[0];
      log('${place}');
      String address =
          '${place.subLocality},${place.locality},${place.subAdministrativeArea},${place.administrativeArea}';
      StorageUtils.saveLocation(address);
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    log('${StorageUtils.getName()} ${StorageUtils.getNumber()}');
  }

  @override
  Widget build(BuildContext context) {
    refreshCallBack() async {
      setState(() {
        BlocProvider.of<ShowOwnerHouseCubit>(context).showOwnerHouse();
      });
    }

    handlePopUp(int value) {
      switch (value) {
        case 0:
          StorageUtils.logOut();
          pushOff(name: login_page);
          break;
        case 1:
          push(name: users_list_page);
          break;
        case 2:
          push(name: leave_room_page_request_list_page);
          break;
        default:
          null;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(appName),
        actions: [
          PopupMenuButton<int>(
            onSelected: (value) => handlePopUp(value),
            itemBuilder: (context) => [
              const PopupMenuItem<int>(value: 0, child: Text('লগ আউট')),
              const PopupMenuItem<int>(value: 1, child: Text('ভাড়াটিয়া লিস্ট')),
              const PopupMenuItem<int>(
                  value: 2, child: Text('রুম ছাড়ার আবেদন')),
            ],
          ),
        ],
      ),
      body: LiquidPullToRefresh(
        onRefresh: refreshCallBack,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'রুম লিস্ট',
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
            ),
            gap(),
            Expanded(
              child: BlocProvider<ShowOwnerHouseCubit>(
                create: (context) => ShowOwnerHouseCubit(),
                child: BlocConsumer<ShowOwnerHouseCubit, ShowOwnerHouseState>(
                  bloc: ShowOwnerHouseCubit(),
                  listener: (context, state) {
                    if (state is ShowOwnerHouseErrorState) {
                      log(state.error);
                      errorDialog(context: context, message: state.error);
                    }
                  },
                  builder: (context, state) {
                    if (state is ShowOwnerHouseLoadingState) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state is ShowOwnerHouseSuccessState) {
                      OwnerHouseListModel ownerHouseListModel =
                          state.ownerHouseListModel;
                      List<OwnerHouseModel> ownerHouseModel =
                          ownerHouseListModel.ownerHouseModel!;
                      return ListView.builder(
                        itemCount: ownerHouseModel.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return RoomWidget(
                              ownerHouseModel: ownerHouseModel[index]);
                        },
                      );
                    } else {
                      return const Center(
                        child: Text('Something went wrong try to refresh'),
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          push(name: add_house_page);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
