import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/pages/auth/login_page.dart';
import 'package:rent_house/pages/auth/user_register_page.dart';
import 'package:rent_house/pages/owners/base/owner_base_page.dart';
import 'package:rent_house/pages/owners/dashboard/owner_dashboard_page.dart';
import 'package:rent_house/pages/owners/leaveroomrequestlist/approve_page.dart';
import 'package:rent_house/pages/owners/leaveroomrequestlist/leave_room_request_list_page.dart';
import 'package:rent_house/pages/owners/userslist/users_list_page.dart';
import 'package:rent_house/pages/splash/splash_page.dart';
import 'package:rent_house/pages/test.dart';
import 'package:rent_house/state/cubit/authcubit/auth_cubit.dart';
import 'package:rent_house/state/cubit/authcubit/login_cubit.dart';
import 'package:rent_house/state/cubit/bookhouse/book_house_cubit.dart';
import 'package:rent_house/state/cubit/leaveroomrequest/leave_room_request_cubit.dart';
import 'package:rent_house/state/cubit/owner/approve/approve_cubit.dart';
import 'package:rent_house/state/cubit/owner/showownerhouse/show_owner_house_cubit.dart';

import '../pages/auth/owner_registrater_page.dart';
import '../pages/onboarding/onboarding_page.dart';
import '../pages/owners/addhouse/add_house_page.dart';
import '../pages/owners/updatehouse/update_house_page.dart';
import '../pages/profile/user_profile_page.dart';
import '../pages/user/base/user_base_page.dart';
import '../pages/user/home/home_page.dart';
import '../pages/user/house/booked/book_house_details_page.dart';
import '../pages/user/house/booked/booked_house_page.dart';
import '../pages/user/house/details/house_details.dart';
import '../pages/user/house/details/video/room_video_page.dart';
import '../pages/user/house/houselist/house_list_page.dart';
import '../state/cubit/gethouse/get_house_list_cubit.dart';
import '../state/cubit/owner/addhouse/add_house_cubit.dart';
import '../state/cubit/owner/leaveroomrequestlist/leave_room_request_list_cubit.dart';
import '../state/cubit/owner/showownerbookedhouse/show_owner_booked_house_cubit.dart';
import '../state/cubit/owner/updatehouse/update_house_cubit.dart';
import '../state/cubit/showbookedhouse/show_booked_house_cubit.dart';

String get test_page => '/test_page';
String get onboarding_page => '/onboarding_page';
String get splash_page => '/splash_page';
String get user_base_page => '/user_base_page';
String get home_page => '/home_page';
String get login_page => '/login_page';
String get user_register_page => '/user_register_page';
String get owner_register_page => '/owner_register_page';
String get house_list_page => '/house_list_page';
String get house_details_page => '/house_details_page';
String get booked_house_page => '/booked_house_page';
String get booked_house_details_page => '/booked_house_details_page';
String get room_video_page => '/room_video_page';
String get profile_page => '/profile_page';
//owner=======================================
String get owner_base_page => '/owner_base_page';
String get owner_dashboard_page => '/owner_dashboard_page';
String get add_house_page => '/add_house_page';
String get users_list_page => '/users_list_page';
String get update_house_page => '/update_house_page';
String get leave_room_page_request_list_page =>
    '/leave_room_page_request_list_page';
String get approve_page => '/approve_page';

push({required BuildContext context, required String name}) {
  Navigator.pushNamed(context, name);
}

pushOff({required BuildContext context, required String name}) {
  Navigator.pushReplacementNamed(context, name);
}

pop({required BuildContext context}) {
  Navigator.pop(context);
}

class Routers {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      //splash
      case '/splash_page':
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
        );
      //onboarding
      case '/onboarding_page':
        return MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        );
      //login
      case '/login_page':
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(),
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
      //user base page
      case '/user_base_page':
        return MaterialPageRoute(
          builder: (context) => const UserBasePage(),
        );
      //user profile
      case '/profile_page':
        return MaterialPageRoute(
          builder: (context) => const ProfilePage(),
        );
      //base_page_user

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
      //room list
      case '/house_list_page':
        Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => GetHouseListCubit(arguments['category']),
            child: HouseListPage(
              category: arguments['category'],
              title: arguments['title'],
            ),
          ),
        );
      //room details
      case '/house_details_page':
        Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => BookHouseCubit(),
            child: HouseDetailsPage(
              getHouseModel: arguments['getHouseModel'],
            ),
          ),
        );
      //booked house
      case '/booked_house_page':
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ShowBookedHouseCubit(),
            child: const BookedHousePage(),
          ),
        );
      //booked house details
      case '/booked_house_details_page':
        Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LeaveRoomRequestCubit(),
            child: BookedHouseDetailsPage(
              bookedHouseModel: arguments['bookedHouseModel'],
            ),
          ),
        );
      //owner dashboard
      case '/owner_dashboard_page':
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
              create: (BuildContext context) => ShowOwnerHouseCubit(),
              child: const OwnerDashboardPage()),
        );
      //add house
      case '/add_house_page':
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AddHouseCubit(),
            child: const AddHousePage(),
          ),
        );
      //users list
      case '/users_list_page':
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ShowOwnerBookedHouseCubit(),
            child: const UsersListPage(),
          ),
        );
      //update house
      case '/update_house_page':
        Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => UpdateHouseCubit(),
            child: UpdateHousePage(
              ownerHouseModel: arguments['ownerHouseModel'],
            ),
          ),
        );
      //leave room request page
      case '/leave_room_page_request_list_page':
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LeaveRoomRequestListCubit(),
            child: const LeaveRoomRequestListPage(),
          ),
        );
      //approve page
      case '/approve_page':
        Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ApproveCubit(),
            child: ApprovePage(
              leaveRoomModel: arguments['leaveRoomModel'],
            ),
          ),
        );
      //owner base page
      case '/owner_base_page':
        return MaterialPageRoute(
          builder: (context) => const OwnerBasePage(),
        );
      //video page
      case '/room_video_page':
        Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => RoomVideoPage(
            videoUrl: arguments['videoUrl'],
          ),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(child: Text('Page not found')),
                ));
    }
  }
}
