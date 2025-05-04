// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MachineResponseImpl _$$MachineResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MachineResponseImpl(
      status: json['status'] as bool,
      data: MachineData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MachineResponseImplToJson(
        _$MachineResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$MachineDataImpl _$$MachineDataImplFromJson(Map<String, dynamic> json) =>
    _$MachineDataImpl(
      item: MachineModel.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MachineDataImplToJson(_$MachineDataImpl instance) =>
    <String, dynamic>{
      'item': instance.item,
    };

_$MachineModelImpl _$$MachineModelImplFromJson(Map<String, dynamic> json) =>
    _$MachineModelImpl(
      machineId: (json['machineId'] as num).toInt(),
      sectionName: json['sectionName'] as String,
      line: json['line'] as String,
      machineName: json['machineName'] as String,
      machineNumber: json['machineNumber'] as String,
      dockumentNo: json['dockumentNo'] as String,
      buId: json['buId'] as String,
    );

Map<String, dynamic> _$$MachineModelImplToJson(_$MachineModelImpl instance) =>
    <String, dynamic>{
      'machineId': instance.machineId,
      'sectionName': instance.sectionName,
      'line': instance.line,
      'machineName': instance.machineName,
      'machineNumber': instance.machineNumber,
      'dockumentNo': instance.dockumentNo,
      'buId': instance.buId,
    };
