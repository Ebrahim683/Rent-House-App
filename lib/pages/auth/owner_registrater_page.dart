import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/utils/utils.dart';

import '../../utils/app_colors.dart';
import '../../widget/app_widget.dart';

class OwnerRegisterPage extends StatelessWidget {
  const OwnerRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final mobileController = TextEditingController();
    final nidController = TextEditingController();
    final currentAddressController = TextEditingController();
    final permanentAddressController = TextEditingController();
    final jobController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                inputText(controller: nameController, hint: 'সম্পূর্ণ নাম'),
                gap(),
                inputText(controller: mobileController, hint: 'নাম্বার'),
                gap(),
                inputText(controller: nidController, hint: 'ভোটার নং'),
                gap(),
                inputText(
                    controller: currentAddressController,
                    hint: 'বর্তমান ঠিকানা'),
                gap(),
                inputText(
                    controller: permanentAddressController,
                    hint: 'স্থায়ি ঠিকানা'),
                gap(),
                inputText(controller: jobController, hint: 'পেশা'),
                gap(),
                inputText(
                    controller: emailController, hint: 'ইমেইল (যদি থাকে)'),
                gap(),
                inputText(controller: passwordController, hint: 'পাসওয়ার্ড'),
                gap(),
                inputText(
                    controller: confirmPasswordController,
                    hint: 'পাসওয়ার্ড নিশ্চিত করুন'),
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
                        snackBar(
                          title: 'Message',
                          message: 'Register',
                          context: context,
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          buttonText(text: "নিবন্ধন করুন"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
