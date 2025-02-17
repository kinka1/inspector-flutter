import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';

abstract class InspectionitemRepository {
  Future<List<InspectionitemModel>> getInspectionItem(int id);
  Future<InspectionitemModel> getInspectionItembyNumber(int id,int number);
}