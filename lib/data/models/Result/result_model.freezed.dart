// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResultResponse _$ResultResponseFromJson(Map<String, dynamic> json) {
  return _ResultResponse.fromJson(json);
}

/// @nodoc
mixin _$ResultResponse {
  bool get status => throw _privateConstructorUsedError;
  ResultData get data => throw _privateConstructorUsedError;

  /// Serializes this ResultResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultResponseCopyWith<ResultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultResponseCopyWith<$Res> {
  factory $ResultResponseCopyWith(
          ResultResponse value, $Res Function(ResultResponse) then) =
      _$ResultResponseCopyWithImpl<$Res, ResultResponse>;
  @useResult
  $Res call({bool status, ResultData data});

  $ResultDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ResultResponseCopyWithImpl<$Res, $Val extends ResultResponse>
    implements $ResultResponseCopyWith<$Res> {
  _$ResultResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResultData,
    ) as $Val);
  }

  /// Create a copy of ResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultDataCopyWith<$Res> get data {
    return $ResultDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultResponseImplCopyWith<$Res>
    implements $ResultResponseCopyWith<$Res> {
  factory _$$ResultResponseImplCopyWith(_$ResultResponseImpl value,
          $Res Function(_$ResultResponseImpl) then) =
      __$$ResultResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, ResultData data});

  @override
  $ResultDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ResultResponseImplCopyWithImpl<$Res>
    extends _$ResultResponseCopyWithImpl<$Res, _$ResultResponseImpl>
    implements _$$ResultResponseImplCopyWith<$Res> {
  __$$ResultResponseImplCopyWithImpl(
      _$ResultResponseImpl _value, $Res Function(_$ResultResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$ResultResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResultData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultResponseImpl
    with DiagnosticableTreeMixin
    implements _ResultResponse {
  const _$ResultResponseImpl({required this.status, required this.data});

  factory _$ResultResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultResponseImplFromJson(json);

  @override
  final bool status;
  @override
  final ResultData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultResponse(status: $status, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultResponse'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of ResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultResponseImplCopyWith<_$ResultResponseImpl> get copyWith =>
      __$$ResultResponseImplCopyWithImpl<_$ResultResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultResponseImplToJson(
      this,
    );
  }
}

abstract class _ResultResponse implements ResultResponse {
  const factory _ResultResponse(
      {required final bool status,
      required final ResultData data}) = _$ResultResponseImpl;

  factory _ResultResponse.fromJson(Map<String, dynamic> json) =
      _$ResultResponseImpl.fromJson;

  @override
  bool get status;
  @override
  ResultData get data;

  /// Create a copy of ResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultResponseImplCopyWith<_$ResultResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultData _$ResultDataFromJson(Map<String, dynamic> json) {
  return _ResultData.fromJson(json);
}

/// @nodoc
mixin _$ResultData {
  String get month => throw _privateConstructorUsedError;
  int get machineId => throw _privateConstructorUsedError;
  MachineModel get machine => throw _privateConstructorUsedError;
  List<ResultModel> get data => throw _privateConstructorUsedError;

  /// Serializes this ResultData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultDataCopyWith<ResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDataCopyWith<$Res> {
  factory $ResultDataCopyWith(
          ResultData value, $Res Function(ResultData) then) =
      _$ResultDataCopyWithImpl<$Res, ResultData>;
  @useResult
  $Res call(
      {String month,
      int machineId,
      MachineModel machine,
      List<ResultModel> data});

  $MachineModelCopyWith<$Res> get machine;
}

/// @nodoc
class _$ResultDataCopyWithImpl<$Res, $Val extends ResultData>
    implements $ResultDataCopyWith<$Res> {
  _$ResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? machineId = null,
    Object? machine = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as int,
      machine: null == machine
          ? _value.machine
          : machine // ignore: cast_nullable_to_non_nullable
              as MachineModel,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>,
    ) as $Val);
  }

  /// Create a copy of ResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MachineModelCopyWith<$Res> get machine {
    return $MachineModelCopyWith<$Res>(_value.machine, (value) {
      return _then(_value.copyWith(machine: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultDataImplCopyWith<$Res>
    implements $ResultDataCopyWith<$Res> {
  factory _$$ResultDataImplCopyWith(
          _$ResultDataImpl value, $Res Function(_$ResultDataImpl) then) =
      __$$ResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String month,
      int machineId,
      MachineModel machine,
      List<ResultModel> data});

  @override
  $MachineModelCopyWith<$Res> get machine;
}

/// @nodoc
class __$$ResultDataImplCopyWithImpl<$Res>
    extends _$ResultDataCopyWithImpl<$Res, _$ResultDataImpl>
    implements _$$ResultDataImplCopyWith<$Res> {
  __$$ResultDataImplCopyWithImpl(
      _$ResultDataImpl _value, $Res Function(_$ResultDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? machineId = null,
    Object? machine = null,
    Object? data = null,
  }) {
    return _then(_$ResultDataImpl(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as int,
      machine: null == machine
          ? _value.machine
          : machine // ignore: cast_nullable_to_non_nullable
              as MachineModel,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultDataImpl with DiagnosticableTreeMixin implements _ResultData {
  const _$ResultDataImpl(
      {required this.month,
      required this.machineId,
      required this.machine,
      required final List<ResultModel> data})
      : _data = data;

  factory _$ResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultDataImplFromJson(json);

  @override
  final String month;
  @override
  final int machineId;
  @override
  final MachineModel machine;
  final List<ResultModel> _data;
  @override
  List<ResultModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultData(month: $month, machineId: $machineId, machine: $machine, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultData'))
      ..add(DiagnosticsProperty('month', month))
      ..add(DiagnosticsProperty('machineId', machineId))
      ..add(DiagnosticsProperty('machine', machine))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDataImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.machine, machine) || other.machine == machine) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, month, machineId, machine,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of ResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDataImplCopyWith<_$ResultDataImpl> get copyWith =>
      __$$ResultDataImplCopyWithImpl<_$ResultDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultDataImplToJson(
      this,
    );
  }
}

abstract class _ResultData implements ResultData {
  const factory _ResultData(
      {required final String month,
      required final int machineId,
      required final MachineModel machine,
      required final List<ResultModel> data}) = _$ResultDataImpl;

  factory _ResultData.fromJson(Map<String, dynamic> json) =
      _$ResultDataImpl.fromJson;

  @override
  String get month;
  @override
  int get machineId;
  @override
  MachineModel get machine;
  @override
  List<ResultModel> get data;

  /// Create a copy of ResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultDataImplCopyWith<_$ResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) {
  return _ResultModel.fromJson(json);
}

/// @nodoc
mixin _$ResultModel {
  int get resultId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get machineId => throw _privateConstructorUsedError;
  String get buId => throw _privateConstructorUsedError;

  /// Serializes this ResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultModelCopyWith<ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultModelCopyWith<$Res> {
  factory $ResultModelCopyWith(
          ResultModel value, $Res Function(ResultModel) then) =
      _$ResultModelCopyWithImpl<$Res, ResultModel>;
  @useResult
  $Res call(
      {int resultId,
      int userId,
      String status,
      DateTime date,
      String machineId,
      String buId});
}

/// @nodoc
class _$ResultModelCopyWithImpl<$Res, $Val extends ResultModel>
    implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultId = null,
    Object? userId = null,
    Object? status = null,
    Object? date = null,
    Object? machineId = null,
    Object? buId = null,
  }) {
    return _then(_value.copyWith(
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      buId: null == buId
          ? _value.buId
          : buId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultModelImplCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$$ResultModelImplCopyWith(
          _$ResultModelImpl value, $Res Function(_$ResultModelImpl) then) =
      __$$ResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int resultId,
      int userId,
      String status,
      DateTime date,
      String machineId,
      String buId});
}

/// @nodoc
class __$$ResultModelImplCopyWithImpl<$Res>
    extends _$ResultModelCopyWithImpl<$Res, _$ResultModelImpl>
    implements _$$ResultModelImplCopyWith<$Res> {
  __$$ResultModelImplCopyWithImpl(
      _$ResultModelImpl _value, $Res Function(_$ResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultId = null,
    Object? userId = null,
    Object? status = null,
    Object? date = null,
    Object? machineId = null,
    Object? buId = null,
  }) {
    return _then(_$ResultModelImpl(
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      buId: null == buId
          ? _value.buId
          : buId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultModelImpl with DiagnosticableTreeMixin implements _ResultModel {
  const _$ResultModelImpl(
      {required this.resultId,
      required this.userId,
      required this.status,
      required this.date,
      required this.machineId,
      required this.buId});

  factory _$ResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultModelImplFromJson(json);

  @override
  final int resultId;
  @override
  final int userId;
  @override
  final String status;
  @override
  final DateTime date;
  @override
  final String machineId;
  @override
  final String buId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultModel(resultId: $resultId, userId: $userId, status: $status, date: $date, machineId: $machineId, buId: $buId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultModel'))
      ..add(DiagnosticsProperty('resultId', resultId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('machineId', machineId))
      ..add(DiagnosticsProperty('buId', buId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultModelImpl &&
            (identical(other.resultId, resultId) ||
                other.resultId == resultId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.buId, buId) || other.buId == buId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, resultId, userId, status, date, machineId, buId);

  /// Create a copy of ResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultModelImplCopyWith<_$ResultModelImpl> get copyWith =>
      __$$ResultModelImplCopyWithImpl<_$ResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultModelImplToJson(
      this,
    );
  }
}

abstract class _ResultModel implements ResultModel {
  const factory _ResultModel(
      {required final int resultId,
      required final int userId,
      required final String status,
      required final DateTime date,
      required final String machineId,
      required final String buId}) = _$ResultModelImpl;

  factory _ResultModel.fromJson(Map<String, dynamic> json) =
      _$ResultModelImpl.fromJson;

  @override
  int get resultId;
  @override
  int get userId;
  @override
  String get status;
  @override
  DateTime get date;
  @override
  String get machineId;
  @override
  String get buId;

  /// Create a copy of ResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultModelImplCopyWith<_$ResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultGet _$ResultGetFromJson(Map<String, dynamic> json) {
  return _ResultGet.fromJson(json);
}

/// @nodoc
mixin _$ResultGet {
  int get resultId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get machineId => throw _privateConstructorUsedError;
  MachineModel get machine => throw _privateConstructorUsedError;
  String get buId => throw _privateConstructorUsedError;

  /// Serializes this ResultGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultGetCopyWith<ResultGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultGetCopyWith<$Res> {
  factory $ResultGetCopyWith(ResultGet value, $Res Function(ResultGet) then) =
      _$ResultGetCopyWithImpl<$Res, ResultGet>;
  @useResult
  $Res call(
      {int resultId,
      int userId,
      String status,
      DateTime date,
      String machineId,
      MachineModel machine,
      String buId});

  $MachineModelCopyWith<$Res> get machine;
}

/// @nodoc
class _$ResultGetCopyWithImpl<$Res, $Val extends ResultGet>
    implements $ResultGetCopyWith<$Res> {
  _$ResultGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultId = null,
    Object? userId = null,
    Object? status = null,
    Object? date = null,
    Object? machineId = null,
    Object? machine = null,
    Object? buId = null,
  }) {
    return _then(_value.copyWith(
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      machine: null == machine
          ? _value.machine
          : machine // ignore: cast_nullable_to_non_nullable
              as MachineModel,
      buId: null == buId
          ? _value.buId
          : buId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ResultGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MachineModelCopyWith<$Res> get machine {
    return $MachineModelCopyWith<$Res>(_value.machine, (value) {
      return _then(_value.copyWith(machine: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultGetImplCopyWith<$Res>
    implements $ResultGetCopyWith<$Res> {
  factory _$$ResultGetImplCopyWith(
          _$ResultGetImpl value, $Res Function(_$ResultGetImpl) then) =
      __$$ResultGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int resultId,
      int userId,
      String status,
      DateTime date,
      String machineId,
      MachineModel machine,
      String buId});

  @override
  $MachineModelCopyWith<$Res> get machine;
}

/// @nodoc
class __$$ResultGetImplCopyWithImpl<$Res>
    extends _$ResultGetCopyWithImpl<$Res, _$ResultGetImpl>
    implements _$$ResultGetImplCopyWith<$Res> {
  __$$ResultGetImplCopyWithImpl(
      _$ResultGetImpl _value, $Res Function(_$ResultGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultId = null,
    Object? userId = null,
    Object? status = null,
    Object? date = null,
    Object? machineId = null,
    Object? machine = null,
    Object? buId = null,
  }) {
    return _then(_$ResultGetImpl(
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      machine: null == machine
          ? _value.machine
          : machine // ignore: cast_nullable_to_non_nullable
              as MachineModel,
      buId: null == buId
          ? _value.buId
          : buId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultGetImpl with DiagnosticableTreeMixin implements _ResultGet {
  const _$ResultGetImpl(
      {required this.resultId,
      required this.userId,
      required this.status,
      required this.date,
      required this.machineId,
      required this.machine,
      required this.buId});

  factory _$ResultGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultGetImplFromJson(json);

  @override
  final int resultId;
  @override
  final int userId;
  @override
  final String status;
  @override
  final DateTime date;
  @override
  final String machineId;
  @override
  final MachineModel machine;
  @override
  final String buId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultGet(resultId: $resultId, userId: $userId, status: $status, date: $date, machineId: $machineId, machine: $machine, buId: $buId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultGet'))
      ..add(DiagnosticsProperty('resultId', resultId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('machineId', machineId))
      ..add(DiagnosticsProperty('machine', machine))
      ..add(DiagnosticsProperty('buId', buId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultGetImpl &&
            (identical(other.resultId, resultId) ||
                other.resultId == resultId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.machine, machine) || other.machine == machine) &&
            (identical(other.buId, buId) || other.buId == buId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, resultId, userId, status, date, machineId, machine, buId);

  /// Create a copy of ResultGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultGetImplCopyWith<_$ResultGetImpl> get copyWith =>
      __$$ResultGetImplCopyWithImpl<_$ResultGetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultGetImplToJson(
      this,
    );
  }
}

abstract class _ResultGet implements ResultGet {
  const factory _ResultGet(
      {required final int resultId,
      required final int userId,
      required final String status,
      required final DateTime date,
      required final String machineId,
      required final MachineModel machine,
      required final String buId}) = _$ResultGetImpl;

  factory _ResultGet.fromJson(Map<String, dynamic> json) =
      _$ResultGetImpl.fromJson;

  @override
  int get resultId;
  @override
  int get userId;
  @override
  String get status;
  @override
  DateTime get date;
  @override
  String get machineId;
  @override
  MachineModel get machine;
  @override
  String get buId;

  /// Create a copy of ResultGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultGetImplCopyWith<_$ResultGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultGetHome _$ResultGetHomeFromJson(Map<String, dynamic> json) {
  return _ResultGetHome.fromJson(json);
}

/// @nodoc
mixin _$ResultGetHome {
  List<ResultGet> get resultModel => throw _privateConstructorUsedError;
  List<MachineModel> get machine => throw _privateConstructorUsedError;

  /// Serializes this ResultGetHome to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultGetHome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultGetHomeCopyWith<ResultGetHome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultGetHomeCopyWith<$Res> {
  factory $ResultGetHomeCopyWith(
          ResultGetHome value, $Res Function(ResultGetHome) then) =
      _$ResultGetHomeCopyWithImpl<$Res, ResultGetHome>;
  @useResult
  $Res call({List<ResultGet> resultModel, List<MachineModel> machine});
}

/// @nodoc
class _$ResultGetHomeCopyWithImpl<$Res, $Val extends ResultGetHome>
    implements $ResultGetHomeCopyWith<$Res> {
  _$ResultGetHomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultGetHome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultModel = null,
    Object? machine = null,
  }) {
    return _then(_value.copyWith(
      resultModel: null == resultModel
          ? _value.resultModel
          : resultModel // ignore: cast_nullable_to_non_nullable
              as List<ResultGet>,
      machine: null == machine
          ? _value.machine
          : machine // ignore: cast_nullable_to_non_nullable
              as List<MachineModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultGetHomeImplCopyWith<$Res>
    implements $ResultGetHomeCopyWith<$Res> {
  factory _$$ResultGetHomeImplCopyWith(
          _$ResultGetHomeImpl value, $Res Function(_$ResultGetHomeImpl) then) =
      __$$ResultGetHomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResultGet> resultModel, List<MachineModel> machine});
}

/// @nodoc
class __$$ResultGetHomeImplCopyWithImpl<$Res>
    extends _$ResultGetHomeCopyWithImpl<$Res, _$ResultGetHomeImpl>
    implements _$$ResultGetHomeImplCopyWith<$Res> {
  __$$ResultGetHomeImplCopyWithImpl(
      _$ResultGetHomeImpl _value, $Res Function(_$ResultGetHomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultGetHome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultModel = null,
    Object? machine = null,
  }) {
    return _then(_$ResultGetHomeImpl(
      resultModel: null == resultModel
          ? _value._resultModel
          : resultModel // ignore: cast_nullable_to_non_nullable
              as List<ResultGet>,
      machine: null == machine
          ? _value._machine
          : machine // ignore: cast_nullable_to_non_nullable
              as List<MachineModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultGetHomeImpl
    with DiagnosticableTreeMixin
    implements _ResultGetHome {
  const _$ResultGetHomeImpl(
      {required final List<ResultGet> resultModel,
      required final List<MachineModel> machine})
      : _resultModel = resultModel,
        _machine = machine;

  factory _$ResultGetHomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultGetHomeImplFromJson(json);

  final List<ResultGet> _resultModel;
  @override
  List<ResultGet> get resultModel {
    if (_resultModel is EqualUnmodifiableListView) return _resultModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resultModel);
  }

  final List<MachineModel> _machine;
  @override
  List<MachineModel> get machine {
    if (_machine is EqualUnmodifiableListView) return _machine;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_machine);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultGetHome(resultModel: $resultModel, machine: $machine)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultGetHome'))
      ..add(DiagnosticsProperty('resultModel', resultModel))
      ..add(DiagnosticsProperty('machine', machine));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultGetHomeImpl &&
            const DeepCollectionEquality()
                .equals(other._resultModel, _resultModel) &&
            const DeepCollectionEquality().equals(other._machine, _machine));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_resultModel),
      const DeepCollectionEquality().hash(_machine));

  /// Create a copy of ResultGetHome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultGetHomeImplCopyWith<_$ResultGetHomeImpl> get copyWith =>
      __$$ResultGetHomeImplCopyWithImpl<_$ResultGetHomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultGetHomeImplToJson(
      this,
    );
  }
}

abstract class _ResultGetHome implements ResultGetHome {
  const factory _ResultGetHome(
      {required final List<ResultGet> resultModel,
      required final List<MachineModel> machine}) = _$ResultGetHomeImpl;

  factory _ResultGetHome.fromJson(Map<String, dynamic> json) =
      _$ResultGetHomeImpl.fromJson;

  @override
  List<ResultGet> get resultModel;
  @override
  List<MachineModel> get machine;

  /// Create a copy of ResultGetHome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultGetHomeImplCopyWith<_$ResultGetHomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultAdd _$ResultAddFromJson(Map<String, dynamic> json) {
  return _ResultAdd.fromJson(json);
}

/// @nodoc
mixin _$ResultAdd {
  String get status => throw _privateConstructorUsedError;
  String get machineId => throw _privateConstructorUsedError;
  String get buId => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  /// Serializes this ResultAdd to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultAdd
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultAddCopyWith<ResultAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultAddCopyWith<$Res> {
  factory $ResultAddCopyWith(ResultAdd value, $Res Function(ResultAdd) then) =
      _$ResultAddCopyWithImpl<$Res, ResultAdd>;
  @useResult
  $Res call({String status, String machineId, String buId, String date});
}

/// @nodoc
class _$ResultAddCopyWithImpl<$Res, $Val extends ResultAdd>
    implements $ResultAddCopyWith<$Res> {
  _$ResultAddCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultAdd
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? machineId = null,
    Object? buId = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      buId: null == buId
          ? _value.buId
          : buId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultAddImplCopyWith<$Res>
    implements $ResultAddCopyWith<$Res> {
  factory _$$ResultAddImplCopyWith(
          _$ResultAddImpl value, $Res Function(_$ResultAddImpl) then) =
      __$$ResultAddImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String machineId, String buId, String date});
}

/// @nodoc
class __$$ResultAddImplCopyWithImpl<$Res>
    extends _$ResultAddCopyWithImpl<$Res, _$ResultAddImpl>
    implements _$$ResultAddImplCopyWith<$Res> {
  __$$ResultAddImplCopyWithImpl(
      _$ResultAddImpl _value, $Res Function(_$ResultAddImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultAdd
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? machineId = null,
    Object? buId = null,
    Object? date = null,
  }) {
    return _then(_$ResultAddImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      buId: null == buId
          ? _value.buId
          : buId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultAddImpl with DiagnosticableTreeMixin implements _ResultAdd {
  const _$ResultAddImpl(
      {required this.status,
      required this.machineId,
      required this.buId,
      required this.date});

  factory _$ResultAddImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultAddImplFromJson(json);

  @override
  final String status;
  @override
  final String machineId;
  @override
  final String buId;
  @override
  final String date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultAdd(status: $status, machineId: $machineId, buId: $buId, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultAdd'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('machineId', machineId))
      ..add(DiagnosticsProperty('buId', buId))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultAddImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.buId, buId) || other.buId == buId) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, machineId, buId, date);

  /// Create a copy of ResultAdd
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultAddImplCopyWith<_$ResultAddImpl> get copyWith =>
      __$$ResultAddImplCopyWithImpl<_$ResultAddImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultAddImplToJson(
      this,
    );
  }
}

abstract class _ResultAdd implements ResultAdd {
  const factory _ResultAdd(
      {required final String status,
      required final String machineId,
      required final String buId,
      required final String date}) = _$ResultAddImpl;

  factory _ResultAdd.fromJson(Map<String, dynamic> json) =
      _$ResultAddImpl.fromJson;

  @override
  String get status;
  @override
  String get machineId;
  @override
  String get buId;
  @override
  String get date;

  /// Create a copy of ResultAdd
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultAddImplCopyWith<_$ResultAddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
