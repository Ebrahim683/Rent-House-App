import '../api/api_service.dart';
import '../api/end_points.dart';

class BookHouseRepository {
  
  static Future<dynamic> bookHouseRepo({
    required String phoneNumber,
    required String payment,
    required int ownerId,
    required String ownerName,
    required String image,
    required String category,
    required String fee,
    required String quantity,
    required String advanceFee,
    required String electricityFee,
    required String gasFee,
    required String othersFee,
    required String address,
    required String notice,
  }) async {
    Map<String, dynamic> map = {
      'phone_number': phoneNumber,
      'payment': payment,
      'owner_id': ownerId,
      'owner_name': ownerName,
      'image': image,
      'category': category,
      'fee': fee,
      'quantity': quantity,
      'advance_fee': advanceFee,
      'electricity_fee': electricityFee,
      'gas_fee': gasFee,
      'others_fee': othersFee,
      'address': address,
      'notice': notice,
    };
    return await ApiService.postApi(path: bookHouse, body: map);
  }
}
