import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/pages/user/house/houselist/house_widget.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/state/cubit/housesearch/house_search_cubit.dart';
import 'package:rent_house/state/cubit/housesearch/house_search_state.dart';
import 'package:rent_house/utils/assets.dart';
import 'package:rent_house/utils/utils.dart';
import '../../../../data/model/housemodel/house_list_model.dart';
import '../../../../widget/app_widget.dart';

class HouseSearchPage extends StatefulWidget {
  final List<HouseModel> houseListModel;
  const HouseSearchPage({super.key, required this.houseListModel});

  @override
  State<HouseSearchPage> createState() => _HouseSearchPageState();
}

class _HouseSearchPageState extends State<HouseSearchPage> {
  final searchController = TextEditingController();
  final lowController = TextEditingController();
  final highController = TextEditingController();
  String query = '';
  List<HouseModel> filteredList = [];

  @override
  void initState() {
    super.initState();
    filteredList.clear();
    filteredList = widget.houseListModel;
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<HouseSearchCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      hintText: 'Search...',
                    ),
                  ),
                ),
                IconButton.outlined(
                  onPressed: () {
                    query = searchController.text.toString();
                    bloc.searchHouse(query);
                  },
                  icon: const Icon(Icons.search_outlined),
                  color: Colors.black,
                ),
                IconButton.outlined(
                  onPressed: () {
                    if (query == '') {
                      bloc.sortHouse(query);
                    } else {
                      setState(() {
                        bloc.getAscending == true
                            ? bloc.setAscending(false)
                            : bloc.setAscending(true);
                        bloc.sortHouse(query);
                      });
                    }
                  },
                  icon: Icon(
                    bloc.getAscending == true
                        ? Icons.arrow_upward_outlined
                        : Icons.arrow_downward_outlined,
                  ),
                  color: Colors.black,
                ),
                IconButton.outlined(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Select price range'),
                          content: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text('From'),
                              gap(h: 10.h),
                              TextField(
                                controller: lowController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: '2000',
                                ),
                              ),
                              gap(h: 10.h),
                              const Text('To'),
                              gap(h: 10.h),
                              TextField(
                                controller: highController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: '5000',
                                ),
                              ),
                              gap(h: 10.h),
                              CupertinoButton.filled(
                                child: const Text('Filter'),
                                onPressed: () {
                                  String lowString =
                                      lowController.text.toString();
                                  String highString =
                                      highController.text.toString();
                                  if (lowString == '' || highString == '') {
                                    showSnackBar(
                                        context: context,
                                        title: 'Error',
                                        message: 'Enter filter range');
                                  } else {
                                    int? low = int.tryParse(lowString);
                                    int? high = int.tryParse(highString);
                                    bloc.filterHouse(query, low!, high!);
                                    pop(context: context);
                                    lowController.text = '';
                                    highController.text = '';
                                  }
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  icon: Image.asset(
                    filter_icon,
                    height: 25.h,
                    width: 25.w,
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<HouseSearchCubit, HouseSearchState>(
            builder: (context, state) {
              if (state is InitialState) {
                return buildSuggestion();
              } else if (state is SearchHouseState) {
                return searchListWidget(state.searchHouse);
              } else if (state is ErrorState) {
                return Center(
                  child: Text(state.error),
                );
              } else {
                return const Center(
                  child: Text('No result found'),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget buildSuggestion() {
    return const Center(
      child: Text(
        'Type address for search',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget searchListWidget(List<HouseModel> list) {
    return Expanded(
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          if (list[index].address!.contains(query)) {
            return HouseWidget(getHouseModel: list[index]);
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
