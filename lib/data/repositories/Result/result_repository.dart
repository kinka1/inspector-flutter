import 'package:maintenanceApp/data/models/Result/result_model.dart';

abstract class ResultRepository {
  Future<ResultModel?> addResult(ResultAdd status);
  Future<ResultModel> getResult();
  Future<List<ResultModel>> getResultAll();
  Future<List<ResultGet>> getResultByDatelist(String buId,String tanggal);
  Future<ResultModel> getResultByDate(String machineId,String tanggal);
  Future<void> updateResultStatus(ResultModel model);


  
}