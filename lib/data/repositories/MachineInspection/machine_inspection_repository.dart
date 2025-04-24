import 'package:maintenanceApp/data/models/MachineInspection/machine_inspection_model.dart';

abstract class MachineInspectionRepository {
  Future<MachineInspectionModel> getInspectionItem(String id);
  Future<MachineInspectionModel> getInspectionItembyNumber(String id,int number);
}