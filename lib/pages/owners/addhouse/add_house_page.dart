import 'dart:developer';

import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rent_house/pages/owners/addhouse/add_house_cubit.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/state/cubit/owner/addhouse/add_house_state.dart';
import 'package:rent_house/utils/utils.dart';

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
      body: BlocConsumer<AddHouseCubit, AddHouseState>(
        listener: (context, state) {
          if (state is AddHouseSuccessState) {
            successDialog(
                context: context,
                message: state.addHouseModel.message.toString());
          } else if (state is AddHouseErrorState) {
            errorDialog(context: context, message: state.error);
          }
        },
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
                  inputText(
                      controller: feeController,
                      hint: 'Fee',
                      type: TextInputType.number),
                  gap(),
                  inputText(
                      controller: quantityController,
                      hint: 'Quantity',
                      type: TextInputType.number),
                  gap(),
                  inputText(
                      controller: advanceFeeController,
                      hint: 'Advance fee',
                      type: TextInputType.number),
                  gap(),
                  inputText(
                      controller: electricityFeeController,
                      hint: 'Electricity fee',
                      type: TextInputType.number),
                  gap(),
                  inputText(
                      controller: gasFeeController,
                      hint: 'Gas fee',
                      type: TextInputType.number),
                  gap(),
                  inputText(
                      controller: othersFeeController,
                      hint: 'Others fee',
                      type: TextInputType.number),
                  gap(),
                  inputText(
                      controller: addressController,
                      hint: 'Address',
                      type: TextInputType.text),
                  gap(),
                  inputText(
                      controller: noticeController,
                      hint: 'Notice',
                      type: TextInputType.text),
                  gap(),
                  inputText(
                      controller: statusController,
                      hint: 'Status',
                      type: TextInputType.text),
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
          if (fee == '') {
            showGetSnackBar(title: 'Error', message: 'Enter fee');
          } else if (quantity == '') {
            showGetSnackBar(title: 'Error', message: 'Enter quantity');
          } else if (advanceFee == '') {
            showGetSnackBar(title: 'Error', message: 'Enter advanceFee');
          } else if (electricityFee == '') {
            showGetSnackBar(title: 'Error', message: 'Enter electricityFee');
          } else if (gasFee == '') {
            showGetSnackBar(title: 'Error', message: 'Enter gasFee');
          } else if (othersFee == '') {
            showGetSnackBar(title: 'Error', message: 'Enter othersFee');
          } else if (address == '') {
            showGetSnackBar(title: 'Error', message: 'Enter address');
          } else if (notice == '') {
            showGetSnackBar(title: 'Error', message: 'Enter notice');
          } else if (status == '') {
            showGetSnackBar(title: 'Error', message: 'Enter status');
          } else {
            BlocProvider.of<AddHouseCubit>(context).addHouse(
                fee: fee,
                advanceFee: advanceFee,
                quantity: quantity,
                electricityFee: electricityFee,
                gasFee: gasFee,
                othersFee: othersFee,
                address: address,
                notice: notice,
                status: status,
                image: 'image',
                category: category);
          }
        },
        child: const Icon(Icons.done, color: Colors.white),
      ),
    );
  }
}
