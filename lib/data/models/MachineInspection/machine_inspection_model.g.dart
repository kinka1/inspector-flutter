// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machine_inspection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MachineInspectionResponseImpl _$$MachineInspectionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MachineInspectionResponseImpl(
      status: json['status'] as bool,
      data:
          MachineInspectionModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MachineInspectionResponseImplToJson(
        _$MachineInspectionResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$MachineInspectionDataImpl _$$MachineInspectionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MachineInspectionDataImpl(
      item:
          MachineInspectionModel.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MachineInspectionDataImplToJson(
        _$MachineInspectionDataImpl instance) =>
    <String, dynamic>{
      'item': instance.item,
    };

_$MachineInspectionModelImpl _$$MachineInspectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MachineInspectionModelImpl(
      machineId: json['machineId'] as String,
      machine: MachineModel.fromJson(json['machine'] as Map<String, dynamic>),
      item: (json['item'] as List<dynamic>)
          .map((e) =>
              InspectionitemMachineGetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MachineInspectionModelImplToJson(
        _$MachineInspectionModelImpl instance) =>
    <String, dynamic>{
      'machineId': instance.machineId,
      'machine': instance.machine,
      'item': instance.item,
    };
