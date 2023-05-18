import 'package:rent_house/data/network/api/api_service.dart';
import 'package:rent_house/utils/storage_utils.dart';

import '../api/end_points.dart';

class UpdateHouseRepository {
  static updateHouse(
      {required int houseId,
      required String category,
      required String fee,
      required String quantity,
      required String advanceFee,
      required String electricityFee,
      required String gasFee,
      required String othersFee,
      required String address,
      required String notice,
      required String status,
      required String canBook}) async {
    Map<String, dynamic> map = {
      'house_id': houseId,
      'owner_name': storageUtils.getName!.toLowerCase(),
      'owner_number': storageUtils.getNumber,
      'category': category,
      'fee': fee,
      'quantity': quantity,
      'advance_fee': advanceFee,
      'electricity_fee': electricityFee,
      'gas_fee': gasFee,
      'others_fee': othersFee,
      'address': address,
      'notice': notice,
      'status': status,
      'canBook': canBook,
    };
    return await ApiService.putApi(path: updateHouseOwner, body: map);
  }
}
