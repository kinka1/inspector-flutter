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
      itemId: (json['itemId'] as num).toInt(),
      itemName: json['itemName'] as String,
      specification: json['specification'] as String,
      method: json['method'] as String,
      frequency: json['frequency'] as String,
      number: (json['number'] as num).toInt(),
      imagePath: json['imagePath'] as String,
      isNumber: json['isNumber'] as bool,
      prasyarat: json['prasyarat'] as String,
    );

Map<String, dynamic> _$$InspectionitemModelImplToJson(
        _$InspectionitemModelImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'specification': instance.specification,
      'method': instance.method,
      'frequency': instance.frequency,
      'number': instance.number,
      'imagePath': instance.imagePath,
      'isNumber': instance.isNumber,
      'prasyarat': instance.prasyarat,
    };

_$InspectionitemMachineGetModelImpl
    _$$InspectionitemMachineGetModelImplFromJson(Map<String, dynamic> json) =>
        _$InspectionitemMachineGetModelImpl(
          machineInspectionId: (json['machineInspectionId'] as num).toInt(),
          itemId: (json['itemId'] as num).toInt(),
          itemName: json['itemName'] as String,
          specification: json['specification'] as String,
          method: json['method'] as String,
          frequency: json['frequency'] as String,
          number: (json['number'] as num).toInt(),
          imagePath: json['imagePath'] as String,
          isNumber: json['isNumber'] as bool,
          prasyarat: json['prasyarat'] as String,
        );

Map<String, dynamic> _$$InspectionitemMachineGetModelImplToJson(
        _$InspectionitemMachineGetModelImpl instance) =>
    <String, dynamic>{
      'machineInspectionId': instance.machineInspectionId,
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'specification': instance.specification,
      'method': instance.method,
      'frequency': instance.frequency,
      'number': instance.number,
      'imagePath': instance.imagePath,
      'isNumber': instance.isNumber,
      'prasyarat': instance.prasyarat,
    };
