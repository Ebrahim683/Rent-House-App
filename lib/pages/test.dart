import 'dart:developer';
import 'package:dio/dio.dart' as _dio;
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  getProfile() async {
    log('called');
    var dio = _dio.Dio();
    final data = {"phone_number": "0123456789"};
    try {
      final response = await dio.post('http://10.0.2.2:3000/profile',queryParameters: data);
      log(response.data.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 50,
          width: 200,
          child: ElevatedButton(
              onPressed: () {
                getProfile();
              },
              child: const Text('Click')),
        ),
      ),
    );
  }
}
