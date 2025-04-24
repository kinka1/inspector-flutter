part of 'other_bloc.dart';

@freezed
class OtherEvent with _$OtherEvent {
  const factory OtherEvent.started() = _Started;
  const factory OtherEvent.getOther(int resultId, String tanggal) = _GetOther;
  const factory OtherEvent.addOther(OtherAddModel model) = _AddOther;
  const factory OtherEvent.getOtherAll() = _GetOtherAll;
}
