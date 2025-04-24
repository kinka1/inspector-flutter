// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtherResponseImpl _$$OtherResponseImplFromJson(Map<String, dynamic> json) =>
    _$OtherResponseImpl(
      status: json['status'] as bool,
      data: OtherData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtherResponseImplToJson(_$OtherResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$OtherDataImpl _$$OtherDataImplFromJson(Map<String, dynamic> json) =>
    _$OtherDataImpl(
      item: OtherModel.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtherDataImplToJson(_$OtherDataImpl instance) =>
    <String, dynamic>{
      'item': instance.item,
    };

_$OtherModelImpl _$$OtherModelImplFromJson(Map<String, dynamic> json) =>
    _$OtherModelImpl(
      otherId: (json['otherId'] as num).toInt(),
      description: json['description'] as String,
      status: json['status'] as String,
      resultId: (json['resultId'] as num).toInt(),
    );

Map<String, dynamic> _$$OtherModelImplToJson(_$OtherModelImpl instance) =>
    <String, dynamic>{
      'otherId': instance.otherId,
      'description': instance.description,
      'status': instance.status,
      'resultId': instance.resultId,
    };

_$OtherAddModelImpl _$$OtherAddModelImplFromJson(Map<String, dynamic> json) =>
    _$OtherAddModelImpl(
      description: json['description'] as String,
      status: json['status'] as String,
      date: json['date'] as String,
      resultId: (json['resultId'] as num).toInt(),
    );

Map<String, dynamic> _$$OtherAddModelImplToJson(_$OtherAddModelImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'status': instance.status,
      'date': instance.date,
      'resultId': instance.resultId,
    };
