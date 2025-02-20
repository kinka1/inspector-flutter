

part of 'result_bloc.dart';

@freezed
class ResultEvent with _$ResultEvent {
  const factory ResultEvent.started() = _Started;
  const factory ResultEvent.getResult() = _GetResult;
  const factory ResultEvent.addResult(int machineId, String description,String status) = _AddResult;
}
