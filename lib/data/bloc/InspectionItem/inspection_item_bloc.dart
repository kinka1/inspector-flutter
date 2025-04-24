import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:maintenanceApp/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:maintenanceApp/data/repositories/InspectionItem/InspectionItem_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inspection_item_event.dart';
part 'inspection_item_state.dart';
part 'inspection_item_bloc.freezed.dart';

class InspectionItemBloc
    extends Bloc<InspectionItemEvent, InspectionItemState> {
  final logger = Logger();
  InspectionItemBloc(InspectionitemRepository repository)
      : super(const InspectionItemState.initial()) {
    _repository = repository;
    on<_GetInspectionItem>(_onGetInspectionItems);
    on<_GetInspectionItembyNuber>(_onGetInspectionItemsbyNumber);
  }

  late final InspectionitemRepository _repository;

  Future<void> _onGetInspectionItems(
      _GetInspectionItem event, Emitter<InspectionItemState> emit) async {
    // logger.i('masuk try BLOC ITEM GET');
    emit(const InspectionItemState.loading());
    try {
      final response = await _repository.getInspectionItem(event.id);
      // logger.i('berhasil hit, response : $response');
      emit(InspectionItemState.loaded(response));
    } catch (e) {
      emit(InspectionItemState.error(e.toString()));
    }
  }

  Future<void> _onGetInspectionItemsbyNumber(_GetInspectionItembyNuber event,
      Emitter<InspectionItemState> emit) async {
    emit(const InspectionItemState.loading());
    try {
      // logger.i('masuk try BLOC');
      final response =
          await _repository.getInspectionItembyNumber(event.id, event.number);
      // logger.i('berhasil hit, response : $response');
      emit(InspectionItemState.loadedbyNumber(response));
      // logger.i('berhasil emit');
    } catch (e) {
      emit(InspectionItemState.error(e.toString()));
    }
  }
}
