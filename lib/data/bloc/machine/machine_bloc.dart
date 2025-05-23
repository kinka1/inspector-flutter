import 'package:maintenanceApp/data/models/machine/machine_model.dart';
import 'package:maintenanceApp/data/repositories/machine/machine_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'machine_event.dart';
part 'machine_state.dart';
part 'machine_bloc.freezed.dart';

class MachineBloc extends Bloc<MachineEvent, MachineState> {
  MachineBloc(MachineRepository repository)
      : super(const MachineState.initial()) {
    _repository = repository;
    on<_GetMachine>(_onGetMachines);
  }

  late final MachineRepository _repository;

  Future<void> _onGetMachines(
      _GetMachine event, Emitter<MachineState> emit) async {
    emit(const MachineState.loading());

    try {
      final MachineModel machine = await _repository.getMachines(event.id);

      emit(MachineState.loaded(machine));
    } catch (e) {
      emit(MachineState.error(e.toString()));
    }
  }
}
