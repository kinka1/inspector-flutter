import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/data/repositories/InspectionItem/InspectionItem_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'inspection_item_event.dart';
part 'inspection_item_state.dart';
part 'inspection_item_bloc.freezed.dart';

class InspectionItemBloc
    extends Bloc<InspectionItemEvent, InspectionItemState> {
  InspectionItemBloc(InspectionitemRepository repository)
      : super(const InspectionItemState.initial()) {
    _repository = repository;
    on<_GetInspectionItem>(_onGetInspectionItems);
    on<_GetInspectionItembyNuber>(_onGetInspectionItemsbyNumber);
  }

  late final InspectionitemRepository _repository;
  final logger = Logger();

  Future<void> _onGetInspectionItems(
      _GetInspectionItem event, Emitter<InspectionItemState> emit) async {
    emit(const InspectionItemState.loading());
    logger.i("State item changed to: loading");
    try {
      logger.i("masuk try");
      final response =
          await _repository.getInspectionItem(event.id);
      logger.i("Data item fetched: $response");
      emit(InspectionItemState.loaded(response));
      logger.i("State item changed to: loaded");
    } catch (e) {
      logger.e("Error fetching machines: $e");
      emit(InspectionItemState.error(e.toString()));
    }
  }

  Future<void> _onGetInspectionItemsbyNumber(
      _GetInspectionItembyNuber event, Emitter<InspectionItemState> emit) async {
    emit(const InspectionItemState.loading());
    logger.i("State item changed to: loading");
    try {
      logger.i("masuk try");
      final response =
          await _repository.getInspectionItembyNumber(event.id,event.number);
      // logger.i("Data item fetched: $response");
      emit(InspectionItemState.loadedbyNumber(response));
      logger.i("State item changed to: loaded");
    } catch (e) {
      logger.e("Error fetching machines: $e");
      emit(InspectionItemState.error(e.toString()));
    }
  }
}
