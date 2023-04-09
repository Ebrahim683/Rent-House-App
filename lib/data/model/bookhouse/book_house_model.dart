import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_house_model.g.dart';
part 'book_house_model.freezed.dart';

@freezed
class BookHouseModel with _$BookHouseModel {
  const factory BookHouseModel(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message}) = _BookHouseModel;
  factory BookHouseModel.fromJson(Map<String, dynamic> json) =>
      _$BookHouseModelFromJson(json);
}
