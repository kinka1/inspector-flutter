import 'package:application/data/models/DetailInspection/DetailInspection_model.dart';

abstract class DetailinspectionRepository {
  Future<void> addDetailInspection(DetailInspectionModel model);
  Future<DetailInspectionModel> getDetailInspectionItem();
}