import 'dart:developer';

import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

showSnackBar({required BuildContext context, required String message}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    margin: EdgeInsets.symmetric(horizontal: 15.w),
  ));
}

snackBar(
    {required BuildContext context,
    required String title,
    required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      behavior: SnackBarBehavior.floating,
    ),
  );
}

errorDialog({required BuildContext context, required String message}) {
  CoolAlert.show(
      context: context,
      type: CoolAlertType.error,
      text: message,
      loopAnimation: true);
}

successDialog({required BuildContext context, required String message}) {
  CoolAlert.show(
    context: context,
    type: CoolAlertType.success,
    text: message,
    loopAnimation: true,
  );
}

warningDialog({required BuildContext context, required String message}) {
  CoolAlert.show(
      context: context,
      type: CoolAlertType.warning,
      text: message,
      loopAnimation: true);
}

makeCall({required String number}) async {
  final Uri url = Uri(scheme: 'tel', path: number);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    log('fail');
  }
}
