import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/state/cubit/owner/updatehouse/update_house_cubit.dart';
import 'package:rent_house/state/cubit/owner/updatehouse/update_house_state.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:rent_house/widget/app_widget.dart';
import '../../../data/model/owner/ownerhousemodel/owner_house_list_model.dart';

class UpdateHousePage extends StatefulWidget {
  final OwnerHouseModel ownerHouseModel;
  const UpdateHousePage({super.key, required this.ownerHouseModel});

  @override
  State<UpdateHousePage> createState() => _UpdateHousePageState();
}

class _UpdateHousePageState extends State<UpdateHousePage> {
  final feeController = TextEditingController();
  final quantityController = TextEditingController();
  final advanceFeeController = TextEditingController();
  final electricityFeeController = TextEditingController();
  final gasFeeController = TextEditingController();
  final othersFeeController = TextEditingController();
  final addressController = TextEditingController();
  final noticeController = TextEditingController();

  String canBook = '';
  String status = '';

  List<String> items = [
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
  int index = 0;
  var category;
  Container labelText({required String label}) {
    return Container(
      margin: EdgeInsets.only(top: 3.h, bottom: 3.h, left: 30.w),
      child: Align(alignment: Alignment.centerLeft, child: Text(label)),
    );
  }

  @override
  void initState() {
    super.initState();
    canBook = widget.ownerHouseModel.canBook.toString();
    status = widget.ownerHouseModel.status.toString();
  }

  @override
  Widget build(BuildContext context) {
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
                context: context,
                message: state.commonModel.message.toString());
          }
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state is UpdateHouseLoadingState ? true : false,
            progressIndicator: Lottie.asset(
              'asset/animations/timer.json',
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  gap(),
                  const Text(
                    'Can Book ?',
                    style: TextStyle(fontSize: 20),
                  ),
                  gap(h: 10.h),
                  DropdownButton(
                    hint: const Text('Can book the room'),
                    value: canBook,
                    items: ['yes', 'no']
                        .map(
                          (item) => DropdownMenuItem(
                            value: item,
                            child: Text(item.toString()),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        canBook = value as String;
                      });
                      log(canBook);
                    },
                  ),
                  gap(),
                  labelText(label: 'Fee'),
                  inputText(
                    controller: feeController,
                    hint: widget.ownerHouseModel.fee.toString(),
                    type: TextInputType.number,
                    icon: Icons.wallet,
                  ),
                  gap(),
                  labelText(label: 'Quantity'),
                  inputText(
                    controller: quantityController,
                    hint: widget.ownerHouseModel.quantity.toString(),
                    type: TextInputType.number,
                    icon: Icons.add_home_work_outlined,
                  ),
                  gap(),
                  labelText(label: 'Advance Fee'),
                  inputText(
                    controller: advanceFeeController,
                    hint: widget.ownerHouseModel.advanceFee.toString(),
                    type: TextInputType.number,
                    icon: Icons.currency_exchange,
                  ),
                  gap(),
                  labelText(label: 'Electricity Fee'),
                  inputText(
                    controller: electricityFeeController,
                    hint: widget.ownerHouseModel.electricityFee.toString(),
                    type: TextInputType.number,
                    icon: Icons.electrical_services_outlined,
                  ),
                  gap(),
                  labelText(label: 'Gas Fee'),
                  inputText(
                    controller: gasFeeController,
                    hint: widget.ownerHouseModel.gasFee.toString(),
                    type: TextInputType.number,
                    icon: Icons.gas_meter_outlined,
                  ),
                  gap(),
                  labelText(label: 'Others Fee'),
                  inputText(
                    controller: othersFeeController,
                    hint: widget.ownerHouseModel.othersFee.toString(),
                    type: TextInputType.number,
                    icon: Icons.money,
                  ),
                  gap(),
                  labelText(label: 'Address'),
                  inputText(
                    controller: addressController,
                    hint: widget.ownerHouseModel.address.toString(),
                    icon: Icons.location_on_outlined,
                  ),
                  gap(),
                  labelText(label: 'Notice'),
                  inputText(
                    controller: noticeController,
                    hint: widget.ownerHouseModel.notice.toString(),
                    icon: Icons.warning_rounded,
                  ),
                  gap(),
                  Text(
                    'Room status',
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  // inputText(
                  //   controller: statusController,
                  //   hint: widget.ownerHouseModel.status.toString(),
                  //   icon: Icons.timer,
                  // ),
                  DropdownButton(
                    hint: const Text('Can book the room'),
                    value: status,
                    items: ['available', 'booked']
                        .map(
                          (item) => DropdownMenuItem(
                            value: item,
                            child: Text(item.toString()),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        status = value as String;
                      });
                      log(status);
                    },
                  ),
                  gap(h: 50.h),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          log(category.toString());
          String fee = feeController.text.toString();
          String quantity = quantityController.text.toString();
          String advanceFee = advanceFeeController.text.toString();
          String electricityFee = electricityFeeController.text.toString();
          String gasFee = gasFeeController.text.toString();
          String othersFee = othersFeeController.text.toString();
          String address = addressController.text.toString();
          String notice = noticeController.text.toString();
          BlocProvider.of<UpdateHouseCubit>(context).updateHouse(
            houseId: widget.ownerHouseModel.id!,
            category: widget.ownerHouseModel.category.toString(),
            fee: fee == '' ? widget.ownerHouseModel.fee! : int.parse(fee),
            quantity:
                quantity == '' ? widget.ownerHouseModel.quantity! : quantity,
            advanceFee: advanceFee == ''
                ? widget.ownerHouseModel.advanceFee!
                : int.parse(advanceFee),
            electricityFee: electricityFee == ''
                ? widget.ownerHouseModel.electricityFee!
                : int.parse(electricityFee),
            gasFee: gasFee == ''
                ? widget.ownerHouseModel.gasFee!
                : int.parse(gasFee),
            othersFee: othersFee == ''
                ? widget.ownerHouseModel.othersFee!
                : int.parse(othersFee),
            address: address == ''
                ? widget.ownerHouseModel.address.toString()
                : address,
            notice: notice == ''
                ? widget.ownerHouseModel.notice.toString()
                : notice,
            status: status == ''
                ? widget.ownerHouseModel.status.toString()
                : status,
            canBook: canBook == ''
                ? widget.ownerHouseModel.canBook.toString()
                : canBook,
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
