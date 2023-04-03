import 'package:flutter/material.dart';
import 'package:rent_house/routers/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(microseconds: 2000), () {
      pushOff(name: home_page);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
