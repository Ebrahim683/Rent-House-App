import 'package:rent_house/data/network/api/api_service.dart';
import 'package:rent_house/data/network/api/end_points.dart';
import 'package:rent_house/utils/storage_utils.dart';

class LeaveRoomRequestListRepository {
  static requestList() async {
    Map<String, dynamic> map = {
      'owner_name': storageUtils.getName!.toLowerCase(),
      'owner_number': storageUtils.getNumber,
    };
    return await ApiService.getApi(path: leaveRoomRequests, body: map);
  }
}
