import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'InspectionItem_model.freezed.dart';
part 'InspectionItem_model.g.dart';

@freezed
class InspectionitemResponse with _$InspectionitemResponse {
    const factory InspectionitemResponse({
      required bool success,
      required InspectionitemResponse data,
    }) = _InspectionitemResponse;
  
    factory InspectionitemResponse.fromJson(Map<String, dynamic> json) =>
        _$InspectionitemResponseFromJson(json);
  }

@freezed
class InspectionitemModel with _$InspectionitemModel{
  const factory InspectionitemModel({
    required String id,
    required String inspectionItem,
    required String specification,
    required String status,
    required String period,
  }) = _InspectionitemModel;

  factory InspectionitemModel.fromJson(Map<String, dynamic> json) =>
      _$InspectionitemModelFromJson(json);
}