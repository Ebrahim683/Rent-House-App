import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/data/model/owner/ownerhousemodel/owner_house_list_model.dart';
import 'package:rent_house/pages/owners/dashboard/room_widget.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/state/cubit/owner/showownerhouse/show_owner_house_cubit.dart';
import 'package:rent_house/state/cubit/owner/showownerhouse/show_owner_house_state.dart';
import 'package:rent_house/utils/strings.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:rent_house/widget/app_widget.dart';

import '../../../utils/storage_utils.dart';

class OwnerDashboardPage extends StatelessWidget {
  const OwnerDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    handlePopUp(int value) {
      switch (value) {
        case 0:
          StorageUtils.logOut();
          pushOff(name: login_page);
          break;
        case 1:
          push(name: users_list_page);
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
              const PopupMenuItem<int>(value: 1, child: Text('ভাড়াইটা লিস্ট')),
            ],
          ),
        ],
      ),
      body: Column(
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
            child: BlocConsumer<ShowOwnerHouseCubit, ShowOwnerHouseState>(
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
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        ],
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
