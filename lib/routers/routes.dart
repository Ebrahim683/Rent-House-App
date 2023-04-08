import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:rent_house/pages/splash/splash_page.dart';
import 'package:rent_house/state/cubit/authcubit/auth_cubit.dart';
import 'package:rent_house/pages/auth/login_page.dart';
import 'package:rent_house/pages/auth/user_register_page.dart';
import 'package:rent_house/pages/home/home_page.dart';
import 'package:rent_house/pages/test.dart';

import '../pages/auth/owner_registrater_page.dart';
import '../pages/house/details/house_details.dart';
import '../pages/house/houselist/house_list_page.dart';
import '../pages/onboarding/onboarding_page.dart';
import '../state/cubit/gethouse/get_house_list_cubit.dart';

String get test_page => '/test_page';
String get splash_page => '/splash_page';
String get onboarding_page => '/onboarding_page';
String get home_page => '/home_page';
String get login_page => '/login_page';
String get user_register_page => '/user_register_page';
String get owner_register_page => '/owner_register_page';
String get house_list_page => '/house_list_page';
String get house_details_page => '/house_details_page';

push({required String name}) {
  Get.toNamed(name);
}

pushOff({required String name}) {
  Get.offNamed(name);
}

class Routers {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      //splash
      case '/splash_page':
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
        );
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
      //onboarding
      case '/onboarding_page':
        return MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        );
      //room list
      case '/house_list_page':
        Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => GetHouseListCubit(arguments['category']),
            child: HouseListPage(
              category: arguments['category'],
            ),
          ),
        );
      //room details
      case '/house_details_page':
        return MaterialPageRoute(
          builder: (context) => HouseDetailsPage(),
        );
      default:
        null;
    }
    return null;
  }
}
