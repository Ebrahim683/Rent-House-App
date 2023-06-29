import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/app_colors.dart';
import 'package:rent_house/utils/notification_service.dart';
import 'package:rent_house/utils/storage_utils.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

/*   await AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
        channelKey: channelKey,
        channelName: channelName,
        channelDescription: channelDescription,
        importance: NotificationImportance.Max,
        playSound: true,
        onlyAlertOnce: true,
        criticalAlerts: true,
        enableVibration: true,
        enableLights: true,
      )
    ],
    debug: true,
  ); */
  NotificationService.notificationInit();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await storageUtils.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 892),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: favColor,
          ),
          scaffoldBackgroundColor: bgColor,
          appBarTheme: AppBarTheme(color: bgColor),
        ),
        initialRoute: splash_page,
        onGenerateRoute: Routers.onGenerateRoute,
      ),
    );
  }
}
