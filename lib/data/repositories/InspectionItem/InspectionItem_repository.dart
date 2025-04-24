import 'package:maintenanceApp/data/models/InspectionItem/InspectionItem_model.dart';

abstract class InspectionitemRepository {
  Future<List<InspectionitemModel>> getInspectionItem(String id);
  Future<InspectionitemModel> getInspectionItembyNumber(String id,int number);
}