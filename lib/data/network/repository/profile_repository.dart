import 'package:rent_house/utils/storage_utils.dart';

import '../api/api_service.dart';
import '../api/end_points.dart';

class ProfileRepository {
  static Future<dynamic> getProfile() async {
    Map<String, dynamic> map = {'phone_number': storageUtils.getNumber};
    return await ApiService.getApi(path: profile, body: map);
  }
}
