import 'dart:developer';
import 'dart:io';

import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/state/cubit/owner/addhouse/add_house_cubit.dart';
import 'package:rent_house/state/cubit/owner/addhouse/add_house_state.dart';
import 'package:rent_house/utils/app_colors.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:video_compress/video_compress.dart';

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

  CupertinoAlertDialog alertDialog = CupertinoAlertDialog(
    content: SizedBox(
      height: 200.h,
      width: 300.w,
      child: const Center(child: CircularProgressIndicator()),
    ),
    title: const Text('Compressing video...'),
  );

  viewDialog() {
    showDialog(
      context: context,
      builder: (context) => alertDialog,
      barrierDismissible: false,
    );
  }

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
  String canBook = 'no';
  String status = 'booked';
  String category = '';
  final picker = ImagePicker();
  File? image1;
  File? image2;
  File? image3;
  File? image4;
  File? video;
  List<XFile>? imageList = [];
  List<File>? images = [];
  Future<void> _pickImage() async {
    final List<XFile> selectedImages =
        await picker.pickMultiImage(imageQuality: 30);
    if (selectedImages.isNotEmpty) {
      setState(() {
        try {
          imageList!.clear();
          imageList!.addAll(selectedImages);
          image1 = File(imageList![0].path);
          image2 = File(imageList![1].path);
          image3 = File(imageList![2].path);
          image4 = File(imageList![3].path);
          images = [image1!, image2!, image3!, image4!];
          log(imageList!.length.toString());
        } catch (e) {
          showSnackBar(
            title: 'Error',
            message: 'Minimum 4 photo required',
            context: context,
          );
        }
      });
    }
  }

  Future<void> _pickVideo() async {
    final selectedVideo = await picker.pickVideo(
      source: ImageSource.gallery,
      maxDuration: const Duration(minutes: 1),
    );
    if (selectedVideo != null) {
      try {
        viewDialog();
        MediaInfo? mediaInfo = await VideoCompress.compressVideo(
          selectedVideo.path,
          quality: VideoQuality.LowQuality,
          deleteOrigin: true,
          includeAudio: false,
        );
        log(mediaInfo!.filesize.toString());
        setState(() {
          video = File(mediaInfo.file!.path);
        });
      } catch (e) {
        log(e.toString());
      }
      Navigator.of(context).pop('dialog');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('রুম স্থাপন করুন'),
      ),
      body: BlocConsumer<AddHouseCubit, AddHouseState>(
        listener: (context, state) {
          if (state is AddHouseSuccessState) {
            if (state.commonModel.status == 'fail') {
              errorDialog(
                  context: context,
                  message: state.commonModel.message.toString());
            } else {
              showSnackBar(
                  context: context,
                  title: 'সফল',
                  message: 'রুম স্থাপন সম্পন্ন হয়েছে');
              pop(context: context);
            }
          } else if (state is AddHouseErrorState) {
            errorDialog(context: context, message: state.error);
          }
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state is AddHouseLoadingState ? true : false,
            progressIndicator: Lottie.asset(
              'asset/animations/timer.json',
            ),
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
                  inputText(
                    controller: feeController,
                    hint: 'Fee',
                    type: TextInputType.number,
                    icon: Icons.wallet,
                  ),
                  gap(),
                  inputText(
                    controller: quantityController,
                    hint: 'Quantity',
                    type: TextInputType.number,
                    icon: Icons.add_home_work_outlined,
                  ),
                  gap(),
                  inputText(
                    controller: advanceFeeController,
                    hint: 'Advance fee',
                    type: TextInputType.number,
                    icon: Icons.currency_exchange,
                  ),
                  gap(),
                  inputText(
                    controller: electricityFeeController,
                    hint: 'Electricity fee',
                    type: TextInputType.number,
                    icon: Icons.electrical_services_outlined,
                  ),
                  gap(),
                  inputText(
                    controller: gasFeeController,
                    hint: 'Gas fee',
                    type: TextInputType.number,
                    icon: Icons.gas_meter_outlined,
                  ),
                  gap(),
                  inputText(
                    controller: othersFeeController,
                    hint: 'Others fee',
                    type: TextInputType.number,
                    icon: Icons.money,
                  ),
                  gap(),
                  inputText(
                    controller: addressController,
                    hint: 'Address',
                    type: TextInputType.text,
                    icon: Icons.location_on_outlined,
                  ),
                  gap(),
                  inputText(
                    controller: noticeController,
                    hint: 'Notice',
                    type: TextInputType.text,
                    icon: Icons.warning_rounded,
                  ),
                  gap(),
                  // inputText(
                  //   controller: statusController,
                  //   hint: 'Status',
                  //   type: TextInputType.text,
                  //   icon: Icons.timer,
                  // ),
                  Text(
                    'Room status',
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  gap(),
                  DropdownButton(
                    hint: const Text('Room status'),
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
                  gap(),
                  gap(),
                  const Text(
                    'Select minimum 4 images of your house',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  gap(h: 10.h),
                  SizedBox(
                    height: size.height * 0.5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Stack(
                        children: [
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: (imageList ?? []).length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10.w,
                              mainAxisSpacing: 10.h,
                            ),
                            itemBuilder: (context, index) {
                              if (imageList!.isEmpty) {
                                return Image.asset(
                                  'asset/images/sliderhouse1.png',
                                  height: 130.h,
                                  fit: BoxFit.cover,
                                );
                              } else {
                                return Image.file(
                                  File(imageList![index].path),
                                  fit: BoxFit.cover,
                                  height: 130.h,
                                );
                              }
                            },
                          ),
                          Positioned(
                            top: size.height * 0.18,
                            left: size.width * 0.38,
                            child: FloatingActionButton(
                              heroTag: 'btnimage',
                              backgroundColor: Colors.black45,
                              onPressed: () => _pickImage(),
                              child: const Icon(
                                Icons.add_photo_alternate_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  gap(),
                  GestureDetector(
                    onTap: () => _pickVideo(),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Text(
                        video == null
                            ? 'Select a sort video under 1 minute'
                            : video.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 15.sp),
                      ),
                    ),
                  ),
                  gap(h: 50.h),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: favColor,
        heroTag: 'btnsubmit',
        onPressed: () {
          int fee = int.parse(feeController.text);
          String quantity = quantityController.text.toString();
          int advanceFee = int.parse(advanceFeeController.text);
          int electricityFee = int.parse(electricityFeeController.text);
          int gasFee = int.parse(gasFeeController.text);
          int othersFee = int.parse(othersFeeController.text);
          String address = addressController.text.toString();
          String notice = noticeController.text.toString();

          if (fee == 0.0) {
            showSnackBar(
                context: context, title: 'Error', message: 'Enter fee');
          } else if (quantity == '') {
            showSnackBar(
                context: context, title: 'Error', message: 'Enter quantity');
          } else if (advanceFee == 0.0) {
            showSnackBar(
                context: context, title: 'Error', message: 'Enter advanceFee');
          } else if (electricityFee == 0.0) {
            showSnackBar(
                context: context,
                title: 'Error',
                message: 'Enter electricityFee');
          } else if (gasFee == 0.0) {
            showSnackBar(
                context: context, title: 'Error', message: 'Enter gasFee');
          } else if (othersFee == 0.0) {
            showSnackBar(
                context: context, title: 'Error', message: 'Enter othersFee');
          } else if (notice == '') {
            showSnackBar(
                context: context, title: 'Error', message: 'Enter notice');
          } else if (address == '') {
            showSnackBar(
                context: context, title: 'Error', message: 'Enter address');
          } else if (imageList!.isEmpty || imageList!.length > 4) {
            showSnackBar(
                context: context,
                title: 'Error',
                message: 'Minimum 4 photo required');
          } else if (video == null) {
            showSnackBar(
                context: context,
                title: 'Error',
                message: 'Add a video of your room');
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
                canBook: canBook,
                category: category == '' ? 'family' : category,
                imageList: images!,
                video: video!);
          }
        },
        child: const Icon(Icons.done, color: Colors.white),
      ),
    );
  }
}
