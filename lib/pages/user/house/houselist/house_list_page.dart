import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:rent_house/data/model/housemodel/house_list_model.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/state/cubit/gethouse/get_house_list_cubit.dart';
import 'package:rent_house/state/cubit/gethouse/get_house_list_state.dart';
import 'package:rent_house/utils/utils.dart';
import '../../../../utils/app_colors.dart';
import '../../../../widget/app_widget.dart';
import 'house_widget.dart';

class HouseListPage extends StatefulWidget {
  final String category;
  final String title;
  final String image;
  const HouseListPage({
    super.key,
    required this.category,
    required this.title,
    required this.image,
  });

  @override
  State<HouseListPage> createState() => _HouseListPageState();
}

class _HouseListPageState extends State<HouseListPage> {
  List<HouseModel> houseListModelSearch = [];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    refreshCallBack() async {
      setState(() {
        BlocProvider.of<GetHouseListCubit>(context).getHouse();
      });
    }

    return Scaffold(
      backgroundColor: userHomeScreenTopScreenColor,
      body: LiquidPullToRefresh(
        onRefresh: refreshCallBack,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              toolbarHeight: 60,
              elevation: 0,
              floating: true,
              expandedHeight: size.height * 0.3,
              backgroundColor: transparentColor,
              actions: [
                IconButton(
                    onPressed: () {
                      Map<String, dynamic> arguments = {
                        'houseListModel': houseListModelSearch
                      };
                      Navigator.pushNamed(context, house_search_page,
                          arguments: arguments);
                    },
                    icon: const Icon(Icons.search)),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.r),
                      bottomRight: Radius.circular(50.r),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white38,
                        radius: 90.r,
                        child: Center(
                          child: Image.asset(
                            widget.image,
                            height: 120.h,
                            width: 120.w,
                          ),
                        ),
                      ),
                      gap(h: 10),
                      Text(
                        widget.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: BlocConsumer<GetHouseListCubit, GetHouseListState>(
                listener: (context, state) {
                  if (state is GetHouseListErrorState) {
                    errorDialog(context: context, message: state.error);
                  }
                },
                builder: (context, state) {
                  if (state is GetHouseListLoadingState) {
                    return SizedBox(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) =>
                            userHouseListLoadingWidget(context),
                      ),
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
                              BlocProvider.of<GetHouseListCubit>(context)
                                  .getHouse();
                            }),
                          ],
                        ),
                      );
                    } else {
                      houseListModelSearch.clear();
                      houseListModelSearch.addAll(houseModel!);
                      return SizedBox(
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: houseModel.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return HouseWidget(
                                getHouseModel: houseModel[index]);
                          },
                        ),
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
                            BlocProvider.of<GetHouseListCubit>(context)
                                .getHouse();
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
                            BlocProvider.of<GetHouseListCubit>(context)
                                .getHouse();
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
    );
  }
}
