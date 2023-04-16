import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HouseSearch extends SearchDelegate {
  List<String> data = [
    'windows',
    'apple',
    'mango',
    'mango2',
    'guava',
    'banana'
  ];
  List<String> sug = ['windows', 'apple'];
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
    if (query != null && data.contains(query.toLowerCase())) {
      return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          if (data.contains(query.toLowerCase())) {
            return ListTile(
              title: Text(data[index]),
            );
          }
        },
      );
    } else if (query == '') {
      return const Text('');
    } else {
      return const ListTile(
        title: Text('No result found'),
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: sug.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(sug[index]),
        );
      },
    );
  }
}
