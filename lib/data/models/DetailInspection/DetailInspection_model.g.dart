// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DetailInspection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailInspectionResponseImpl _$$DetailInspectionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailInspectionResponseImpl(
      status: json['status'] as bool,
      data: DetailInspectionData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailInspectionResponseImplToJson(
        _$DetailInspectionResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DetailInspectionDataImpl _$$DetailInspectionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailInspectionDataImpl(
      item: DetailInspectionGetModel.fromJson(
          json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailInspectionDataImplToJson(
        _$DetailInspectionDataImpl instance) =>
    <String, dynamic>{
      'item': instance.item,
    };

_$DetailInspectionModelImpl _$$DetailInspectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailInspectionModelImpl(
      itemName: json['itemName'] as String,
      specification: json['specification'] as String,
      method: json['method'] as String,
      frequency: json['frequency'] as String,
      number: (json['number'] as num).toInt(),
      status: json['status'] as String,
      description: json['description'] as String,
      machineId: (json['machineId'] as num).toInt(),
      imageName: json['imageName'] as String,
    );

Map<String, dynamic> _$$DetailInspectionModelImplToJson(
        _$DetailInspectionModelImpl instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'specification': instance.specification,
      'method': instance.method,
      'frequency': instance.frequency,
      'number': instance.number,
      'status': instance.status,
      'description': instance.description,
      'machineId': instance.machineId,
      'imageName': instance.imageName,
    };

_$DetailInspectionGetModelImpl _$$DetailInspectionGetModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailInspectionGetModelImpl(
      id: (json['id'] as num).toInt(),
      itemName: json['itemName'] as String,
      specification: json['specification'] as String,
      method: json['method'] as String,
      frequency: json['frequency'] as String,
      number: (json['number'] as num).toInt(),
      status: json['status'] as String,
      description: json['description'] as String,
      machineId: (json['machineId'] as num).toInt(),
      imagePath: json['imagePath'] as String,
      tanggal: DateTime.parse(json['tanggal'] as String),
    );

Map<String, dynamic> _$$DetailInspectionGetModelImplToJson(
        _$DetailInspectionGetModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemName': instance.itemName,
      'specification': instance.specification,
      'method': instance.method,
      'frequency': instance.frequency,
      'number': instance.number,
      'status': instance.status,
      'description': instance.description,
      'machineId': instance.machineId,
      'imagePath': instance.imagePath,
      'tanggal': instance.tanggal.toIso8601String(),
    };
