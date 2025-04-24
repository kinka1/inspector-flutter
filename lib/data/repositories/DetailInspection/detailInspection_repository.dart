import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';

abstract class DetailinspectionRepository {
  Future<void> addDetailInspection(DetailInspectionModelAdd model);
  Future<DetailInspectionGetModel> getDetailInspectionItem(String machineId, int number, String tanggal);
  Future<List<DetailInspectionGetModel>> getDetailInspectionList(String machineId, String tanggal);
  Future<DetailInspectionGetModel> getDetailInspectionSingle(String machineId, String tanggal);
  Future<List<DetailInspectionGetModel>> getDetailInspectionByDateList(String formattedDate);

  // Future<List<DetailInspectionGetModel>> getDetailInspection(String tanggal);
}