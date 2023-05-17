import 'package:flutter/material.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/storage_utils.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  checkLoggedIn() {
    Future.delayed(const Duration(seconds: 4), () {
      if (storageUtils.getRole == 'user') {
        pushOff(context: context, name: home_page);
      } else if (storageUtils.getRole == 'owner') {
        pushOff(context: context, name: owner_dashboard_page);
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
        child: Center(
          child: Lottie.asset(
            'asset/animations/loading.json',
          ),
        ),
      ),
    );
  }
}
