import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var controller = TextEditingController();
  List<int> dataList = [
    100,
    110,
    105,
    101,
    128,
    241,
    263,
    402,
    315,
    267,
    125,
    306,
  ];
  List<int> filteredList = [];
  String query = '';

  @override
  void initState() {
    super.initState();
    filteredList.clear();
    filteredList.addAll(dataList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: controller,
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      filteredList.sort(
                        (a, b) => a.compareTo(b),
                      );
                    });
                  },
                  icon: Icon(Icons.arrow_downward),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      filteredList.sort(
                        (a, b) => b.compareTo(a),
                      );
                    });
                  },
                  icon: Icon(Icons.arrow_upward),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      filteredList = dataList
                          .where((element) => element > 100 && element < 200)
                          .toList();
                    });
                  },
                  icon: Icon(Icons.filter_list_outlined),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredList.length,
                itemBuilder: (context, index) {
                  // return filteredList[index].toString().contains(query)
                  //     ? ListTile(
                  //         title: Text(filteredList[index].toString()),
                  //       )
                  //     : Container();
                  return ListTile(
                    title: Text(filteredList[index].toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
