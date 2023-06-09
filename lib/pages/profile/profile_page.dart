import 'dart:developer';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/data/model/profile/profile_model_list.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/state/cubit/profile/profile_cubit.dart';
import 'package:rent_house/utils/storage_utils.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:rent_house/widget/app_widget.dart';

import '../../state/cubit/profile/profile_state.dart';
import '../../utils/assets.dart';

class ProfilePage extends StatefulWidget {
  final String phoneNumber;
  final String role;
  const ProfilePage({super.key, required this.phoneNumber, required this.role});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  singleItem({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon),
              gap(w: 10.w),
              Text(title),
            ],
          ),
          gap(h: 10.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              description,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
              ),
            ),
          ),
          const Divider(color: Colors.teal),
        ],
      ),
    );
  }

  File? profileImage;
  Future<void> _pickImage() async {
    ImagePicker imagePicker = ImagePicker();
    final selectedImage = await imagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 30);
    if (selectedImage != null) {
      setState(() {
        profileImage = File(selectedImage.path);
        BlocProvider.of<ProfileCubit>(context)
            .updateProfile(profilePic: profileImage!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () => pop(context: context),
              icon: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              )),
        ),
        title: const Text(
          'প্রোফাইল',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {
          if (state is ErrorState) {
            errorDialog(context: context, message: state.error);
          } else if (state is UpdateSuccessState) {
            successDialog(
                context: context,
                message: state.commonModel.message.toString());
            setState(() {
              BlocProvider.of<ProfileCubit>(context)
                  .getProfile(phoneNumber: widget.phoneNumber);
            });
          }
        },
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(
              child: Lottie.asset('asset/animations/timer.json'),
            );
          } else if (state is ErrorState) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.error),
                  gap(),
                  refreshButton(onPress: () {
                    setState(() {
                      BlocProvider.of<ProfileCubit>(context)
                          .getProfile(phoneNumber: widget.phoneNumber);
                    });
                  }),
                ],
              ),
            );
          } else if (state is SuccessState) {
            ProfileModelList profileModelList = state.profileModelList;
            if (profileModelList.status == 'fail') {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.profileModelList.message.toString()),
                    gap(),
                    refreshButton(onPress: () {
                      setState(() {
                        BlocProvider.of<ProfileCubit>(context)
                            .getProfile(phoneNumber: widget.phoneNumber);
                      });
                    }),
                  ],
                ),
              );
            } else {
              List<ProfileModel> profileModel = profileModelList.profileModel!;
              StorageUtils.clearProfilePic();
              storageUtils.saveProfilePic(
                profileModel[0].profilePic.toString(),
              );
              return LoadingOverlay(
                isLoading: state is LoadingState ? true : false,
                progressIndicator: Lottie.asset('asset/animations/timer.json'),
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.5,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 123, 70, 209),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45.r),
                          bottomRight: Radius.circular(45.r),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (widget.role == 'me') {
                                      _pickImage().then((value) {
                                        log('image picked');
                                      });
                                    } else {
                                      log(widget.role);
                                    }
                                  },
                                  child: SizedBox(
                                    height: 150.h,
                                    width: 150.w,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.r),
                                      child: Container(
                                        color: Colors.teal,
                                        child: CachedNetworkImage(
                                          imageUrl: profileModel[0]
                                                      .profilePic
                                                      .toString() ==
                                                  ''
                                              ? 'https://img.freepik.com/free-icon/user_318-159711.jpg'
                                              : profileModel[0]
                                                  .profilePic
                                                  .toString(),
                                          placeholder: (context, url) =>
                                              Image.asset(avatar_icon),
                                          fit: BoxFit.cover,
                                          width: size.width,
                                          errorWidget: (context, url, error) =>
                                              Image.asset(error_image),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                gap(h: 10.h),
                                Text(
                                  profileModel[0].name.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                gap(h: 10.h),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.h, horizontal: 15.w),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.w, color: Colors.white),
                                    borderRadius: BorderRadius.circular(15.r),
                                  ),
                                  child: Text(
                                    profileModel[0].role.toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            gap(),
                            singleItem(
                              icon: Icons.credit_card,
                              title: 'Id',
                              description: profileModel[0].id.toString(),
                            ),
                            singleItem(
                              icon: Icons.email_outlined,
                              title: 'Email',
                              description: profileModel[0].email.toString(),
                            ),
                            singleItem(
                              icon: Icons.call_outlined,
                              title: 'Phone number',
                              description:
                                  profileModel[0].phoneNumber.toString(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Something went wrong'),
                  gap(),
                  refreshButton(onPress: () {
                    setState(() {
                      BlocProvider.of<ProfileCubit>(context)
                          .getProfile(phoneNumber: widget.phoneNumber);
                    });
                  }),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

class ClipperProfileTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var x = size.width;
    var y = size.height;
    Path path = Path();

    path.lineTo(0, y - 20);
    path.lineTo(x, y - 80);
    path.lineTo(x, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
