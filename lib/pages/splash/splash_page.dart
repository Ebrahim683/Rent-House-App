import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/app_colors.dart';
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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.bottom,
    ]);
    checkLoggedIn();
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
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
            image: AssetImage(splash_bg),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              family,
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
