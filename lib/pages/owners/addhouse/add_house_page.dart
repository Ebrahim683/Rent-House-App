import 'dart:developer';

import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rent_house/pages/owners/addhouse/add_house_cubit.dart';
import 'package:rent_house/state/cubit/owner/addhouse/add_house_state.dart';

import '../../../widget/app_widget.dart';

class AddHousePage extends StatefulWidget {
  const AddHousePage({super.key});

  @override
  State<AddHousePage> createState() => _AddHousePageState();
}

class _AddHousePageState extends State<AddHousePage> {
  final feeController = TextEditingController();
  final quantityController = TextEditingController();
  final advanceFeeController = TextEditingController();
  final electricityFeeController = TextEditingController();
  final gasFeeController = TextEditingController();
  final othersFeeController = TextEditingController();
  final addressController = TextEditingController();
  final noticeController = TextEditingController();
  final statusController = TextEditingController();
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
  List<String> categoryForBackend = [
    'family',
    'bachelor',
    'female',
    'sublet',
    'office',
    'warehouse',
    'shop',
    'garage',
    'others',
    'industry',
    'flat',
  ];
  String category = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add House'),
      ),
      body: BlocBuilder<AddHouseCubit, AddHouseState>(
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state is AddHouseLoadingState ? true : false,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ChipsChoice.single(
                    value: tag,
                    onChanged: (value) {
                      setState(() {
                        tag = value;
                        category = categoryForBackend[tag];
                      });
                      log(category);
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
                  gap(),
                  inputText(controller: feeController, hint: 'Fee'),
                  gap(),
                  inputText(controller: quantityController, hint: 'Quantity'),
                  gap(),
                  inputText(
                      controller: advanceFeeController, hint: 'Advance fee'),
                  gap(),
                  inputText(
                      controller: electricityFeeController,
                      hint: 'Electricity fee'),
                  gap(),
                  inputText(controller: gasFeeController, hint: 'Gas fee'),
                  gap(),
                  inputText(
                      controller: othersFeeController, hint: 'Others fee'),
                  gap(),
                  inputText(controller: addressController, hint: 'Address'),
                  gap(),
                  inputText(controller: noticeController, hint: 'Notice'),
                  gap(),
                  inputText(controller: statusController, hint: 'Status'),
                  gap(),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          String fee = feeController.text.toString();
          String quantity = quantityController.text.toString();
          String advanceFee = advanceFeeController.text.toString();
          String electricityFee = electricityFeeController.text.toString();
          String gasFee = gasFeeController.text.toString();
          String othersFee = othersFeeController.text.toString();
          String address = addressController.text.toString();
          String notice = noticeController.text.toString();
          String status = statusController.text.toString();
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
