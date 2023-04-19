import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/storage_utils.dart';
import 'package:rent_house/widget/app_widget.dart';

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
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('asset/animations/house1.json'),
            gap(),
            const CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
