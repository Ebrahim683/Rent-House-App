import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_house/pages/house/houselist/house_widget.dart';

import '../../../data/model/gethousemodel/get_house_model.dart';

class HouseSearch extends SearchDelegate {
  final List<GetHouseModel> getHouseModelList;
  HouseSearch({required this.getHouseModelList});
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
      itemCount: getHouseModelList.length,
      itemBuilder: (context, index) {
        if (getHouseModelList[index].fee!.contains(query)) {
          return HouseWidget(getHouseModel: getHouseModelList[index]);
        } else if (getHouseModelList[index].address!.contains(query)) {
          return HouseWidget(getHouseModel: getHouseModelList[index]);
        } else {
          return Container();
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: getHouseModelList.length,
      itemBuilder: (context, index) {
        return HouseWidget(getHouseModel: getHouseModelList[index]);
      },
    );
  }
}
