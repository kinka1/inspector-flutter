import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/data/models/machine/machine_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class MachineRepository {
  Future<MachineModel> getMachines(int id);
}