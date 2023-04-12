import '../api/api_service.dart';
import '../api/end_points.dart';

class BookHouseRepository {
  static Future<dynamic> bookHouseRepo({
    required String phoneNumber,
    required String ownerName,
    required String ownerNumber,
    required int houseId,
  }) async {
    Map<String, dynamic> map = {
      'phone_number': phoneNumber,
      'owner_name': ownerName,
      'owner_number': ownerNumber,
      'house_id': houseId,
    };
    return await ApiService.postApi(path: bookHouse, body: map);
  }
}
