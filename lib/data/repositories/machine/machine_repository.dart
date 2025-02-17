import 'package:application/data/models/machine/machine_model.dart';

abstract class MachineRepository {
  Future<MachineModel> getMachines(int id);
}