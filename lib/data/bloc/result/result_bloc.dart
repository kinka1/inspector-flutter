// import 'dart:math';

import 'package:maintenanceApp/data/models/Result/result_model.dart';
import 'package:maintenanceApp/data/repositories/Result/result_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:logger/logger.dart';

part 'result_event.dart';
part 'result_state.dart';
part 'result_bloc.freezed.dart';

class ResultBloc extends Bloc<ResultEvent, ResultState> {
  // final logger = Logger();

  ResultBloc({required ResultRepository repository}) : super(const _Initial()) {
    _repository = repository;
    on<_GetResult>(_onGetResult);
    on<_AddResult>(_onAddResult);
    on<_GetResultAll>(_onGetResultAll);
    on<_GetResultByDatelist>(_onGetResultByDatelist);
    // on<_GetResultByDate>(_onGetResultByDate);
    on<_UpdateStatus>(_onUpdateResult);
    on<_GetResultByDateForHomepage>(_onGetResultByDateForHomepage);
    on<_GetResultByDatelistHome>(_onGetResultByDatelistHome);
  }

  late final ResultRepository _repository;

  Future<void> _onGetResult(_GetResult event, Emitter<ResultState> emit) async {
    emit(const ResultState.loading());
    // logger.i("MASUK GET RESULT");
    try {
      var response = await _repository.getResult();
      emit(ResultState.loaded(response));
    } catch (e) {
      // logger.e("ERROR GET RESULT : $e");
      emit(ResultState.error(e.toString()));
    }
  }

  Future<void> _onAddResult(_AddResult event, Emitter<ResultState> emit) async {
    emit(const ResultState.loading());
    try {
      // logger.i("MASUK TRY ADD RESULT");
      var response= await _repository.addResult(event.result);
      emit(ResultState.added(response));
    } catch (e) {
      // logger.e("ERROR ADD RESULT : $e");
      emit(ResultState.error(e.toString()));
    }
  }

  Future<void> _onGetResultAll(
      _GetResultAll event, Emitter<ResultState> emit) async {
    emit(const ResultState.loading());
    try {
      // logger.i("MASUK GET RESULT ALL");
      var response = await _repository.getResultAll();
      // ignore: non_constant_identifier_names
      int OKCount = response.where((element) => element.status == 'OK').length;
      // ignore: non_constant_identifier_names
      int NGCount = response.where((element) => element.status == 'NG').length;
      emit(ResultState.getAll(response, OKCount, NGCount));
      // logger.i("RESULT ALL : $response");
      // logger.i("OK COUNT : $OKCount");
      // logger.i("NG COUNT : $NGCount");
    } catch (e) {
      emit(ResultState.error(e.toString()));
    }
  }

  Future<void> _onGetResultByDatelist(
      _GetResultByDatelist event, Emitter<ResultState> emit) async {
    emit(const ResultState.loading());
    try {
      var response = await _repository.getResultByDatelist(event.buId,event.tanggal);
      emit(ResultState.loadedByDateList(response.resultModel));

    } catch (e) {
      
      emit(ResultState.error(e.toString()));
    }
  }

  Future<void> _onGetResultByDatelistHome(
      _GetResultByDatelistHome event, Emitter<ResultState> emit) async {
    emit(const ResultState.loading());
    try {
      var response = await _repository.getResultByDatelist(event.buId,event.tanggal);
      emit(ResultState.loadedByDateListHome(response));

    } catch (e) {
      
      emit(ResultState.error(e.toString()));
    }
  }

  // Future<void> _onGetResultByDate(
  //     _GetResultByDate event, Emitter<ResultState> emit) async {
  //   emit(const ResultState.loading());
  //   try {
  //     var response = await _repository.getResultByDate(event.tanggal);
  //     emit(ResultState.loadedByDate(response));
  //   } catch (e) {
  //     emit(ResultState.error(e.toString()));
  //   }
  // }

  Future<void> _onGetResultByDateForHomepage(
      _GetResultByDateForHomepage event, Emitter<ResultState> emit) async {
    emit(const ResultState.loading());
    try {
      var response = await _repository.getResultByDate(event.machineId,event.tanggal);
      // logger.i("RESULT BY DATE FOR HOMEPAGE : $response");
      emit( ResultState.loadedByDateForHomepage(response));
    } catch (e) {
      emit(ResultState.error(e.toString()));
    }
  }

  Future<void> _onUpdateResult(
      _UpdateStatus event, Emitter<ResultState> emit) async {
    emit(const ResultState.loading());
    try {
      await _repository.updateResultStatus(event.model);
      emit(const ResultState.success());
      // logger.i("RESULT UPDATE : $response");
    } catch (e) {
      // logger.e("ERROR UPDATE RESULT : $e");
      emit(ResultState.error(e.toString()));
    }
  }
}
