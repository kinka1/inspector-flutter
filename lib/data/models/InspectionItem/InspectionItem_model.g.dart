// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InspectionItem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InspectionitemResponseImpl _$$InspectionitemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InspectionitemResponseImpl(
      success: json['success'] as bool,
      data:
          InspectionitemResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InspectionitemResponseImplToJson(
        _$InspectionitemResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$InspectionitemModelImpl _$$InspectionitemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InspectionitemModelImpl(
      id: json['id'] as String,
      inspectionItem: json['inspectionItem'] as String,
      specification: json['specification'] as String,
      status: json['status'] as String,
      period: json['period'] as String,
    );

Map<String, dynamic> _$$InspectionitemModelImplToJson(
        _$InspectionitemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inspectionItem': instance.inspectionItem,
      'specification': instance.specification,
      'status': instance.status,
      'period': instance.period,
    };
