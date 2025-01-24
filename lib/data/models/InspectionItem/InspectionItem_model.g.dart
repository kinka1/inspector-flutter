// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InspectionItem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InspectionitemResponseImpl _$$InspectionitemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InspectionitemResponseImpl(
      status: json['status'] as bool,
      data: InspectionItemData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InspectionitemResponseImplToJson(
        _$InspectionitemResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$InspectionItemDataImpl _$$InspectionItemDataImplFromJson(
        Map<String, dynamic> json) =>
    _$InspectionItemDataImpl(
      item: (json['item'] as List<dynamic>)
          .map((e) => InspectionitemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InspectionItemDataImplToJson(
        _$InspectionItemDataImpl instance) =>
    <String, dynamic>{
      'item': instance.item,
    };

_$InspectionitemModelImpl _$$InspectionitemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InspectionitemModelImpl(
      id: json['id'] as String,
      inspectionItem: json['inspectionItem'] as String,
      specification: json['specification'] as String,
      status: json['status'] as String,
      period: json['period'] as String,
      method: json['method'] as String,
    );

Map<String, dynamic> _$$InspectionitemModelImplToJson(
        _$InspectionitemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inspectionItem': instance.inspectionItem,
      'specification': instance.specification,
      'status': instance.status,
      'period': instance.period,
      'method': instance.method,
    };
