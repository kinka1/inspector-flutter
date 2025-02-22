import 'package:application/data/models/DetailInspection/DetailInspection_model.dart';

abstract class DetailinspectionRepository {
  Future<void> addDetailInspection(DetailInspectionModel model);
  Future<DetailInspectionGetModel> getDetailInspectionItem(int machineId, int number, String tanggal);
  Future<List<DetailInspectionGetModel>> getDetailInspectionList(int machineId, String tanggal);
}