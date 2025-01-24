import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class InspectionitemRepository {
  Future<List<InspectionitemModel>> getInspectionItem();
}