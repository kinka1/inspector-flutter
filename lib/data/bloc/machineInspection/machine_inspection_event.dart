part of 'machine_inspection_bloc.dart';

@freezed
class MachineInspectionEvent with _$MachineInspectionEvent {
  const factory MachineInspectionEvent.started() = _Started;
  const factory MachineInspectionEvent.GetMachineInspection(String id) =
      _GetMachineInspection;

}
