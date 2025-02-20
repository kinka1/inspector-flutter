import 'package:application/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:application/data/repositories/DetailInspection/detailInspection_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

part 'detail_inspection_event.dart';
part 'detail_inspection_state.dart';
part 'detail_inspection_bloc.freezed.dart';

class DetailInspectionBloc extends Bloc<DetailInspectionEvent, DetailInspectionState> {
  DetailInspectionBloc({required DetailinspectionRepository repository}) : super(_Initial()) {
      _repository = repository;
      on<_PostDetailInspection>(_onAddDetailInspection);
      on<_GetDetailInspectionList>(_onGetInspectionItemsList);
  }

  late final DetailinspectionRepository _repository;

  Future<void> _onAddDetailInspection(_PostDetailInspection event, Emitter<DetailInspectionState> emit) async {
    emit(const DetailInspectionState.loading());
    try {
      await _repository.addDetailInspection(event.model);
      emit(const DetailInspectionState.success());
    } catch (e) {
      emit(DetailInspectionState.error(e.toString()));
    }
  }

  Future<void> _onGetInspectionItemsList(_GetDetailInspectionList event, Emitter<DetailInspectionState> emit) async {
    emit(const DetailInspectionState.loading());
    try {
      final response =
      await _repository.getDetailInspectionList(event.machineId, event.tanggal);
      emit(DetailInspectionState.loadedList(response));
    } catch (e) {
      emit(DetailInspectionState.error(e.toString()));
    }
  }
}
