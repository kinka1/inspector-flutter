// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultResponseImpl _$$ResultResponseImplFromJson(Map<String, dynamic> json) =>
    _$ResultResponseImpl(
      status: json['status'] as bool,
      data: ResultData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultResponseImplToJson(
        _$ResultResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$ResultDataImpl _$$ResultDataImplFromJson(Map<String, dynamic> json) =>
    _$ResultDataImpl(
      month: json['month'] as String,
      machineId: (json['machineId'] as num).toInt(),
      machine: MachineModel.fromJson(json['machine'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => ResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultDataImplToJson(_$ResultDataImpl instance) =>
    <String, dynamic>{
      'month': instance.month,
      'machineId': instance.machineId,
      'machine': instance.machine,
      'data': instance.data,
    };

_$ResultModelImpl _$$ResultModelImplFromJson(Map<String, dynamic> json) =>
    _$ResultModelImpl(
      id: (json['id'] as num).toInt(),
      userId: json['userId'] as String,
      status: json['status'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$ResultModelImplToJson(_$ResultModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'status': instance.status,
      'date': instance.date.toIso8601String(),
    };

_$ResultGetImpl _$$ResultGetImplFromJson(Map<String, dynamic> json) =>
    _$ResultGetImpl(
      id: (json['id'] as num).toInt(),
      machineId: json['machineId'] as String,
      machine: MachineModel.fromJson(json['machine'] as Map<String, dynamic>),
      userId: json['userId'] as String,
      status: json['status'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$ResultGetImplToJson(_$ResultGetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'machineId': instance.machineId,
      'machine': instance.machine,
      'userId': instance.userId,
      'status': instance.status,
      'date': instance.date.toIso8601String(),
    };
