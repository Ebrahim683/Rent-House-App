import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/storage_utils.dart';
import 'package:rent_house/utils/strings.dart';
import 'package:shimmer/shimmer.dart';

import '../../widget/app_widget.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Shimmer(
                gradient: const LinearGradient(
                    colors: [Colors.black45, Colors.white60]),
                child: Text(
                  appName,
                  style: TextStyle(
                    color: Colors.amber[50],
                    wordSpacing: 15,
                    letterSpacing: 10,
                    fontSize: 30,
                  ),
                ).animate().shake(),
              ),
            ),
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
