import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rent_house/pages/home/category_widget.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/storage_utils.dart';
import '../../utils/strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void getCurrentPosition() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      Geolocator.requestPermission();
    } else {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      log(position.longitude.toString());
      log(position.latitude.toString());
      getAddress(position);
    }
  }

  getAddress(Position position) async {
    List<Placemark> placemark =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemark[0];
    log('${place.subLocality},${place.locality},${place.subAdministrativeArea},${place.administrativeArea}');
    String address =
        '${place.subLocality},${place.locality},${place.subAdministrativeArea},${place.administrativeArea}';
    StorageUtils.saveLocation(address);
  }

  @override
  void initState() {
    super.initState();

    log(StorageUtils.getName().toString() +
        StorageUtils.getNumber().toString());
  }

  @override
  Widget build(BuildContext context) {
    final animations = [
      'asset/animations/family.riv',
      'asset/animations/bachelor.riv',
      'asset/animations/male.riv',
      'asset/animations/female.riv',
      'asset/animations/sublet.riv',
      'asset/animations/office.riv',
      'asset/animations/shop.riv',
      'asset/animations/garage.riv',
      'asset/animations/industry.riv',
      'asset/animations/flat.riv',
    ];

    final titles = [
      'Family',
      'Bachelor',
      'Male',
      'Female',
      'Sublet',
      'Office',
      'Shop',
      'Garage',
      'Industry',
      'Flat',
    ];

    handlePopUp(int value) {
      switch (value) {
        case 0:
          StorageUtils.logOut();
          pushOff(name: login_page);
          break;
        case 1:
          push(name: booked_house_page);
          break;
        default:
          null;
      }
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(appName),
        actions: [
          PopupMenuButton<int>(
            onSelected: (value) => handlePopUp(value),
            itemBuilder: (context) => [
              const PopupMenuItem<int>(value: 0, child: Text('লগ আউট')),
              const PopupMenuItem<int>(value: 1, child: Text('ভাড়াকৃত রুম')),
            ],
          ),
        ],
      ),
      resizeToAvoidBottomInset: true,
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          titles.length,
          (index) => CategoryWidget(
            title: titles[index],
            animation: animations[index],
          ),
        ),
      ),
    );
  }
}
