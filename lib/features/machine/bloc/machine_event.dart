part of 'machine_bloc.dart';

@freezed
class MachineEvent with _$MachineEvent {
  const factory MachineEvent.started() = _Started;
  const factory MachineEvent.getMachines() = _GetMachine;
}