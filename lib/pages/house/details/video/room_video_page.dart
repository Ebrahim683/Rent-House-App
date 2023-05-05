import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:lottie/lottie.dart';

class RoomVideoPage extends StatefulWidget {
  final String videoUrl;
  const RoomVideoPage({super.key, required this.videoUrl});

  @override
  State<RoomVideoPage> createState() => _RoomVideoPageState();
}

class _RoomVideoPageState extends State<RoomVideoPage> {
  late VideoPlayerController controller;
  late CustomVideoPlayerController customVideoPlayerController;
  @override
  void initState() {
    super.initState();
    log(widget.videoUrl);
    try {
      controller = VideoPlayerController.network(widget.videoUrl);
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
      appBar: AppBar(
        title: const Text('ভিডিও'),
      ),
      body: CustomVideoPlayer(
        customVideoPlayerController: customVideoPlayerController,
      ),
    );
  }
}
