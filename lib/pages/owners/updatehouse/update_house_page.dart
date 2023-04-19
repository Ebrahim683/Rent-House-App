import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rent_house/state/cubit/owner/updatehouse/update_house_cubit.dart';
import 'package:rent_house/state/cubit/owner/updatehouse/update_house_state.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:rent_house/widget/app_widget.dart';

import '../../../data/model/owner/ownerhousemodel/owner_house_list_model.dart';

class UpdateHousePage extends StatelessWidget {
  final OwnerHouseModel ownerHouseModel;
  const UpdateHousePage({super.key, required this.ownerHouseModel});

  @override
  Widget build(BuildContext context) {
    final categoryController = TextEditingController();
    final feeController = TextEditingController();
    final quantityController = TextEditingController();
    final advanceFeeController = TextEditingController();
    final electricityFeeController = TextEditingController();
    final gasFeeController = TextEditingController();
    final othersFeeController = TextEditingController();
    final addressController = TextEditingController();
    final noticeController = TextEditingController();
    final statusController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Update'),
      ),
      body: BlocConsumer<UpdateHouseCubit, UpdateHouseState>(
        bloc: BlocProvider.of<UpdateHouseCubit>(context),
        listener: (context, state) {
          if (state is UpdateHouseErrorState) {
            errorDialog(context: context, message: state.error);
          } else if (state is UpdateHouseSuccessState) {
            successDialog(
                context: context, message: state.authModel.message.toString());
          }
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state is UpdateHouseLoadingState ? true : false,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  inputText(
                      controller: categoryController,
                      hint: ownerHouseModel.category.toString()),
                  gap(),
                  inputText(
                      controller: feeController,
                      hint: ownerHouseModel.fee.toString(),
                      type: TextInputType.number),
                  gap(),
                  inputText(
                      controller: quantityController,
                      hint: ownerHouseModel.quantity.toString(),
                      type: TextInputType.number),
                  gap(),
                  inputText(
                      controller: advanceFeeController,
                      hint: ownerHouseModel.advanceFee.toString(),
                      type: TextInputType.number),
                  gap(),
                  inputText(
                      controller: electricityFeeController,
                      hint: ownerHouseModel.electricityFee.toString(),
                      type: TextInputType.number),
                  gap(),
                  inputText(
                      controller: gasFeeController,
                      hint: ownerHouseModel.gasFee.toString(),
                      type: TextInputType.number),
                  gap(),
                  inputText(
                      controller: othersFeeController,
                      hint: ownerHouseModel.othersFee.toString(),
                      type: TextInputType.number),
                  gap(),
                  inputText(
                      controller: addressController,
                      hint: ownerHouseModel.address.toString()),
                  gap(),
                  inputText(
                      controller: noticeController,
                      hint: ownerHouseModel.notice.toString()),
                  gap(),
                  inputText(
                      controller: statusController,
                      hint: ownerHouseModel.status.toString()),
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
          log(ownerHouseModel.id!.toString());
          String category = categoryController.text.toString();
          String fee = feeController.text.toString();
          String quantity = quantityController.text.toString();
          String advanceFee = advanceFeeController.text.toString();
          String electricityFee = electricityFeeController.text.toString();
          String gasFee = gasFeeController.text.toString();
          String othersFee = othersFeeController.text.toString();
          String address = addressController.text.toString();
          String notice = noticeController.text.toString();
          String status = statusController.text.toString();
          BlocProvider.of<UpdateHouseCubit>(context).updateHouse(
            houseId: ownerHouseModel.id!,
            category:
                category == '' ? ownerHouseModel.category.toString() : category,
            fee: fee == '' ? ownerHouseModel.fee.toString() : fee,
            quantity:
                quantity == '' ? ownerHouseModel.quantity.toString() : quantity,
            advanceFee: advanceFee == ''
                ? ownerHouseModel.advanceFee.toString()
                : advanceFee,
            electricityFee: electricityFee == ''
                ? ownerHouseModel.electricityFee.toString()
                : electricityFee,
            gasFee: gasFee == '' ? ownerHouseModel.gasFee.toString() : gasFee,
            othersFee: othersFee == ''
                ? ownerHouseModel.othersFee.toString()
                : othersFee,
            address:
                address == '' ? ownerHouseModel.address.toString() : address,
            notice: notice == '' ? ownerHouseModel.notice.toString() : notice,
            status: status == '' ? ownerHouseModel.status.toString() : status,
          );
        },
        child: const Icon(
          Icons.update,
          color: Colors.white,
        ),
      ),
    );
  }
}
