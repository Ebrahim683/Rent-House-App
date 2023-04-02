import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:rent_house/state/cubit/authcubit/auth_cubit.dart';
import 'package:rent_house/pages/auth/login_page.dart';
import 'package:rent_house/pages/auth/user_register_page.dart';
import 'package:rent_house/pages/home/home_page.dart';
import 'package:rent_house/pages/test.dart';

import '../pages/auth/owner_registrater_page.dart';
import '../pages/onboarding/onboarding_page.dart';

String get test_page => '/test_page';
String get onboarding_page => '/onboarding_page';
String get home_page => '/home_page';
String get login_page => '/login_page';
String get user_register_page => '/user_register_page';
String get owner_register_page => '/owner_register_page';

push({required String name}) {
  Get.toNamed(name);
}

pushOff({required String name}) {
  Get.offNamed(name);
}

class Routers {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      //login
      case '/login_page':
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const LoginPage(),
          ),
        );
      //user register
      case '/user_register_page':
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const UserRegisterPage(),
          ),
        );
      //owner register
      case '/owner_register_page':
        return MaterialPageRoute(
          builder: (context) => const OwnerRegisterPage(),
        );
      //homepage
      case '/home_page':
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      //test
      case '/test_page':
        return MaterialPageRoute(
          builder: (context) => const TestPage(),
        );

      case '/onboarding_page':
        return MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        );
      default:
        null;
    }
    return null;
  }
}
