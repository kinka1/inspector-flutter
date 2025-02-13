part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success() = _Success;
  const factory AuthState.loaded(UserModel user) = _Loaded;
  const factory AuthState.error(String error) = _Error;
  const factory AuthState.loginSuccess() = _LoginSuccess;
  const factory AuthState.logoutSuccess() = _LogoutSuccess;
  

}