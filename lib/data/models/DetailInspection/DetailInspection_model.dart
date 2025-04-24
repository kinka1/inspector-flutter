import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maintenanceApp/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:maintenanceApp/data/models/machine/machine_model.dart';

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
    required List<DetailInspectionGetModel> item,
  }) = _DetailInspectionData;

  factory DetailInspectionData.fromJson(Map<String, Object?> json) =>
      _$DetailInspectionDataFromJson(json);
}

@freezed
class DetailInspectionModel with _$DetailInspectionModel {
  const factory DetailInspectionModel({
    required int id,
    required String machineInspectionId,
    required String description,
    required String status,
    required DateTime tanggal,
    required String resultId,
  }) = _DetailInspectionModel;

  factory DetailInspectionModel.fromJson(Map<String, dynamic> json) =>
      _$DetailInspectionModelFromJson(json);
}

@freezed
class DetailInspectionModelAdd with _$DetailInspectionModelAdd {
  const factory DetailInspectionModelAdd({
    required String machineInspectionId,
    required String status,
    required int resultId,
    required String description,
    required String tanggal,
  }) = _DetailInspectionModelAdd;

  factory DetailInspectionModelAdd.fromJson(Map<String, dynamic> json) =>
      _$DetailInspectionModelAddFromJson(json);
}

@freezed
class DetailInspectionGetModel with _$DetailInspectionGetModel {
  const factory DetailInspectionGetModel(
      {required int id,
      required String machineInspectionId,
      required MachineModel machine,
      required InspectionitemModel inspectionItem,
      required String status,
      required String description,
}) = _DetailInspectionGetModel;

  factory DetailInspectionGetModel.fromJson(Map<String, dynamic> json) =>
      _$DetailInspectionGetModelFromJson(json);
}

class DetailInspectionTempModel {
  final String status;
  final String line;
  final String machineName;

  DetailInspectionTempModel({
    required this.status,
    required this.line,
    required this.machineName,
  });
}
