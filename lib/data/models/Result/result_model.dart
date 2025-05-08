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
    required int resultId,
    required int userId,
    required String status,
    required DateTime date,
    required String machineId,
    required String buId
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);
}

@freezed
class ResultGet with _$ResultGet {
  const factory ResultGet({
    required int resultId,
    required int userId,
    required String status,
    required DateTime date,
    required String machineId,
    required MachineModel machine,
    required String buId
  }) = _ResultGet;

  factory ResultGet.fromJson(Map<String, dynamic> json) =>
      _$ResultGetFromJson(json);
}

@freezed
class ResultAdd with _$ResultAdd {
  const factory ResultAdd({
    required String status,
    required String machineId,
    required String buId
  }) = _ResultAdd;

  factory ResultAdd.fromJson(Map<String, dynamic> json) =>
      _$ResultAddFromJson(json);
}