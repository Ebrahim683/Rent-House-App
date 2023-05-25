import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:rent_house/data/model/housemodel/house_list_model.dart';
import 'package:rent_house/state/cubit/gethouse/get_house_list_cubit.dart';
import 'package:rent_house/state/cubit/gethouse/get_house_list_state.dart';
import 'package:rent_house/utils/utils.dart';

import '../../../../widget/app_widget.dart';
import 'house_search.dart';
import 'house_widget.dart';

class HouseListPage extends StatefulWidget {
  final String category;
  final String title;
  const HouseListPage({super.key, required this.category, required this.title});

  @override
  State<HouseListPage> createState() => _HouseListPageState();
}

class _HouseListPageState extends State<HouseListPage> {
  String search = '';
  List<HouseModel> houseListModelSearch = [];
  @override
  Widget build(BuildContext context) {
    refreshCallBack() async {
      setState(() {
        BlocProvider.of<GetHouseListCubit>(context).getHouse();
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () => showSearch(
                  context: context,
                  delegate: HouseSearch(houseListModel: houseListModelSearch)),
              icon: const Icon(Icons.search)),
        ],
      ),
      body: LiquidPullToRefresh(
        onRefresh: refreshCallBack,
        child: BlocConsumer<GetHouseListCubit, GetHouseListState>(
          listener: (context, state) {
            if (state is GetHouseListErrorState) {
              errorDialog(context: context, message: state.error);
            }
          },
          builder: (context, state) {
            if (state is GetHouseListLoadingState) {
              return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => userHouseListLoadingWidget(),
              );
            } else if (state is GetHouseListSuccessState) {
              HouseListModel houseListModel = state.houseListModel;
              List<HouseModel>? houseModel = houseListModel.houseModel;
              if (state.houseListModel.status == 'fail' ||
                  state.houseListModel.houseModel!.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(state.houseListModel.message.toString()),
                      gap(),
                      refreshButton(onPress: () {
                        BlocProvider.of<GetHouseListCubit>(context).getHouse();
                      }),
                    ],
                  ),
                );
              } else {
                houseListModelSearch.addAll(houseModel!);
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: houseModel.length,
                  itemBuilder: (context, index) {
                    return HouseWidget(getHouseModel: houseModel[index]);
                  },
                );
              }
            } else if (state is GetHouseListErrorState) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.error),
                    gap(),
                    refreshButton(onPress: () {
                      BlocProvider.of<GetHouseListCubit>(context).getHouse();
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
                      BlocProvider.of<GetHouseListCubit>(context).getHouse();
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
