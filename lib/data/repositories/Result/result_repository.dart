import 'package:application/data/models/Result/result_model.dart';

abstract class ResultRepository {
  Future<void> addResult(ResultModel model);
  Future<List<ResultData>> getResult();
}