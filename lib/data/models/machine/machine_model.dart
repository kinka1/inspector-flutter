import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'machine_model.freezed.dart';
part 'machine_model.g.dart';

@freezed
class MachineResponse with _$MachineResponse {
    const factory MachineResponse({
      required bool status,
      required MachineData data,
    }) = _MachineResponse;
  
    factory MachineResponse.fromJson(Map<String, dynamic> json) =>
        _$MachineResponseFromJson(json);
  }

  @freezed
class MachineData with _$MachineData {
  const factory MachineData({
    required MachineModel item,
  }) = _MachineData;

  factory MachineData.fromJson(Map<String, Object?> json) =>
      _$MachineDataFromJson(json);
}

@freezed
class MachineModel with _$MachineModel{
  const factory MachineModel({
    required String machineId,
    required String sectionName,
    required String line,
    required String machineName,
    required String machineNumber,
    required String dockumentNo,
  }) = _MachineModel;

  factory MachineModel.fromJson(Map<String, dynamic> json) =>
      _$MachineModelFromJson(json);
}