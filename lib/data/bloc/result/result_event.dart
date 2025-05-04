part of 'result_bloc.dart';

@freezed
class ResultEvent with _$ResultEvent {
  const factory ResultEvent.started() = _Started;
  const factory ResultEvent.getResult() = _GetResult;
  const factory ResultEvent.addResult(
    String status) = _AddResult;
  const factory ResultEvent.getResultAll() = _GetResultAll;
    const factory ResultEvent.UpdateStatus(ResultModel model) = _UpdateStatus;
  const factory ResultEvent.getResultByDatelist(String buId,String tanggal) = _GetResultByDatelist;
  const factory ResultEvent.getResultByDate(String tanggal) = _GetResultByDate;
  const factory ResultEvent.getResultByDateForHomepage(String tanggal) = _GetResultByDateForHomepage;


}
