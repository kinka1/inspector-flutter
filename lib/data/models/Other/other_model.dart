import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_model.freezed.dart';
part 'other_model.g.dart';

@freezed
class OtherResponse with _$OtherResponse {
    const factory OtherResponse({
      required bool status,
      required OtherData data,
    }) = _OtherResponse;
  
    factory OtherResponse.fromJson(Map<String, dynamic> json) =>
        _$OtherResponseFromJson(json);
  }

  @freezed
class OtherData with _$OtherData {
  const factory OtherData({
    required OtherModel item,
  }) = _OtherData;

  factory OtherData.fromJson(Map<String, Object?> json) =>
      _$OtherDataFromJson(json);
}

@freezed
class OtherModel with _$OtherModel{
  const factory OtherModel({
    required int otherId,
    required String description,
    required String status,
    required int resultId,

    // required String password,
  }) = _OtherModel;

  factory OtherModel.fromJson(Map<String, dynamic> json) =>
      _$OtherModelFromJson(json);
}

@freezed
class OtherAddModel with _$OtherAddModel{
  const factory OtherAddModel({
    required String description,
    required String status,
    required String date,
    required int resultId,

    // required String password,
  }) = _OtherAddModel;

  factory OtherAddModel.fromJson(Map<String, dynamic> json) =>
      _$OtherAddModelFromJson(json);
}