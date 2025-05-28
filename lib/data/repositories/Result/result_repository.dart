import 'package:maintenanceApp/data/models/Result/result_model.dart';

abstract class ResultRepository {
  Future<ResultModel?> addResult(ResultAdd status);
  Future<ResultModel> getResult();
  Future<List<ResultModel>> getResultAll();
  Future<ResultGetHome> getResultByDatelist(String buId,String tanggal);
  Future<List<ResultModel>> getResultByDate(String machineId,String tanggal);
  Future<void> updateResultStatus(ResultModel model);


  
}