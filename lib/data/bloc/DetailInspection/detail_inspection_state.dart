part of 'detail_inspection_bloc.dart';

@freezed
class DetailInspectionState with _$DetailInspectionState {
  const factory DetailInspectionState.initial() = _Initial;
  const factory DetailInspectionState.error(String error) = _Error;
  const factory DetailInspectionState.loading() = _Loading;
  const factory DetailInspectionState.loaded(DetailInspectionModel itemsdata) =
      _Loaded;
  const factory DetailInspectionState.loadedList(
      List<DetailInspectionGetModel> itemsdata) = _LoadedList;
  const factory DetailInspectionState.success() = _Success;
  const factory DetailInspectionState.getData(
      DetailInspectionGetModel response) = _GetData;
  const factory DetailInspectionState.loadedbyDate(
      List<DetailInspectionGetModel> item) = _LoadedbyDate;
  const factory DetailInspectionState.loadedbyMachineIdAndDate(
      DetailInspectionGetModel item) = _LoadedbyMachineIdAndDate;
  const factory DetailInspectionState.loadedByMachine(
      List<DetailInspectionGetModel> item) = _LoadedbyMachine;
        const factory DetailInspectionState.loadedByDateList(
      List<DetailInspectionGetModel> item) = _LoadedByDateList;
}
