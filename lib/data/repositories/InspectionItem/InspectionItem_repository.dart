import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';

abstract class InspectionitemRepository {
  Future<InspectionitemResponse> getInspectionitem(int machineId);
}