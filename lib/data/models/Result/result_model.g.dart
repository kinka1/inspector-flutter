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
      resultId: (json['resultId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      status: json['status'] as String,
      date: DateTime.parse(json['date'] as String),
      machineId: json['machineId'] as String,
      buId: json['buId'] as String,
    );

Map<String, dynamic> _$$ResultModelImplToJson(_$ResultModelImpl instance) =>
    <String, dynamic>{
      'resultId': instance.resultId,
      'userId': instance.userId,
      'status': instance.status,
      'date': instance.date.toIso8601String(),
      'machineId': instance.machineId,
      'buId': instance.buId,
    };

_$ResultGetImpl _$$ResultGetImplFromJson(Map<String, dynamic> json) =>
    _$ResultGetImpl(
      resultId: (json['resultId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      status: json['status'] as String,
      date: DateTime.parse(json['date'] as String),
      machineId: json['machineId'] as String,
      machine: MachineModel.fromJson(json['machine'] as Map<String, dynamic>),
      buId: json['buId'] as String,
    );

Map<String, dynamic> _$$ResultGetImplToJson(_$ResultGetImpl instance) =>
    <String, dynamic>{
      'resultId': instance.resultId,
      'userId': instance.userId,
      'status': instance.status,
      'date': instance.date.toIso8601String(),
      'machineId': instance.machineId,
      'machine': instance.machine,
      'buId': instance.buId,
    };

_$ResultGetHomeImpl _$$ResultGetHomeImplFromJson(Map<String, dynamic> json) =>
    _$ResultGetHomeImpl(
      resultModel: (json['resultModel'] as List<dynamic>)
          .map((e) => ResultGet.fromJson(e as Map<String, dynamic>))
          .toList(),
      machine: (json['machine'] as List<dynamic>)
          .map((e) => MachineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultGetHomeImplToJson(_$ResultGetHomeImpl instance) =>
    <String, dynamic>{
      'resultModel': instance.resultModel,
      'machine': instance.machine,
    };

_$ResultAddImpl _$$ResultAddImplFromJson(Map<String, dynamic> json) =>
    _$ResultAddImpl(
      status: json['status'] as String,
      machineId: json['machineId'] as String,
      buId: json['buId'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$ResultAddImplToJson(_$ResultAddImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'machineId': instance.machineId,
      'buId': instance.buId,
      'date': instance.date,
    };
