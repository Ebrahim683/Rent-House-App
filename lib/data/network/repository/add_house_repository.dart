import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rent_house/data/network/api/api_service.dart';
import 'package:rent_house/data/network/api/end_points.dart';
import 'package:rent_house/utils/storage_utils.dart';

class AddHouseRepository {
  static addHouseRepo({
    required String fee,
    required String advanceFee,
    required String quantity,
    required String electricityFee,
    required String gasFee,
    required String othersFee,
    required String address,
    required String notice,
    required String status,
    required String category,
    required List<File> imageList,
  }) async {
    List<dynamic> images = [];
    for (var i = 0; i < imageList.length; i++) {
      var path = imageList[i].path;
      images.add(await MultipartFile.fromFile(path));
    }
    final formData = FormData.fromMap({
      'image': images,
    });

    Map<String, dynamic> map = {
      'owner_number': StorageUtils.getNumber(),
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
    };
    return await ApiService.postApi(path: addHouse, body: map, data: formData);
  }
}
