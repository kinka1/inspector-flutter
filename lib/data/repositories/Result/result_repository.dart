import 'package:application/data/models/Result/result_model.dart';

abstract class ResultRepository {
  Future<void> addResult(int machineId,String description,String status);
  Future<List<ResultData>> getResult();
}