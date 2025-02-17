

import 'package:application/data/models/Result/result_model.dart';
import 'package:application/data/repositories/Result/result_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

part 'result_event.dart';
part 'result_state.dart';
part 'result_bloc.freezed.dart';

class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc({required ResultRepository repository}) : super(_Initial()){
  _repository = repository;
      on<_GetResult>(_onGetResult);
  }
  late final ResultRepository _repository;

  @override
  Future<void> _onGetResult(_GetResult event, Emitter<ResultState> emit) async {
    emit(const ResultState.loading());
    try {
      final response = await _repository.getResult();
      emit(ResultState.loaded(response));
    } catch (e) {
      emit(ResultState.error(e.toString()));
    }
  }
}