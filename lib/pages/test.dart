import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:rent_house/pages/house/houselist/house_search.dart';
import 'package:geolocator/geolocator.dart';

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

  @override
  void initState() {
    super.initState();
    getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () =>
                  showSearch(context: context, delegate: HouseSearch()),
              icon: const Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  getCurrentPosition();
                },
                child: Text('get location')),
          ],
        ),
      ),
    );
  }
}
