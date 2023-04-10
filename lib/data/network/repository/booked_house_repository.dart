import 'package:rent_house/data/network/api/api_service.dart';
import 'package:rent_house/data/network/api/end_points.dart';
import 'package:rent_house/utils/storage_utils.dart';

class BookedHouseRepository {
  static Future<dynamic> bookedHouse() async {
    Map<String, dynamic> map = {
      'phone_number': StorageUtils.getNumber().toString(),
      'name': StorageUtils.getName().toString()
    };
    return await ApiService.getApi(path: showBookedHouse, body: map);
  }
}
