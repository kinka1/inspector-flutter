part of 'detail_inspection_bloc.dart';

@freezed
class DetailInspectionEvent with _$DetailInspectionEvent {
  const factory DetailInspectionEvent.started() = _Started;
  const factory DetailInspectionEvent.postDetailInspection(DetailInspectionModel model) = _PostDetailInspection;
  const factory DetailInspectionEvent.getDetailInspectionList(int machineId,String tanggal) = _GetDetailInspectionList;
}