import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/state/cubit/authcubit/auth_cubit.dart';
import 'package:rent_house/state/cubit/authcubit/auth_state.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rent_house/utils/utils.dart';

import '../../utils/app_colors.dart';
import '../../widget/app_widget.dart';

class UserRegisterPage extends StatefulWidget {
  const UserRegisterPage({super.key});

  @override
  State<UserRegisterPage> createState() => _UserRegisterPageState();
}

class _UserRegisterPageState extends State<UserRegisterPage> {
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  // final nidController = TextEditingController();
  // final currentAddressController = TextEditingController();
  // final permanentAddressController = TextEditingController();
  // final jobController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  String role = 'user';
  bool sPassword = true;
  bool scPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ভারায়িটা নিবন্ধন'),
        automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccessState) {
            log(state.authModel.message.toString());
            pushOff(name: login_page);
          } else if (state is AuthErrorState) {
            log(state.error);
            showGetSnackBar(title: 'ত্রুটি', message: state.error);
          }
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state is AuthLoadingState ? true : false,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  inputText(
                    controller: nameController,
                    hint: 'সম্পূর্ণ নাম',
                    icon: Icons.abc,
                  ),
                  gap(),
                  inputText(
                    controller: mobileController,
                    hint: 'নাম্বার',
                    icon: Icons.dialpad,
                    type: TextInputType.phone,
                  ),
                  gap(),
                  // inputText(controller: nidController, hint: 'ভোটার নং (ঐচ্ছিক)'),
                  // gap(),
                  // inputText(
                  //     controller: currentAddressController, hint: 'বর্তমান ঠিকানা'),
                  // gap(),
                  // inputText(
                  //     controller: permanentAddressController,
                  //     hint: 'স্থায়ি ঠিকানা'),
                  // gap(),
                  // inputText(controller: jobController, hint: 'পেশা'),
                  // gap(),
                  inputText(
                    controller: emailController,
                    hint: 'ইমেইল (ঐচ্ছিক)',
                    icon: Icons.email,
                    type: TextInputType.emailAddress,
                  ),
                  gap(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: TextField(
                      obscureText: sPassword,
                      keyboardType: TextInputType.text,
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        filled: true,
                        hintText: 'পাসওয়ার্ড',
                        fillColor: Colors.white.withAlpha(0),
                        prefixIcon: const Icon(Icons.password),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              sPassword = !sPassword;
                            });
                          },
                          icon: Icon(sPassword == true
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                    ),
                  ),
                  gap(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: TextField(
                      obscureText: scPassword,
                      keyboardType: TextInputType.text,
                      controller: confirmPasswordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        filled: true,
                        hintText: 'পাসওয়ার্ড নিশ্চিত করুন',
                        fillColor: Colors.white.withAlpha(0),
                        prefixIcon: const Icon(Icons.password),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(scPassword == true
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                    ),
                  ),
                  gap(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: SizedBox(
                      height: 50.h,
                      width: double.infinity,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r)),
                        color: btnColor,
                        onPressed: () {
                          String name = nameController.text.trim();
                          String phoneNumber = mobileController.text.trim();
                          String email = emailController.text.trim();
                          String password = passwordController.text.trim();
                          String confirmPassword =
                              confirmPasswordController.text.trim();
                          if (name == '') {
                            showGetSnackBar(
                                title: 'ত্রুটি', message: 'আপনার নাম লিখুন');
                          } else if (phoneNumber == '') {
                            showGetSnackBar(
                                title: 'ত্রুটি',
                                message: 'আপনার মোবাইল নাম্বার লিখুন');
                          } /* else if (email == '') {
                               showGetSnackBar(
                                title: 'ত্রুটি', message: 'আপনার ইমেইল লিখুন');
                          } */
                          else if (password == '' && password.length < 6) {
                            showGetSnackBar(
                                title: 'ত্রুটি', message: 'পাসওয়ার্ড দিন');
                          } else if (confirmPassword == '') {
                            showGetSnackBar(
                                title: 'ত্রুটি',
                                message: 'পাসওয়ার্ড নিশ্চিন্ত করুন');
                          } else if (password != confirmPassword) {
                            showGetSnackBar(
                                title: 'ত্রুটি',
                                message: 'পাসওয়ার্ড ভিন্ন হয়েছে ');
                          } else {
                            BlocProvider.of<AuthCubit>(context).register(
                                name: name,
                                phoneNumber: phoneNumber,
                                email: email == '' ? 'no email' : email,
                                password: password,
                                role: role);
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                      buttonText(color: Colors.blueGrey, text: 'একাউন্ট আছে?'),
                      gap(w: 10.w),
                      InkWell(
                        onTap: () => pushOff(name: login_page),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: buttonText(
                              color: Colors.black, text: 'লগিন করুন'),
                        ),
                      ),
                    ],
                  ),
                  gap(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
