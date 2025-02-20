import 'dart:ui';

import 'package:application/data/models/Result/result_model.dart';
import 'package:application/data/repositories/Result/result_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';

part 'result_event.dart';
part 'result_state.dart';
part 'result_bloc.freezed.dart';

class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc({required ResultRepository repository}) : super(_Initial()) {
    _repository = repository;
    on<_GetResult>(_onGetResult);
    on<_AddResult>(_onAddResult);
  }
  late final ResultRepository _repository;
  final logger = Logger();

  @override
  Future<void> _onGetResult(_GetResult event, Emitter<ResultState> emit) async {
    emit(const ResultState.loading());
    try {
      var response = await _repository.getResult();
      emit(ResultState.loaded(response));
    } catch (e) {
      emit(ResultState.error(e.toString()));
    }
  }

  Future<void> _onAddResult(_AddResult event, Emitter<ResultState> emit) async {
    emit(const ResultState.loading());
    try {
      logger.i('Adding Result');
      await _repository.addResult(event.machineId,event.description,event.status); 
      emit(const ResultState.added());
      logger.i('Result Added');
    } catch (e) {
      emit(ResultState.error(e.toString()));
    }
  }
}
