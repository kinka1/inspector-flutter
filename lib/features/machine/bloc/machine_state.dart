part of 'machine_bloc.dart';

@freezed
class MachineState with _$MachineState {
  const factory MachineState.initial() = _Initial;
  const factory MachineState.error(String error) = _Error;
  const factory MachineState.loading() = _Loading;
  const factory MachineState.loaded(MachineModel machine) = _Loaded;
  const factory MachineState.success() = _Success;
}
