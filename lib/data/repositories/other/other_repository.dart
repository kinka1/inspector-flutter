import 'package:maintenanceApp/data/models/Other/other_model.dart';

abstract class OtherRepository {
  Future<void> addResult(OtherAddModel model);
  Future<OtherModel> getResult(int otherId,String tanggal);
  Future<List<OtherModel>> getResultAll();
}
