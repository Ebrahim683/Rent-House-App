import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/assets.dart';
import 'package:rent_house/utils/storage_utils.dart';
import 'package:rent_house/utils/strings.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  checkLoggedIn() {
    Future.delayed(const Duration(seconds: 4), () {
      if (storageUtils.getRole == 'user') {
        pushOff(context: context, name: user_base_page);
      } else if (storageUtils.getRole == 'owner') {
        pushOff(context: context, name: owner_base_page);
      } else if (storageUtils.getOnBoarding == '') {
        pushOff(context: context, name: onboarding_page);
      } else {
        pushOff(context: context, name: login_page);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    checkLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 245, 145, 98),
                Color.fromARGB(255, 41, 67, 136),
              ]),
        ),
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                family,
                height: size.height * 0.4,
                width: size.width * 0.4,
              )
                  .animate()
                  .rotate(duration: 1500.ms)
                  .then()
                  .shimmer(duration: 1500.ms),
            ),
            Positioned(
              bottom: 20.h,
              left: size.width * 0.25,
              child: Text(
                appName,
                style: const TextStyle(
                  color: Colors.grey,
                  wordSpacing: 15,
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
              )
                  .animate()
                  .fadeIn(duration: 1500.ms)
                  .then()
                  .shimmer(duration: 1500.ms),
            ),
          ],
        ),
      ),
    );
  }
}
