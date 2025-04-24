import 'package:maintenanceApp/data/models/machine/machine_model.dart';

abstract class MachineRepository {
  Future<MachineModel> getMachines(String id);
}