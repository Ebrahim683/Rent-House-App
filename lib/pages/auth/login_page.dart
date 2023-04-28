import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rent_house/state/cubit/authcubit/login_cubit.dart';
import 'package:rent_house/state/cubit/authcubit/login_state.dart';
import 'package:rent_house/utils/storage_utils.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:rive/rive.dart';

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
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            log(state.loginModel.message.toString());
            StorageUtils.saveNumber(mobileController.text.trim().toString());
            StorageUtils.saveName(state.loginModel.data![0].name.toString());
            StorageUtils.saveRole(state.loginModel.data![0].role.toString());
            if (state.loginModel.data![0].role == 'user') {
              pushOff(name: home_page);
            } else if (state.loginModel.data![0].role == 'owner') {
              pushOff(name: owner_dashboard_page);
            }
          } else if (state is LoginErrorState) {
            errorDialog(context: context, message: state.error);
            // showGetSnackBar(title: 'ত্রুটি', message: state.error);
            log(state.error);
          }
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state is LoginLoadingState ? true : false,
            progressIndicator:
                const RiveAnimation.asset('asset/animations/loadingEarth.riv'),
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
                            BlocProvider.of<LoginCubit>(context).login(
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
