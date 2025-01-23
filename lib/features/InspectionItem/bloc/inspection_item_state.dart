part of 'inspection_item_bloc.dart';

@freezed
class InspectionItemState with _$InspectionItemState {
  const factory InspectionItemState.initial() = _Initial;
  const factory InspectionItemState.error(String error) = _Error;
  const factory InspectionItemState.loading() = _Loading;
  const factory InspectionItemState.loaded(InspectionitemModel inspectionItem) = _Loaded;
  const factory InspectionItemState.success() = _Success;
}
