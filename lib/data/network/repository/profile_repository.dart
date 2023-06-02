
import '../api/api_service.dart';
import '../api/end_points.dart';

class ProfileRepository {
  static Future<dynamic> getProfile({required String phoneNumber}) async {
    Map<String, dynamic> map = {'phone_number': phoneNumber};
    return await ApiService.getApi(path: profile, body: map);
  }
}
