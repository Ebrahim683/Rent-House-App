import 'package:rent_house/data/network/api/api_service.dart';
import 'package:rent_house/data/network/api/end_points.dart';

class GetHouseListRepository {
  static Future<dynamic> getHouseList({required String category}) async {
    Map<String, dynamic> map = {'category': category};
    return await ApiService.getApi(path: getHouse, body: map);
  }
}
