
import 'package:application/data/models/user/user_model.dart';
import 'package:application/data/repositories/auth/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState>{
  AuthBloc({required AuthRepository repository}) : super(const _Initial()) {
    _repository = repository;

    on<_Login>(_onLogin);
    on<_Logout>(_onLogout);
    on<_Me>(_onGetMe);

    add(const AuthEvent.me());

  }
  final logger = Logger();
  late final AuthRepository _repository;

  Future<void> _onLogin(_Login event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      await _repository.login(event.username, event.password);
      emit(const AuthState.loginSuccess());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onLogout(_Logout event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      await _repository.logout();
      emit(const AuthState.logoutSuccess());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onGetMe(_Me event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      final UserModel data = await _repository.me();
      emit(AuthState.loaded(data));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }


}