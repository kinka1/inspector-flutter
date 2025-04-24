part of 'result_bloc.dart';

@freezed
class ResultState with _$ResultState {
  const factory ResultState.initial() = _Initial;
  const factory ResultState.loading() = _Loading;
  const factory ResultState.success() = _Success;
  const factory ResultState.loaded(ResultModel result) = _Loaded;
  const factory ResultState.getAll(
      List<ResultModel> result, int OKCount, int NGCount) = _GetAll;
  const factory ResultState.error(String error) = _Error;
  const factory ResultState.update(ResultModel model) = _Update;
  const factory ResultState.added(ResultModel model) = _Added;
  const factory ResultState.loadedByDateList(List<ResultGet> result) =
      _LoadedByDateList;
  const factory ResultState.loadedByDate(ResultModel result) = _LoadedByDate;
  const factory ResultState.loadedByDateForHomepage(ResultModel result) = _LoadedByDateForHomepage;
}
