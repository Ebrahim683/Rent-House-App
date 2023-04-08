import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/data/model/gethousemodel/get_house_list_model.dart';
import 'package:rent_house/data/model/gethousemodel/get_house_model.dart';
import 'package:rent_house/state/cubit/gethouse/get_house_list_cubit.dart';
import 'package:rent_house/state/cubit/gethouse/get_house_list_state.dart';
import 'package:rent_house/utils/app_colors.dart';
import 'package:rent_house/widget/app_widget.dart';

import 'house_widget.dart';

class HouseListPage extends StatelessWidget {
  final String category;
  const HouseListPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: transparentColor,
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  )),
            ),
          ),
          gap(),
          Expanded(
            child: BlocBuilder<GetHouseListCubit, GetHouseListState>(
              builder: (context, state) {
                if (state is GetHouseListLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is GetHouseListSuccessState) {
                  GetHouseListModel getHouseListModel = state.getHouseListModel;
                  List<GetHouseModel>? getHouseModel =
                      getHouseListModel.getHouseModel;
                  return ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: getHouseModel?.length,
                    itemBuilder: (context, index) {
                      return HouseWidget(getHouseModel: getHouseModel![index]);
                    },
                  );
                } else if (state is GetHouseListErrorState) {
                  return Center(
                    child: Text(state.error),
                  );
                } else {
                  return const Center(
                    child: Text('Error'),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
