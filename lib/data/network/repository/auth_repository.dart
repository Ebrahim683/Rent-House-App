import 'package:rent_house/data/network/api/api_service.dart';

import '../api/end_points.dart';

class AuthRepository {
  static Future<dynamic> loginUser(
      {required String phoneNumber, required String password}) async {
    Map<String, dynamic> map = {
      'phone_number': phoneNumber,
      'password': password
    };
    return await ApiService.postApi(path: login, body: map);
  }

  static Future<dynamic> registerUser(
      {required String name,
      required String phoneNumber,
      required String email,
      required String password,
      required String role}) async {
    Map<String, dynamic> map = {
      'name': name,
      'phone_number': phoneNumber,
      'email': email,
      'password': password,
      'role': role
    };
    return await ApiService.postApi(path: register, body: map);
  }
}
