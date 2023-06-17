import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/pages/owners/dashboard/owner_dashboard_page.dart';
import 'package:rent_house/utils/storage_utils.dart';
import '../../../routers/routes.dart';
import '../../../state/cubit/owner/bookhouserequest/book_house_list_cubit.dart';
import '../../../state/cubit/owner/leaveroomrequestlist/leave_room_request_list_cubit.dart';
import '../../../state/cubit/owner/showownerbookedhouse/show_owner_booked_house_cubit.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/strings.dart';
import '../bookhouserequest/book_house_request_page.dart';
import '../leaveroomrequestlist/leave_room_request_list_page.dart';
import '../userslist/users_list_page.dart';

class OwnerBasePage extends StatefulWidget {
  const OwnerBasePage({super.key});

  @override
  State<OwnerBasePage> createState() => _OwnerBasePageState();
}

class _OwnerBasePageState extends State<OwnerBasePage> {
  final title = [
    appName,
    'ভাড়াটিয়া লিস্ট',
    'ভাড়ার আবেদন',
    'রুম ছাড়ার আবেদন',
  ];
  final icons = [
    Icons.home_outlined,
    Icons.list_alt_outlined,
    Icons.group_outlined,
    Icons.group_off_outlined,
  ];
  final _pages = [
    const OwnerDashboardPage(),
    BlocProvider(
      create: (context) => ShowOwnerBookedHouseCubit(),
      child: const UsersListPage(),
    ),
    BlocProvider(
      create: (context) => BookHouseRequestListCubit(),
      child: const BookHouseRequestPage(),
    ),
    BlocProvider(
      create: (context) => LeaveRoomRequestListCubit(),
      child: const LeaveRoomRequestListPage(),
    ),
  ];
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    log('owner base page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundColor: const Color.fromRGBO(190, 239, 126, 1),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, profile_page, arguments: {
                    'phoneNumber': storageUtils.getNumber,
                    'role': 'me'
                  });
                },
                icon: const Icon(Icons.person_outline)),
          ),
        ),
        title: Text(title[currentIndex]),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: InkWell(
              onTap: () {
                StorageUtils.logOut();
                pushOff(context: context, name: login_page);
              },
              child: const Icon(Icons.logout_outlined),
            ),
          ),
        ],
      ),
      body: _pages[currentIndex],
      bottomNavigationBar: navigationBar(),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: favColor,
        onPressed: () {
          push(context: context, name: add_house_page);
        },
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text(
          'রুম স্থাপন',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget navigationBar() {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h, left: 8.w, right: 8.w),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
        child: NavigationBar(
          backgroundColor: bottomNavColor,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: const Duration(milliseconds: 800),
          indicatorColor: Colors.white,
          destinations: [
            NavigationDestination(icon: Icon(icons[0]), label: 'হোম'),
            NavigationDestination(icon: Icon(icons[1]), label: title[1]),
            NavigationDestination(icon: Icon(icons[2]), label: title[2]),
            NavigationDestination(icon: Icon(icons[3]), label: title[3]),
          ],
          selectedIndex: currentIndex,
          onDestinationSelected: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        ),
      ),
    );
  }
}
