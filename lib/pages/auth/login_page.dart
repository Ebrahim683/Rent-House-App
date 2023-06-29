import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/state/cubit/authcubit/login_cubit.dart';
import 'package:rent_house/state/cubit/authcubit/login_state.dart';
import 'package:rent_house/utils/notification_service.dart';
import 'package:rent_house/utils/storage_utils.dart';
import 'package:rent_house/utils/utils.dart';

import '../../routers/routes.dart';
import '../../utils/app_colors.dart';
import '../../widget/app_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool sPassword = true;
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
  String deviceToken = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NotificationService.getDeviceToken().then((value) => deviceToken = value);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text('লগিন', style: TextStyle(color: Colors.white)),
        automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            log(state.loginModel.message.toString());

            if (state.loginModel.status == 'fail') {
              errorDialog(
                  context: context,
                  message: state.loginModel.message.toString());
            } else {
              storageUtils.saveNumber(mobileController.text.trim().toString());
              storageUtils.saveName(state.loginModel.data![0].name.toString());
              storageUtils.saveRole(state.loginModel.data![0].role.toString());
              if (state.loginModel.data![0].role == 'user') {
                pushOff(context: context, name: user_base_page);
              } else if (state.loginModel.data![0].role == 'owner') {
                pushOff(context: context, name: owner_base_page);
              }
            }
          } else if (state is LoginErrorState) {
            errorDialog(context: context, message: state.error);
            log(state.error);
          }
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state is LoginLoadingState ? true : false,
            progressIndicator: Lottie.asset(
              'asset/animations/timer.json',
            ),
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Lottie.asset(
                        'asset/animations/bubbles.json',
                        height: size.height * 0.4,
                        width: size.width,
                      ),
                      gap(),
                      Lottie.asset(
                        'asset/animations/bubbles.json',
                        height: size.height * 0.4,
                        width: size.width,
                      ),
                    ],
                  ),
                  Positioned(
                    top: size.height * 0.15,
                    bottom: size.height * 0.15,
                    left: 20.w,
                    right: 20.w,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Center(
                        child: GlassContainer(
                          blur: 5,
                          border: Border.all(color: Colors.white),
                          height: size.height * 0.6,
                          width: size.width,
                          child: Center(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  gap(h: 100.h),
                                  inputText(
                                    controller: mobileController,
                                    hint: 'নাম্বার',
                                    icon: Icons.dialpad,
                                    type: TextInputType.phone,
                                    color: Colors.white,
                                  ),
                                  gap(),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.h),
                                    child: TextField(
                                      obscureText: sPassword,
                                      keyboardType: TextInputType.text,
                                      controller: passwordController,
                                      style:
                                          const TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                        ),
                                        filled: true,
                                        hintText: 'পাসওয়ার্ড',
                                        hintStyle: const TextStyle(
                                            color: Colors.white),
                                        fillColor: Colors.white.withAlpha(0),
                                        prefixIcon: const Icon(
                                          Icons.password,
                                          color: Colors.white,
                                        ),
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              sPassword = !sPassword;
                                            });
                                          },
                                          icon: Icon(
                                            sPassword == true
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  gap(),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: GlassContainer(
                                      blur: 5,
                                      height: 50.h,
                                      width: double.infinity,
                                      color: Colors.white.withOpacity(0.1),
                                      child: MaterialButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                          side: const BorderSide(
                                              color: Colors.white),
                                        ),
                                        onPressed: () {
                                          String phoneNumber = mobileController
                                              .text
                                              .trim()
                                              .toString();
                                          String password = passwordController
                                              .text
                                              .trim()
                                              .toString();
                                          if (phoneNumber == '') {
                                            showSnackBar(
                                              title: 'ত্রুটি',
                                              message: 'আপনার ফোন নম্বর লিখুন',
                                              context: context,
                                            );
                                          } else if (password == '') {
                                            showSnackBar(
                                              title: 'ত্রুটি',
                                              message: 'আপনার পাসওয়ার্ড লিখুন',
                                              context: context,
                                            );
                                          } else {
                                            BlocProvider.of<LoginCubit>(context)
                                                .login(
                                              phoneNumber: phoneNumber,
                                              password: password,
                                              deviceToken: deviceToken,
                                            );
                                          }
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            buttonText(text: 'লগিন করুন'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  gap(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      buttonText(
                                          color: Colors.white,
                                          text: 'এখানে নতুন?'),
                                      gap(w: 10.w),
                                      InkWell(
                                        onTap: () {
                                          showModalBottomSheet(
                                            showDragHandle: true,
                                            useSafeArea: true,
                                            context: context,
                                            isDismissible: true,
                                            enableDrag: true,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25.r),
                                            ),
                                            builder: (context) {
                                              return SizedBox(
                                                height: 180.h,
                                                width: double.infinity,
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        width: 250.w,
                                                        child: MaterialButton(
                                                          color: btnColor,
                                                          textColor:
                                                              Colors.white,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25.r),
                                                          ),
                                                          onPressed: () {
                                                            pushOff(
                                                                context:
                                                                    context,
                                                                name:
                                                                    owner_register_page);
                                                          },
                                                          child: const Text(
                                                              'বাড়িওয়ালা নিবন্ধন'),
                                                        ),
                                                      ),
                                                      Text(
                                                        'অথবা',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 250.w,
                                                        child: MaterialButton(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25.r),
                                                          ),
                                                          color: btnColor,
                                                          textColor:
                                                              Colors.white,
                                                          onPressed: () {
                                                            pushOff(
                                                                context:
                                                                    context,
                                                                name:
                                                                    user_register_page);
                                                          },
                                                          child: const Text(
                                                              'ভাড়াটিয়া নিবন্ধন'),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.w, vertical: 5.h),
                                          decoration: BoxDecoration(
                                            color: bgColor,
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                          ),
                                          child: buttonText(
                                              color: Colors.black,
                                              text: 'নিবন্ধন করুন'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  gap(h: 250.h),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
