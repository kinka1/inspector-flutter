part of 'result_bloc.dart';

@freezed
class ResultState with _$ResultState {
  const factory ResultState.initial() = _Initial;
  const factory ResultState.loading() = _Loading;
  const factory ResultState.success() = _Success;
  const factory ResultState.loaded(List<ResultData> result) = _Loaded;
  const factory ResultState.error(String error) = _Error;
  const factory ResultState.loginSuccess() = _LoginSuccess;
  const factory ResultState.logoutSuccess() = _LogoutSuccess;
  

}