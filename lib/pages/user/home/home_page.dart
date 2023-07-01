import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rent_house/pages/user/home/category_widget.dart';
import 'package:rent_house/utils/storage_utils.dart';

import '../../../utils/assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // void getCurrentPosition() async {
  //   LocationPermission permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied ||
  //       permission == LocationPermission.deniedForever) {
  //     Geolocator.requestPermission();
  //   } else {
  //     Position position = await Geolocator.getCurrentPosition(
  //         desiredAccuracy: LocationAccuracy.high);
  //     log(position.longitude.toString());
  //     log(position.latitude.toString());
  //     getAddress(position);
  //   }
  // }

  // getAddress(Position position) async {
  //   List<Placemark> placemark =
  //       await placemarkFromCoordinates(position.latitude, position.longitude);
  //   Placemark place = placemark[0];
  //   log('${place.subLocality},${place.locality},${place.subAdministrativeArea},${place.administrativeArea}');
  //   String address =
  //       '${place.subLocality},${place.locality},${place.subAdministrativeArea},${place.administrativeArea}';
  //   StorageUtils.saveLocation(address);
  // }

  @override
  void initState() {
    super.initState();

    log(storageUtils.getName.toString() + storageUtils.getNumber.toString());
  }

  @override
  Widget build(BuildContext context) {
    // 'asset/icons/family.png',
    // 'asset/icons/bachelor.png',
    // 'asset/icons/male.png',
    // 'asset/icons/female.png',
    // 'asset/icons/sublet.png',
    // 'asset/icons/office.png',
    // 'asset/icons/shop.png',
    // 'asset/icons/garage.png',
    // 'asset/icons/industry.png',
    // 'asset/icons/flat.png',
    final images = [
      family,
      bachelor,
      male,
      female,
      sublet,
      office,
      shop,
      garage,
      industry,
      flat,
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

    final colors = [
      Colors.red,
      Colors.orange,
      Colors.blue,
      Colors.pink,
      Colors.green,
      Colors.amber,
      Colors.cyan,
      Colors.yellow,
      Colors.purple,
      Colors.lime,
    ];

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
        children: List.generate(
          titles.length,
          (index) => CategoryWidget(
            title: titles[index],
            image: images[index],
            color: colors[index],
          ),
        ),
      ),
    );
  }
}
