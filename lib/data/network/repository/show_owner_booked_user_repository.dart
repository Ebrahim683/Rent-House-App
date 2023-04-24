import 'package:rent_house/data/network/api/api_service.dart';
import 'package:rent_house/data/network/api/end_points.dart';
import 'package:rent_house/utils/storage_utils.dart';

class ShowOwnerBookedUserRepository {
  static showBookedUser() async {
    Map<String, dynamic> map = {
      'owner_name': StorageUtils.getName(),
      'owner_number': StorageUtils.getNumber()
    };
    return await ApiService.getApi(path: showBookedHouseOwner, body: map);
  }
}