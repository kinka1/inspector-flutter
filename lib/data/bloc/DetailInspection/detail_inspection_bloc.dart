// import 'package:logger/logger.dart';
import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:maintenanceApp/data/repositories/DetailInspection/detailInspection_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_inspection_event.dart';
part 'detail_inspection_state.dart';
part 'detail_inspection_bloc.freezed.dart';

class DetailInspectionBloc
    extends Bloc<DetailInspectionEvent, DetailInspectionState> {
  DetailInspectionBloc({required DetailinspectionRepository repository})
      : super(const _Initial()) {
    _repository = repository;
    on<_PostDetailInspection>(_onAddDetailInspection);
    on<_GetDetailInspectionList>(_onGetInspectionItemsList);
    on<_GetDetailInspection>(_onGetInspectionItems);
    on<_GetDetailByDate>(_onGetDetailInspectionItemsbyDate);
    on<_GetDetailInspectionByMachineIdAndDate>(
        _onGetDetailInspectionItemsbyMachineIdAndDate);
    on<_GetDetailInspectionByMachine>(_onGetDetailInspectionItemsByMachine);
    on<_GetDetailInspectionByDate>(_onGetDetailInspectionItemsByDateList);
    on<_ResetState>((event, emit) {

      emit(const DetailInspectionState.initial());
    });
  }
  // final logger = Logger();

  late final DetailinspectionRepository _repository;

  Future<void> _onAddDetailInspection(
      _PostDetailInspection event, Emitter<DetailInspectionState> emit) async {
    emit(const DetailInspectionState.loading());

    try {
      await _repository.addDetailInspection(event.model);

      emit(const DetailInspectionState.success());
    } catch (e) {
      // logger.e("GAGAL ADD DETAIL INSPECTION,error: $e");
      emit(DetailInspectionState.error(e.toString()));
    }
  }

  Future<void> _onGetInspectionItemsList(_GetDetailInspectionList event,
      Emitter<DetailInspectionState> emit) async {
    emit(const DetailInspectionState.loading());
    try {
      // logger.i("MASUK TRY DETAIL  INSPECTION");
      final response = await _repository.getDetailInspectionList(
          event.resultId);
      // logger.i("RESPONSE DETAIL INSPECTION $response");
      emit(DetailInspectionState.loadedList(response));
    } catch (e) {
      emit(DetailInspectionState.error(e.toString()));
    }
  }

  Future<void> _onGetDetailInspectionItemsbyDate(
      _GetDetailByDate event, Emitter<DetailInspectionState> emit) async {
    emit(const DetailInspectionState.loading());
    // logger.i("state BY DATE : ${state}");
    try {
      // logger.i("masuk try BY DATE");
      final response = await _repository.getDetailInspectionList(
          event.resultId);
      // logger.i("response GET BY ID AND DATE: $response");
      emit(DetailInspectionState.loadedbyDate(response));
      // logger.i("berhasil emit");
    } catch (e) {
      emit(DetailInspectionState.error(e.toString()));
    }
  }

  Future<void> _onGetInspectionItems(
      _GetDetailInspection event, Emitter<DetailInspectionState> emit) async {
    emit(const DetailInspectionState.loading());
    try {
      final response = await _repository.getDetailInspectionItem(
          event.machineId, event.number, event.tanggal);
      emit(DetailInspectionState.getData(response));
    } catch (e) {
      emit(DetailInspectionState.error(e.toString()));
    }
  }

  Future<void> _onGetDetailInspectionItemsbyMachineIdAndDate(
      _GetDetailInspectionByMachineIdAndDate event,
      Emitter<DetailInspectionState> emit) async {
    emit(const DetailInspectionState.loading());
    // logger.i("state BY DATE : ${state}");
    try {
      //MASALAH
      final response = await _repository.getDetailInspectionSingle(
          event.machineId, event.tanggal);
      // logger.i("response GET BY MACHINE ID AND DATE: $response");
      emit(DetailInspectionState.loadedbyMachineIdAndDate(response));
      // logger.i("berhasil emit MACHINE ID AND DATE");
    } catch (e) {
      emit(DetailInspectionState.error(e.toString()));
    }
  }

  Future<void> _onGetDetailInspectionItemsByMachine(
      _GetDetailInspectionByMachine event,
      Emitter<DetailInspectionState> emit) async {
    emit(const DetailInspectionState.loading());
    // logger.i("state BY DATE : ${state}");
    try {
      DateTime now = DateTime.now();
      String formattedDate =
          "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}";
      // logger.i("masuk try BY DATE");
      final response = await _repository.getDetailInspectionByDateList(formattedDate);
      emit(DetailInspectionState.loadedByMachine(response));
    } catch (e) {
      emit(DetailInspectionState.error(e.toString()));
    }
  }

  Future<void> _onGetDetailInspectionItemsByDateList(
      _GetDetailInspectionByDate event,
      Emitter<DetailInspectionState> emit) async {
    emit(const DetailInspectionState.loading());
    // logger.i("state BY DATE : ${state}");
    try {
      // logger.i("masuk try BY DATE");
      final response = await _repository.getDetailInspectionByDateList(event.tanggal);
      // logger.i("response GET BY ID AND DATE: $response");
      emit(DetailInspectionState.loadedByDateList(response));
    } catch (e) {
      emit(DetailInspectionState.error(e.toString()));
    }
  }
}
