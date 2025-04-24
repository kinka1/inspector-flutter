// import 'package:logger/logger.dart';
import 'package:maintenanceApp/data/models/Other/other_model.dart';
import 'package:maintenanceApp/data/repositories/other/other_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_event.dart';
part 'other_state.dart';
part 'other_bloc.freezed.dart';

class OtherBloc extends Bloc<OtherEvent, OtherState> {
  final OtherRepository _repository;
  // final logger = Logger();

  OtherBloc(this._repository) : super(const OtherState.initial()) {
    on<_AddOther>(_onAddOther);
    on<_GetOther>(_onGetOther);
    on<_GetOtherAll>(_onGetOtherAll);
  }

  Future<void> _onAddOther(_AddOther event, Emitter<OtherState> emit) async {
    emit(const OtherState.loading());
    try {
      await _repository.addResult(event.model);
      emit(const OtherState.add());
      // logger.i("BERHASIL ADD OTHER");
    } catch (e) {
      // logger.e("GAGAL ADD OTHER,error: $e");
      emit(OtherState.error(e.toString()));
    }
  }

  Future<void> _onGetOther(_GetOther event, Emitter<OtherState> emit) async {
    emit(const OtherState.loading());
    try {
      // logger.i("MASUK BLOC GET OTHER");      
      final response = await _repository.getResult(event.resultId, event.tanggal);
      emit(OtherState.loaded(response));
      // logger.i("BERHASIL EMIT GET OTHER, RESPONSE $response");
    } catch (e) {
      // logger.e("GAGAL GET OTHER,error: $e");
      emit(OtherState.error(e.toString()));
    }
  }

    Future<void> _onGetOtherAll(_GetOtherAll event, Emitter<OtherState> emit) async {
    emit(const OtherState.loading());
    try {
      // logger.i("MASUK BLOC GET OTHER ALL");      
      final response = await _repository.getResultAll();
      emit(OtherState.loadedAll(response));
      // logger.i("BERHASIL EMIT GET OTHER ALL, RESPONSE $response");
    } catch (e) {
      // logger.e("GAGAL GET OTHER,error: $e");
      emit(OtherState.error(e.toString()));
    }
  }
}
