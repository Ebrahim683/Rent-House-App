import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:rent_house/data/model/gethousemodel/get_house_list_model.dart';
import 'package:rent_house/data/model/gethousemodel/get_house_model.dart';
import 'package:rent_house/state/cubit/gethouse/get_house_list_cubit.dart';
import 'package:rent_house/state/cubit/gethouse/get_house_list_state.dart';
import 'package:rent_house/widget/app_widget.dart';
import 'house_widget.dart';

class HouseListPage extends StatefulWidget {
  final String category;
  final String title;
  const HouseListPage({super.key, required this.category, required this.title});

  @override
  State<HouseListPage> createState() => _HouseListPageState();
}

class _HouseListPageState extends State<HouseListPage> {
  @override
  Widget build(BuildContext context) {
    refreshCallBack() async {
      setState(() {});
    }

    final searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: LiquidPullToRefresh(
        onRefresh: refreshCallBack,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                onChanged: (value) {},
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
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
                    GetHouseListModel getHouseListModel =
                        state.getHouseListModel;
                    List<GetHouseModel>? getHouseModel =
                        getHouseListModel.getHouseModel;
                    return ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: getHouseModel?.length,
                      itemBuilder: (context, index) {
                        String fee = getHouseModel![index].fee.toString();
                        if (searchController.text.toString().isEmpty) {
                          return HouseWidget(
                              getHouseModel: getHouseModel[index]);
                        } else if (fee.toLowerCase().contains(
                            searchController.text.toLowerCase().toString())) {
                          return HouseWidget(
                              getHouseModel: getHouseModel[index]);
                        } else {
                          return Container();
                        }
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
      ),
    );
  }
}
