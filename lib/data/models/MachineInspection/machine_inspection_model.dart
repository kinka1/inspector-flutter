import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maintenanceApp/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:maintenanceApp/data/models/machine/machine_model.dart';

part 'machine_inspection_model.freezed.dart';
part 'machine_inspection_model.g.dart';

@freezed
class MachineInspectionResponse with _$MachineInspectionResponse {
  const factory MachineInspectionResponse({
    required bool status,
    required MachineInspectionModel data,
  }) = _MachineInspectionResponse;

  factory MachineInspectionResponse.fromJson(Map<String, dynamic> json) =>
      _$MachineInspectionResponseFromJson(json);
}

@freezed
class MachineInspectionData with _$MachineInspectionData {
  const factory MachineInspectionData({
    required MachineInspectionModel item,
  }) = _MachineInspectionData;

  factory MachineInspectionData.fromJson(Map<String, Object?> json) =>
      _$MachineInspectionDataFromJson(json);
}

@freezed
class MachineInspectionModel with _$MachineInspectionModel {
  const factory MachineInspectionModel({
    required String machineId,
    required MachineModel machine,
    required List<InspectionitemMachineGetModel> item,
  }) = _MachineInspectionModel;

  factory MachineInspectionModel.fromJson(Map<String, dynamic> json) =>
      _$MachineInspectionModelFromJson(json);
}
