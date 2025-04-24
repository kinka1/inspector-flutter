part of 'machine_inspection_bloc.dart';

@freezed
class MachineInspectionState with _$MachineInspectionState {
  const factory MachineInspectionState.initial() = _Initial;
  const factory MachineInspectionState.error(String error) = _Error;
  const factory MachineInspectionState.loading() = _Loading;
  const factory MachineInspectionState.loaded(MachineInspectionModel listItem) = _Loaded;
}
