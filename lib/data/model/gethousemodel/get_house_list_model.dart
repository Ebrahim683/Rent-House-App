import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rent_house/data/model/gethousemodel/get_house_model.dart';

part 'get_house_list_model.g.dart';
part 'get_house_list_model.freezed.dart';

@freezed
class GetHouseListModel with _$GetHouseListModel {
  const factory GetHouseListModel({
    // ignore:  
    @JsonKey(name: 'status') String? status,
    // ignore:  
    @JsonKey(name: 'message') String? message,
    // ignore:  
    @JsonKey(name: 'data') List<GetHouseModel>? getHouseModel,
  }) = _GetHouseListModel;
  factory GetHouseListModel.fromJson(Map<String, dynamic> json) =>
      _$GetHouseListModelFromJson(json);
}
