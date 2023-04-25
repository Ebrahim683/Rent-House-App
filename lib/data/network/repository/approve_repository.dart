import 'package:rent_house/data/network/api/api_service.dart';
import 'package:rent_house/utils/storage_utils.dart';

import '../api/end_points.dart';

class ApproveRepository {
  static approve({
    required int requestId,
    required int houseId,
    required String userName,
    required String userNumber,
  }) async {
    Map<String, dynamic> map = {
      'request_id': requestId,
      'house_id': houseId,
      'user_name': userName,
      'user_number': userNumber,
      'owner_name': StorageUtils.getName(),
      'owner_number': StorageUtils.getNumber(),
    };
    return await ApiService.deleteApi(path: approveLeaveRoomRequest, body: map);
  }
}