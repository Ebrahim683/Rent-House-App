import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/utils/storage_utils.dart';

import '../../../routers/routes.dart';
import '../../../state/cubit/profile/profile_cubit.dart';
import '../../../state/cubit/showbookedhouse/show_booked_house_cubit.dart';
import '../../profile/profile_page.dart';
import '../home/home_page.dart';
import '../house/booked/booked_house_page.dart';

class UserBasePage extends StatefulWidget {
  const UserBasePage({super.key});

  @override
  State<UserBasePage> createState() => _UserBasePageState();
}

class _UserBasePageState extends State<UserBasePage> {
  final title = [
    'হোম',
    'ভাড়াকৃত রুম',
    'প্রোফাইল',
  ];
  final _pages = [
    const HomePage(),
    BlocProvider(
      create: (context) => ShowBookedHouseCubit(),
      child: const BookedHousePage(),
    ),
  ];
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    log('user base page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 225, 229, 233),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                child: Image.asset(
                  'asset/icons/menu.png',
                  color: Colors.black,
                  height: 30.h,
                  width: 30.h,
                ),
              ),
            );
          },
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
              leading: const Icon(Icons.person_2_outlined),
              title: Text(title[2]),
              onTap: () {
                pop(context: context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                        create: (context) => ProfileCubit(),
                        child: const ProfilePage()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
