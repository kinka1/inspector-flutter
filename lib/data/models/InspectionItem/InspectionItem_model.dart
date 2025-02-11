import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'InspectionItem_model.freezed.dart';
part 'InspectionItem_model.g.dart';

@freezed
class InspectionitemResponse with _$InspectionitemResponse {
    const factory InspectionitemResponse({
      required bool status,
      required InspectionItemData data,
    }) = _InspectionitemResponse;
  
    factory InspectionitemResponse.fromJson(Map<String, dynamic> json) =>
        _$InspectionitemResponseFromJson(json);
  }

  @freezed
class InspectionItemData with _$InspectionItemData {
  const factory InspectionItemData({
    required List<InspectionitemModel> item,
  }) = _InspectionItemData;

  factory InspectionItemData.fromJson(Map<String, Object?> json) =>
      _$InspectionItemDataFromJson(json);
}

@freezed
class InspectionitemModel with _$InspectionitemModel{
  const factory InspectionitemModel({
    required int itemId,
    required String itemName,
    required String specification,
    required String method,
    required String frequency,
    required int number,
    required int machineId,
    required String imagePath,
  }) = _InspectionitemModel;

  factory InspectionitemModel.fromJson(Map<String, dynamic> json) =>
      _$InspectionitemModelFromJson(json);
}