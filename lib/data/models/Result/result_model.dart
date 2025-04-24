import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:maintenanceApp/data/models/machine/machine_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_model.freezed.dart';
part 'result_model.g.dart';

@freezed
class ResultResponse with _$ResultResponse {
  const factory ResultResponse({
    required bool status,
    required ResultData data,
  }) = _ResultResponse;

  factory ResultResponse.fromJson(Map<String, dynamic> json) =>
      _$ResultResponseFromJson(json);
}

@freezed
class ResultData with _$ResultData {
  const factory ResultData({
    required String month,
    required int machineId,
    required MachineModel machine,
    required List<ResultModel> data,
  }) = _ResultData;

  factory ResultData.fromJson(Map<String, Object?> json) =>
      _$ResultDataFromJson(json);
}

@freezed
class ResultModel with _$ResultModel {
  const factory ResultModel({
    required int id,
    required String userId,
    required String status,
    required DateTime date,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);
}

@freezed
class ResultGet with _$ResultGet {
  const factory ResultGet({
    required int id,
    required String machineId,
    required MachineModel machine,
    required String userId,
    required String status,
    required DateTime date,
  }) = _ResultGet;

  factory ResultGet.fromJson(Map<String, dynamic> json) =>
      _$ResultGetFromJson(json);
}
