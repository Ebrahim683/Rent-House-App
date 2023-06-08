import 'package:flutter/material.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/widget/app_widget.dart';
import '../../../../data/model/housemodel/house_list_model.dart';
import 'house_widget.dart';
import 'dart:developer';

class HouseSearch extends SearchDelegate {
  final List<HouseModel> houseListModel;
  HouseSearch({required this.houseListModel});
  List<HouseModel> newList = [];
  bool sort = false;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
      gap(),
      IconButton(
        icon: const Icon(Icons.settings),
        onPressed: () {
          sort = true;
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        pop(context: context);
        newList.clear();
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    newList.clear();
    HouseModel temp;

    for (var houseModel in houseListModel) {
      if (houseModel.address == query) {
        newList.add(houseModel);
      }
    }

    for (int i = 0; i < newList.length; i++) {
      for (int j = i + 1; j < newList.length; j++) {
        if (newList[i].fee! > newList[j].fee!) {
          temp = newList[i];
          newList[i] = newList[j];
          newList[j] = temp;
        }
      }
    }

    return ListView.builder(
      itemCount: newList.length,
      itemBuilder: (context, index) {
        if (newList.isEmpty) {
          return Container();
        } else {
          log(newList[index].toString());
          return HouseWidget(getHouseModel: newList[index]);
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
