part of 'other_bloc.dart';

@freezed
class OtherState with _$OtherState {
  const factory OtherState.initial() = _Initial;
  const factory OtherState.loading() = _Loading;
  const factory OtherState.success() = _Success;
  const factory OtherState.loaded(OtherModel user) = _Loaded;
  const factory OtherState.loadedAll(List<OtherModel> user) = _LoadedAll;
  const factory OtherState.error(String error) = _Error;
  const factory OtherState.add() = _LoginSuccess;
  

}