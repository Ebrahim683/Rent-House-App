import 'dart:developer';

import 'package:flutter/material.dart';
import '../../../../data/model/housemodel/house_list_model.dart';
import 'house_widget.dart';

class HouseSearch extends SearchDelegate {
  final List<HouseModel> houseListModel;
  HouseSearch({required this.houseListModel});
  List<HouseModel>? filterHouse;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        filterHouse!.clear();
        log(filterHouse!.length.toString());
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    (filterHouse ?? []).clear();
    filterHouse = houseListModel
        .where((houseModel) =>
            houseModel.address!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    filterHouse!.sort(
      (a, b) => a.fee!.compareTo(b.fee!),
    );
    log(filterHouse!.length.toString());
    return ListView.builder(
      itemCount: (filterHouse ?? []).length,
      itemBuilder: (context, index) {
        return HouseWidget(getHouseModel: filterHouse![index]);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: houseListModel.length,
      itemBuilder: (context, index) {
        return HouseWidget(getHouseModel: houseListModel[index]);
      },
    );
  }
}
