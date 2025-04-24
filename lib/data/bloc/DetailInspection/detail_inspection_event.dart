part of 'detail_inspection_bloc.dart';

@freezed
class DetailInspectionEvent with _$DetailInspectionEvent {
  const factory DetailInspectionEvent.started() = _Started;
  const factory DetailInspectionEvent.postDetailInspection(DetailInspectionModelAdd model) = _PostDetailInspection;
  const factory DetailInspectionEvent.getDetailInspectionList(String machineId,String tanggal) = _GetDetailInspectionList;
  const factory DetailInspectionEvent.getDetailInspection(String machineId,int number,String tanggal) = _GetDetailInspection;
  const factory DetailInspectionEvent.getDetailByDate(String machineId,String tanggal) = _GetDetailByDate;
  const factory DetailInspectionEvent.resetState() = _ResetState;
  const factory DetailInspectionEvent.getDetailInspectionByMachineIdAndDate(String machineId,String tanggal) = _GetDetailInspectionByMachineIdAndDate;
  const factory DetailInspectionEvent.getDetailInspectionByMachine() = _GetDetailInspectionByMachine;
  const factory DetailInspectionEvent.getDetailInspectionByDate(String tanggal) = _GetDetailInspectionByDate;
}