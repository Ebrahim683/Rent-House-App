import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:rent_house/routers/routes.dart';
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
              child: Text(
                appName,
                style: const TextStyle(
                  color: Colors.teal,
                  wordSpacing: 15,
                  fontSize: 40,
                ),
              ).animate().shimmer(duration: 2500.ms).shake(),
            ),
            Positioned(
              bottom: 20,
              left: MediaQuery.of(context).size.width * 0.45,
              child: const CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
