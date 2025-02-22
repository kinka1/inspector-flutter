import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'DetailInspection_model.freezed.dart';
part 'DetailInspection_model.g.dart';

@freezed
class DetailInspectionResponse with _$DetailInspectionResponse {
    const factory DetailInspectionResponse({
      required bool status,
      required DetailInspectionData data,
    }) = _DetailInspectionResponse;
  
    factory DetailInspectionResponse.fromJson(Map<String, dynamic> json) =>
        _$DetailInspectionResponseFromJson(json);
  }

  @freezed
class DetailInspectionData with _$DetailInspectionData {
  const factory DetailInspectionData({
    required DetailInspectionGetModel item,
  }) = _DetailInspectionData;

  factory DetailInspectionData.fromJson(Map<String, Object?> json) =>
      _$DetailInspectionDataFromJson(json);
}

@freezed
class DetailInspectionModel with _$DetailInspectionModel{
  const factory DetailInspectionModel({
    required String itemName,
    required String specification,
    required String method,
    required String frequency,
    required int number,
    required String status,
    required String description,
    required int machineId,
    required String imageName
  }) = _DetailInspectionModel;

  factory DetailInspectionModel.fromJson(Map<String, dynamic> json) =>
      _$DetailInspectionModelFromJson(json);
}

@freezed
class DetailInspectionGetModel with _$DetailInspectionGetModel{
  const factory DetailInspectionGetModel({
    required int id,
    required String itemName,
    required String specification,
    required String method,
    required String frequency,
    required int number,
    required String status,
    required String description,
    required int machineId,
    required String imagePath,
    required DateTime tanggal,
  }) = _DetailInspectionGetModel;

  factory DetailInspectionGetModel.fromJson(Map<String, dynamic> json) =>
      _$DetailInspectionGetModelFromJson(json);
}