import 'dart:developer';
import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:dio/dio.dart' as _dio;
import 'package:flutter/material.dart';
import 'package:rent_house/pages/house/houselist/house_search.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

  int tag = 0;
  List<String> options = [
    'Family',
    'Bachelor',
    'Female',
    'Sublet',
    'Office',
    'Warehouse',
    'Shop',
    'Garage',
    'Others',
    'Industry',
    'Flat Sell',
  ];

  // final controller = TextEditingController();
  // List<String> data = [
  //   'windows',
  //   'apple',
  //   'mango',
  //   'mango2',
  //   'guava',
  //   'banana',
  //   'cocacola',
  //   'guava',
  //   '7up',
  //   'pen',
  //   'mouse',
  //   'pc',
  //   'mobile',
  //   'mouse',
  //   'apple',
  // ];
  // String search = '';
  getProfile() async {
    log('called');
    var dio = _dio.Dio();
    final data = {"phone_number": "123"};
    try {
      final response = await dio.post('http://192.168.0.7:3000/profile',
          queryParameters: data);
      log(response.data.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () =>
                  showSearch(context: context, delegate: HouseSearch()),
              icon: const Icon(Icons.search))
        ],
      ),
      body: Column(
        children: [
          // TextField(
          //   onChanged: (value) {
          //     setState(() {
          //       search = value.toString();
          //     });
          //   },
          //   controller: controller,
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(20),
          //     ),
          //   ),
          // ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: data.length,
          //     itemBuilder: (context, index) {
          //       String s = data[index];
          //       if (controller.text.toString().isEmpty) {
          //         return ListTile(
          //           title: Text(data[index]),
          //         );
          //       }
          //     },
          //   ),
          // ),
             ChipsChoice.single(
            value: tag,
            onChanged: (value) {
              setState(() {
                tag = value;
              });
            },
            choiceItems: C2Choice.listFrom(
              source: options,
              value: (index, item) => index,
              label: (index, item) => item,
            ),
            wrapped: true,
            choiceStyle: const C2ChoiceStyle(
                color: Colors.teal, borderColor: Colors.black),
            choiceActiveStyle: const C2ChoiceStyle(
                color: Colors.green, borderColor: Colors.blue),
          ),
        ],
      ),
    );
  }
}
