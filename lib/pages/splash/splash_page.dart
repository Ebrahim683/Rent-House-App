import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/app_colors.dart';
import 'package:rent_house/utils/assets.dart';
import 'package:rent_house/utils/storage_utils.dart';
import 'package:rent_house/utils/strings.dart';

import '../../data/model/profile/profile_model_list.dart';
import '../../data/network/repository/profile_repository.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  checkLoggedIn() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        if (storageUtils.getRole == 'user') {
          getUserProfile();
          pushOff(context: context, name: user_base_page);
        } else if (storageUtils.getRole == 'owner') {
          getUserProfile();
          pushOff(context: context, name: owner_base_page);
        } else if (storageUtils.getOnBoarding == '') {
          pushOff(context: context, name: onboarding_page);
        } else {
          pushOff(context: context, name: login_page);
        }
      },
    );
  }

  getUserProfile() async {
    try {
      final result = await ProfileRepository.getProfile(
          phoneNumber: storageUtils.getNumber.toString());
      ProfileModelList profileModelList = ProfileModelList.fromJson(result);
      List<ProfileModel>? profileModel = profileModelList.profileModel!;
      StorageUtils.clearProfilePic();
      storageUtils.saveProfilePic(
        profileModel[0].profilePic.toString(),
      );
      log(profileModel[0].profilePic.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    checkLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: splashScreenColor,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img_splash_bg),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              family_icon,
              height: size.height * 0.4,
              width: size.width * 0.4,
            )
                .animate()
                .fadeIn(duration: 1500.ms)
                .then()
                .shimmer(duration: 1500.ms),
            Text(
              appName,
              style: const TextStyle(
                color: Colors.white,
                wordSpacing: 15,
                fontSize: 40,
                fontWeight: FontWeight.w400,
              ),
            )
                .animate()
                .fadeIn(duration: 1500.ms)
                .then()
                .shimmer(duration: 1500.ms, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
