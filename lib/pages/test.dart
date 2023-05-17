import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:appinio_video_player/appinio_video_player.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
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
  //   try {
  //     // GeoCode geoCode = GeoCode();
  //     // Address address = await geoCode.reverseGeocoding(
  //     //     latitude: position.latitude, longitude: position.longitude);
  //     // Coordinates coordinates =
  //     //     Coordinates(position.latitude, position.longitude);
  //     // final address =
  //     //     await Geocoder.local.findAddressesFromCoordinates(coordinates);
  //     List<Placemark> placemark =
  //         await placemarkFromCoordinates(position.latitude, position.longitude);
  //     Placemark address = placemark[0];

  //     log(address.toString());
  //   } catch (e) {
  //     log(e.toString());
  //   }
  // }

  // List<String> items = [
  //   'family',
  //   'bachelor',
  //   'female',
  //   'sublet',
  //   'office',
  //   'warehouse',
  //   'shop',
  //   'garage',
  //   'others',
  //   'industry',
  //   'flat',
  // ];

  // String? selectedValue;

  // File? _image;

  // Future<void> _pickImage() async {
  //   final picker = ImagePicker();
  //   final pickedFile = await picker.pickImage(source: ImageSource.gallery);
  //   if (pickedFile != null) {
  //     setState(() {
  //       _image = File(pickedFile.path);
  //       log(_image.toString());
  //     });
  //   }
  // }

  // Future<void> _uploadImage() async {
  //   if (_image == null) {
  //     return;
  //   }

  //   final formData = FormData.fromMap({
  //     'image': await MultipartFile.fromFile(_image!.path),
  //   });

  //   try {
  //     final response = await Dio().post(
  //       'http://10.0.2.2:5000/owner/photo',
  //       data: formData,
  //     );
  //     log(response.data);
  //   } catch (e) {
  //     log(e.toString());
  //   }
  // }

  late VideoPlayerController controller;
  late CustomVideoPlayerController customVideoPlayerController;
  @override
  void initState() {
    super.initState();
    try {
      controller = VideoPlayerController.asset('asset/logo/video.mp4');
      controller.addListener(() {
        setState(() {});
      });
      controller.setLooping(true);
      controller.setVolume(0.0);
      controller.initialize().then((value) {
        setState(() {});
        controller.play();
      });
      customVideoPlayerController = CustomVideoPlayerController(
        context: context,
        videoPlayerController: controller,
        customVideoPlayerSettings: CustomVideoPlayerSettings(
          deviceOrientationsAfterFullscreen: [DeviceOrientation.portraitUp],
          placeholderWidget: Center(
            child: Lottie.asset('asset/animations/timer.json'),
          ),
          showDurationRemaining: true,
          showDurationPlayed: true,
        ),
      );
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      appBar: AppBar(),
      body: CustomVideoPlayer(
        customVideoPlayerController: customVideoPlayerController,
      ),
    );
  }
}
