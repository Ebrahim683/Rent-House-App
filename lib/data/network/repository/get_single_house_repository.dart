import 'package:rent_house/data/network/api/api_service.dart';
import 'package:rent_house/data/network/api/end_points.dart';
import 'package:rent_house/utils/storage_utils.dart';

class GetSingleHouseRepository {
  static Future<dynamic> singleHouse({required String time}) async {
    Map<String, dynamic> map = {
      'owner_name': storageUtils.getName,
      'owner_number': storageUtils.getNumber,
      'time': time,
    };
    return await ApiService.getApi(path: getSingleHouse, body: map);
  }

  static Future<dynamic> approve({
    required String userNumber,
    required int houseId,
  }) async {
    Map<String, dynamic> map = {
      'phone_number': userNumber,
      'owner_name': storageUtils.getName,
      'owner_number': storageUtils.getNumber,
      'house_id': houseId,
    };
    return await ApiService.postApi(path: approveRoomRequest, body: map);
  }
}
