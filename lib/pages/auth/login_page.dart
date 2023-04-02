import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rent_house/state/cubit/authcubit/auth_cubit.dart';
import 'package:rent_house/state/cubit/authcubit/auth_state.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('লগিন'),
        automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccessState) {
            pushOff(name: home_page);
            log(state.authModel.message.toString());
          } else if (state is AuthErrorState) {
            showGetSnackBar(title: 'ত্রুটি', message: state.error);
            log(state.error);
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
                    controller: mobileController,
                    hint: 'নাম্বার',
                    icon: Icons.dialpad,
                    type: TextInputType.phone,
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
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: SizedBox(
                      height: 50.h,
                      width: double.infinity,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r)),
                        color: btnColor,
                        onPressed: () {
                          String phoneNumber =
                              mobileController.text.trim().toString();
                          String password =
                              passwordController.text.trim().toString();
                          if (phoneNumber == '') {
                            showGetSnackBar(
                                title: 'ত্রুটি',
                                message: 'আপনার ফোন নম্বর লিখুন');
                          } else if (password == '') {
                            showGetSnackBar(
                                title: 'ত্রুটি',
                                message: 'আপনার পাসওয়ার্ড লিখুন');
                          } else {
                            BlocProvider.of<AuthCubit>(context).login(
                                phoneNumber: phoneNumber, password: password);
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buttonText(color: Colors.blueGrey, text: 'এখানে নতুন?'),
                      gap(w: 10.w),
                      InkWell(
                        onTap: () => pushOff(name: user_register_page),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: buttonText(
                              color: Colors.black, text: 'নিবন্ধন করুন'),
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
