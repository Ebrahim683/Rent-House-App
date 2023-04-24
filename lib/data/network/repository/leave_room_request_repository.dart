import 'package:rent_house/data/network/api/api_service.dart';
import 'package:rent_house/data/network/api/end_points.dart';

class LeaveRoomRequestRepository {
  static leaveRoom({
    required int id,
    required String userName,
    required String userNumber,
  }) async {
    Map<String, dynamic> map = {
      'id':id,
      'user_name': userName,
      'user_number': userNumber,
    };
    return await ApiService.postApi(path: leaveRoomRequest, body: map);
  }
}
