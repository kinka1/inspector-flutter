import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/data/repositories/InspectionItem/InspectionItem_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inspection_item_event.dart';
part 'inspection_item_state.dart';
part 'inspection_item_bloc.freezed.dart';

class InspectionItemBloc extends Bloc<InspectionItemEvent, InspectionItemState> {
  InspectionItemBloc(InspectionitemRepository repository) 
    : super(const InspectionItemState.initial()) {
    _repository = repository;
    on<_GetInspectionItem>(_onGetInspectionItems);
  }

  late final InspectionitemRepository _repository;
  
  Future<void> _onGetInspectionItems(
      _GetInspectionItem event, Emitter<InspectionItemState> emit) async {
    emit(const InspectionItemState.loading());
    try {
      final List<InspectionitemModel> list = (await _repository.getInspectionItem());
      print(list[1]);
      emit(InspectionItemState.loaded(list));
    } catch (e) {
      emit(InspectionItemState.error(e.toString()));
    }
  }
}
