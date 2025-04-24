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
      item: (json['item'] as List<dynamic>)
          .map((e) =>
              DetailInspectionGetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailInspectionDataImplToJson(
        _$DetailInspectionDataImpl instance) =>
    <String, dynamic>{
      'item': instance.item,
    };

_$DetailInspectionModelImpl _$$DetailInspectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailInspectionModelImpl(
      id: (json['id'] as num).toInt(),
      machineInspectionId: json['machineInspectionId'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      tanggal: DateTime.parse(json['tanggal'] as String),
      resultId: json['resultId'] as String,
    );

Map<String, dynamic> _$$DetailInspectionModelImplToJson(
        _$DetailInspectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'machineInspectionId': instance.machineInspectionId,
      'description': instance.description,
      'status': instance.status,
      'tanggal': instance.tanggal.toIso8601String(),
      'resultId': instance.resultId,
    };

_$DetailInspectionModelAddImpl _$$DetailInspectionModelAddImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailInspectionModelAddImpl(
      machineInspectionId: json['machineInspectionId'] as String,
      status: json['status'] as String,
      resultId: (json['resultId'] as num).toInt(),
      description: json['description'] as String,
      tanggal: json['tanggal'] as String,
    );

Map<String, dynamic> _$$DetailInspectionModelAddImplToJson(
        _$DetailInspectionModelAddImpl instance) =>
    <String, dynamic>{
      'machineInspectionId': instance.machineInspectionId,
      'status': instance.status,
      'resultId': instance.resultId,
      'description': instance.description,
      'tanggal': instance.tanggal,
    };

_$DetailInspectionGetModelImpl _$$DetailInspectionGetModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailInspectionGetModelImpl(
      id: (json['id'] as num).toInt(),
      machineInspectionId: json['machineInspectionId'] as String,
      machine: MachineModel.fromJson(json['machine'] as Map<String, dynamic>),
      inspectionItem: InspectionitemModel.fromJson(
          json['inspectionItem'] as Map<String, dynamic>),
      status: json['status'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$DetailInspectionGetModelImplToJson(
        _$DetailInspectionGetModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'machineInspectionId': instance.machineInspectionId,
      'machine': instance.machine,
      'inspectionItem': instance.inspectionItem,
      'status': instance.status,
      'description': instance.description,
    };
