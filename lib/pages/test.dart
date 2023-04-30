import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:rent_house/pages/house/houselist/house_search.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:rent_house/widget/app_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
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
    try {
      // GeoCode geoCode = GeoCode();
      // Address address = await geoCode.reverseGeocoding(
      //     latitude: position.latitude, longitude: position.longitude);
      // Coordinates coordinates =
      //     Coordinates(position.latitude, position.longitude);
      // final address =
      //     await Geocoder.local.findAddressesFromCoordinates(coordinates);
      List<Placemark> placemark =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark address = placemark[0];

      log(address.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  List<String> items = [
    'family',
    'bachelor',
    'female',
    'sublet',
    'office',
    'warehouse',
    'shop',
    'garage',
    'others',
    'industry',
    'flat',
  ];

  String? selectedValue;

  @override
  void initState() {
    super.initState();
    // getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('call'),
              onPressed: () async {
                makeCall(number: '5434165465');
              },
            ),
          ],
        ),
      ),
    );
  }
}
