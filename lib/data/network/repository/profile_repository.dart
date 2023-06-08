import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rent_house/utils/storage_utils.dart';

import '../api/api_service.dart';
import '../api/end_points.dart';

class ProfileRepository {
  static Future<dynamic> getProfile({required String phoneNumber}) async {
    Map<String, dynamic> map = {'phone_number': phoneNumber};
    return await ApiService.getApi(path: profile, body: map);
  }

  static Future<dynamic> updateProfile({required File profilePic}) async {
    Map<String, dynamic> map = {'phone_number': storageUtils.getNumber};
    var profileImage = await MultipartFile.fromFile(profilePic.path);
    final formData = FormData.fromMap({'profileImage': profileImage});
    return await ApiService.putApi(
        path: updateProfilePic, body: map, data: formData);
  }
}
