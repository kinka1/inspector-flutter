part of 'detail_inspection_bloc.dart';

@freezed
class DetailInspectionState with _$DetailInspectionState {
  const factory DetailInspectionState.initial() = _Initial;
   const factory DetailInspectionState.error(String error) = _Error;
  const factory DetailInspectionState.loading() = _Loading;
  const factory DetailInspectionState.loaded(
      DetailInspectionModel itemsdata) = _Loaded;
      const factory DetailInspectionState.loadedList(
      List<DetailInspectionGetModel> itemsdata) = _LoadedList;
  const factory DetailInspectionState.success() = _Success;
}
