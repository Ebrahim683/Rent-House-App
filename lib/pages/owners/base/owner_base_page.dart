import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/pages/owners/dashboard/owner_dashboard_page.dart';
import 'package:rent_house/utils/storage_utils.dart';
import '../../../routers/routes.dart';
import '../../../state/cubit/owner/addhouse/add_house_cubit.dart';
import '../../../state/cubit/owner/leaveroomrequestlist/leave_room_request_list_cubit.dart';
import '../../../state/cubit/owner/showownerbookedhouse/show_owner_booked_house_cubit.dart';
import '../../profile/user_profile_page.dart';
import '../addhouse/add_house_page.dart';
import '../leaveroomrequestlist/leave_room_request_list_page.dart';
import '../userslist/users_list_page.dart';

class OwnerBasePage extends StatefulWidget {
  const OwnerBasePage({super.key});

  @override
  State<OwnerBasePage> createState() => _OwnerBasePageState();
}

class _OwnerBasePageState extends State<OwnerBasePage> {
  final title = [
    'হোম',
    'রুম স্থাপন',
    'ভাড়াটিয়া লিস্ট',
    'রুম ছাড়ার আবেদন',
    'প্রোফাইল',
  ];
  final _pages = [
    const OwnerDashboardPage(),
    BlocProvider(
      create: (context) => AddHouseCubit(),
      child: const AddHousePage(),
    ),
    BlocProvider(
      create: (context) => ShowOwnerBookedHouseCubit(),
      child: const UsersListPage(),
    ),
    BlocProvider(
      create: (context) => LeaveRoomRequestListCubit(),
      child: const LeaveRoomRequestListPage(),
    ),
    const ProfilePage(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                decoration: const BoxDecoration(color: Colors.teal),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: Text(title[0]),
              onTap: () {
                pop(context: context);
                setState(() {
                  currentIndex = 0;
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.format_list_bulleted_rounded),
              title: Text(title[1]),
              onTap: () {
                pop(context: context);
                setState(() {
                  currentIndex = 1;
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.format_list_bulleted_rounded),
              title: Text(title[2]),
              onTap: () {
                pop(context: context);
                setState(() {
                  currentIndex = 2;
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.format_list_bulleted_rounded),
              title: Text(title[3]),
              onTap: () {
                pop(context: context);
                setState(() {
                  currentIndex = 3;
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_2_outlined),
              title: Text(title[4]),
              onTap: () {
                pop(context: context);
                setState(() {
                  currentIndex = 4;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
