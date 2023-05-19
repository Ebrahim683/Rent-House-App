import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/model/housemodel/house_list_model.dart';
import 'house_widget.dart';

class HouseSearch extends SearchDelegate {
  final List<HouseModel> houseListModel;
  HouseSearch({required this.houseListModel});
  @override
  List<Widget>? buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Get.back();
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
      itemCount: houseListModel.length,
      itemBuilder: (context, index) {
        if (houseListModel[index].fee!.contains(query)) {
          return HouseWidget(getHouseModel: houseListModel[index]);
        } else if (houseListModel[index].address!.contains(query)) {
          return HouseWidget(getHouseModel: houseListModel[index]);
        } else {
          return Container();
        }
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
