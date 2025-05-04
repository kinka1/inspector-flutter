import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:maintenanceApp/data/models/MachineInspection/machine_inspection_model.dart';
import 'package:maintenanceApp/data/repositories/MachineInspection/machine_inspection_repository.dart';

part 'machine_inspection_state.dart';
part 'machine_inspection_event.dart';
part 'machine_inspection_bloc.freezed.dart';

class MachineInspectionBloc
    extends Bloc<MachineInspectionEvent, MachineInspectionState> {

  final logger = Logger();
  
  MachineInspectionBloc(MachineInspectionRepository repository)
      : super(const MachineInspectionState.initial()) {
    _repository = repository;
    on<_GetMachineInspection>(_onGetInspectionItems);
    // on<_GetInspectionItembyNuber>(_onGetInspectionItemsbyNumber);
  }

  late final MachineInspectionRepository _repository;

  Future<void> _onGetInspectionItems(
      _GetMachineInspection event, Emitter<MachineInspectionState> emit) async {
    // logger.i('masuk try BLOC ITEM GET');
    emit(const MachineInspectionState.loading());
    try {
      final response = await _repository.getInspectionItem(event.id,event.buId);
      // logger.i('berhasil hit, response : $response');
      emit(MachineInspectionState.loaded(response));
      logger.i('berhasil emit');
    } catch (e) {
      emit(MachineInspectionState.error(e.toString()));
    }
  }

}
