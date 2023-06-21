import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/pages/user/house/houselist/house_widget.dart';
import 'package:rent_house/state/cubit/housesearch/house_search_cubit.dart';
import 'package:rent_house/state/cubit/housesearch/house_search_state.dart';
import '../../../../data/model/housemodel/house_list_model.dart';

class HouseSearchPage extends StatefulWidget {
  final List<HouseModel> houseListModel;
  const HouseSearchPage({super.key, required this.houseListModel});

  @override
  State<HouseSearchPage> createState() => _HouseSearchPageState();
}

class _HouseSearchPageState extends State<HouseSearchPage> {
  final searchController = TextEditingController();
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
                    bloc.searchHouse(filteredList, query);
                  },
                  icon: const Icon(Icons.search_outlined),
                ),
                IconButton.outlined(
                  onPressed: () {
                    if (query == '') {
                      bloc.searchHouse(filteredList, query);
                    } else {
                      setState(() {
                        bloc.getAscending() == true
                            ? bloc.setAscending(false)
                            : bloc.setAscending(true);
                        bloc.searchHouse(filteredList, query);
                      });
                    }
                  },
                  icon: Icon(
                    bloc.getAscending() == true
                        ? Icons.arrow_upward_outlined
                        : Icons.arrow_downward_outlined,
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<HouseSearchCubit, HouseSearchState>(
            builder: (context, state) {
              if (state is InitialState) {
                return buildSuggestion(state.houseListModel);
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

  Widget buildSuggestion(List<HouseModel> list) {
    return Expanded(
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return HouseWidget(getHouseModel: list[index]);
        },
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
