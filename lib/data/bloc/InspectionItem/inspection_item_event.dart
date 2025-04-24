part of 'inspection_item_bloc.dart';

@freezed
class InspectionItemEvent with _$InspectionItemEvent {
  const factory InspectionItemEvent.started() = _Started;
  const factory InspectionItemEvent.GetInspectionItem(String id) =
      _GetInspectionItem;
  const factory InspectionItemEvent.GetInspectionItembyNumber(
      String id, int number) = _GetInspectionItembyNuber;
}
