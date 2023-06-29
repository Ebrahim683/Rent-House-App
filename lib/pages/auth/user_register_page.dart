import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/state/cubit/authcubit/auth_cubit.dart';
import 'package:rent_house/state/cubit/authcubit/auth_state.dart';
import 'package:rent_house/utils/notification_service.dart';
import 'package:rent_house/utils/utils.dart';

import '../../utils/app_colors.dart';
import '../../utils/storage_utils.dart';
import '../../widget/app_widget.dart';

class UserRegisterPage extends StatefulWidget {
  const UserRegisterPage({super.key});

  @override
  State<UserRegisterPage> createState() => _UserRegisterPageState();
}

class _UserRegisterPageState extends State<UserRegisterPage> {
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  String deviceToken = '';
  String role = 'user';
  bool sPassword = true;
  bool scPassword = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NotificationService.getDeviceToken().then((token) => deviceToken = token);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ভারায়িটা নিবন্ধন',
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.green,
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccessState) {
            log(state.commonModel.message.toString());
            storageUtils.saveNumber(mobileController.text.toString());
            storageUtils.saveName(nameController.text.trim().toString());
            storageUtils.saveRole(role);
            pushOff(context: context, name: user_base_page);
          } else if (state is AuthErrorState) {
            log(state.error);
            showSnackBar(
              title: 'ত্রুটি',
              message: state.error,
              context: context,
            );
          }
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state is AuthLoadingState ? true : false,
            progressIndicator: Lottie.asset(
              'asset/animations/timer.json',
            ),
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
                  top: 20,
                  bottom: 20.h,
                  left: 20.w,
                  right: 20.w,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: GlassContainer(
                        blur: 5,
                        border: Border.all(color: Colors.white),
                        child: Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                gap(h: 100.h),
                                inputText(
                                  controller: nameController,
                                  hint: 'সম্পূর্ণ নাম',
                                  icon: Icons.abc,
                                  color: Colors.white,
                                ),
                                gap(),
                                inputText(
                                  controller: mobileController,
                                  hint: 'নাম্বার',
                                  icon: Icons.dialpad,
                                  type: TextInputType.phone,
                                  color: Colors.white,
                                ),
                                gap(),
                                inputText(
                                  controller: emailController,
                                  hint: 'ইমেইল (ঐচ্ছিক)',
                                  icon: Icons.email,
                                  type: TextInputType.emailAddress,
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
                                    style: const TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.r),
                                        borderSide: const BorderSide(
                                            color: Colors.black),
                                      ),
                                      filled: true,
                                      hintText: 'পাসওয়ার্ড',
                                      hintStyle:
                                          const TextStyle(color: Colors.white),
                                      fillColor: Colors.white.withAlpha(0),
                                      prefixIcon: const Icon(Icons.password,
                                          color: Colors.white),
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
                                      EdgeInsets.symmetric(horizontal: 20.h),
                                  child: TextField(
                                    obscureText: scPassword,
                                    keyboardType: TextInputType.text,
                                    controller: confirmPasswordController,
                                    style: const TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.r),
                                        borderSide: const BorderSide(
                                            color: Colors.black),
                                      ),
                                      filled: true,
                                      hintText: 'পাসওয়ার্ড নিশ্চিত করুন',
                                      hintStyle:
                                          const TextStyle(color: Colors.white),
                                      fillColor: Colors.white.withAlpha(0),
                                      prefixIcon: const Icon(Icons.password,
                                          color: Colors.white),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            scPassword = !scPassword;
                                          });
                                        },
                                        icon: Icon(
                                          scPassword == true
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
                                        String name =
                                            nameController.text.trim();
                                        String phoneNumber =
                                            mobileController.text.trim();
                                        String email =
                                            emailController.text.trim();
                                        String password =
                                            passwordController.text.trim();
                                        String confirmPassword =
                                            confirmPasswordController.text
                                                .trim();
                                        if (name == '') {
                                          showSnackBar(
                                            title: 'ত্রুটি',
                                            message: 'আপনার নাম লিখুন',
                                            context: context,
                                          );
                                        } else if (phoneNumber == '') {
                                          showSnackBar(
                                            title: 'ত্রুটি',
                                            message:
                                                'আপনার মোবাইল নাম্বার লিখুন',
                                            context: context,
                                          );
                                        } else if (password == '' &&
                                            password.length < 6) {
                                          showSnackBar(
                                            title: 'ত্রুটি',
                                            message: 'পাসওয়ার্ড দিন',
                                            context: context,
                                          );
                                        } else if (confirmPassword == '') {
                                          showSnackBar(
                                            title: 'ত্রুটি',
                                            message: 'পাসওয়ার্ড নিশ্চিন্ত করুন',
                                            context: context,
                                          );
                                        } else if (password !=
                                            confirmPassword) {
                                          showSnackBar(
                                            title: 'ত্রুটি',
                                            message: 'পাসওয়ার্ড ভিন্ন হয়েছে ',
                                            context: context,
                                          );
                                        } else {
                                          BlocProvider.of<AuthCubit>(context)
                                              .register(
                                            name: name,
                                            phoneNumber: phoneNumber,
                                            email: email == ''
                                                ? 'no email'
                                                : email,
                                            password: password,
                                            role: role,
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
                                          buttonText(text: 'নিবন্ধন করুন'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                gap(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    buttonText(
                                        color: Colors.white,
                                        text: 'একাউন্ট আছে?'),
                                    gap(w: 10.w),
                                    InkWell(
                                      onTap: () => pushOff(
                                          context: context, name: login_page),
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
                                            text: 'লগিন করুন'),
                                      ),
                                    ),
                                  ],
                                ),
                                gap(
                                    h: MediaQuery.of(context).size.height *
                                        0.5),
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
          );
        },
      ),
    );
  }
}
