import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/storage_utils.dart';
import 'package:rive/rive.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  checkLoggedIn() {
    Future.delayed(const Duration(seconds: 4), () {
      if (StorageUtils.getRole() == 'user') {
        pushOff(name: home_page);
      } else if (StorageUtils.getRole() == 'owner') {
        pushOff(name: owner_dashboard_page);
      } else {
        pushOff(name: login_page);
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
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 49, 49),
      body: RiveAnimation.asset(
        'asset/animations/loading1.riv',
      ),
    );
  }
}
