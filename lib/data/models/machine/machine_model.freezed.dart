// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'machine_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MachineResponse _$MachineResponseFromJson(Map<String, dynamic> json) {
  return _MachineResponse.fromJson(json);
}

/// @nodoc
mixin _$MachineResponse {
  bool get status => throw _privateConstructorUsedError;
  MachineData get data => throw _privateConstructorUsedError;

  /// Serializes this MachineResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MachineResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MachineResponseCopyWith<MachineResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineResponseCopyWith<$Res> {
  factory $MachineResponseCopyWith(
          MachineResponse value, $Res Function(MachineResponse) then) =
      _$MachineResponseCopyWithImpl<$Res, MachineResponse>;
  @useResult
  $Res call({bool status, MachineData data});

  $MachineDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MachineResponseCopyWithImpl<$Res, $Val extends MachineResponse>
    implements $MachineResponseCopyWith<$Res> {
  _$MachineResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MachineResponse
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
              as MachineData,
    ) as $Val);
  }

  /// Create a copy of MachineResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MachineDataCopyWith<$Res> get data {
    return $MachineDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MachineResponseImplCopyWith<$Res>
    implements $MachineResponseCopyWith<$Res> {
  factory _$$MachineResponseImplCopyWith(_$MachineResponseImpl value,
          $Res Function(_$MachineResponseImpl) then) =
      __$$MachineResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, MachineData data});

  @override
  $MachineDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$MachineResponseImplCopyWithImpl<$Res>
    extends _$MachineResponseCopyWithImpl<$Res, _$MachineResponseImpl>
    implements _$$MachineResponseImplCopyWith<$Res> {
  __$$MachineResponseImplCopyWithImpl(
      _$MachineResponseImpl _value, $Res Function(_$MachineResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MachineResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$MachineResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MachineData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MachineResponseImpl
    with DiagnosticableTreeMixin
    implements _MachineResponse {
  const _$MachineResponseImpl({required this.status, required this.data});

  factory _$MachineResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MachineResponseImplFromJson(json);

  @override
  final bool status;
  @override
  final MachineData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MachineResponse(status: $status, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MachineResponse'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MachineResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of MachineResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MachineResponseImplCopyWith<_$MachineResponseImpl> get copyWith =>
      __$$MachineResponseImplCopyWithImpl<_$MachineResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MachineResponseImplToJson(
      this,
    );
  }
}

abstract class _MachineResponse implements MachineResponse {
  const factory _MachineResponse(
      {required final bool status,
      required final MachineData data}) = _$MachineResponseImpl;

  factory _MachineResponse.fromJson(Map<String, dynamic> json) =
      _$MachineResponseImpl.fromJson;

  @override
  bool get status;
  @override
  MachineData get data;

  /// Create a copy of MachineResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MachineResponseImplCopyWith<_$MachineResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MachineData _$MachineDataFromJson(Map<String, dynamic> json) {
  return _MachineData.fromJson(json);
}

/// @nodoc
mixin _$MachineData {
  MachineModel get item => throw _privateConstructorUsedError;

  /// Serializes this MachineData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MachineData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MachineDataCopyWith<MachineData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineDataCopyWith<$Res> {
  factory $MachineDataCopyWith(
          MachineData value, $Res Function(MachineData) then) =
      _$MachineDataCopyWithImpl<$Res, MachineData>;
  @useResult
  $Res call({MachineModel item});

  $MachineModelCopyWith<$Res> get item;
}

/// @nodoc
class _$MachineDataCopyWithImpl<$Res, $Val extends MachineData>
    implements $MachineDataCopyWith<$Res> {
  _$MachineDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MachineData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as MachineModel,
    ) as $Val);
  }

  /// Create a copy of MachineData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MachineModelCopyWith<$Res> get item {
    return $MachineModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MachineDataImplCopyWith<$Res>
    implements $MachineDataCopyWith<$Res> {
  factory _$$MachineDataImplCopyWith(
          _$MachineDataImpl value, $Res Function(_$MachineDataImpl) then) =
      __$$MachineDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MachineModel item});

  @override
  $MachineModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$MachineDataImplCopyWithImpl<$Res>
    extends _$MachineDataCopyWithImpl<$Res, _$MachineDataImpl>
    implements _$$MachineDataImplCopyWith<$Res> {
  __$$MachineDataImplCopyWithImpl(
      _$MachineDataImpl _value, $Res Function(_$MachineDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MachineData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$MachineDataImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as MachineModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MachineDataImpl with DiagnosticableTreeMixin implements _MachineData {
  const _$MachineDataImpl({required this.item});

  factory _$MachineDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MachineDataImplFromJson(json);

  @override
  final MachineModel item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MachineData(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MachineData'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MachineDataImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of MachineData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MachineDataImplCopyWith<_$MachineDataImpl> get copyWith =>
      __$$MachineDataImplCopyWithImpl<_$MachineDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MachineDataImplToJson(
      this,
    );
  }
}

abstract class _MachineData implements MachineData {
  const factory _MachineData({required final MachineModel item}) =
      _$MachineDataImpl;

  factory _MachineData.fromJson(Map<String, dynamic> json) =
      _$MachineDataImpl.fromJson;

  @override
  MachineModel get item;

  /// Create a copy of MachineData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MachineDataImplCopyWith<_$MachineDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MachineModel _$MachineModelFromJson(Map<String, dynamic> json) {
  return _MachineModel.fromJson(json);
}

/// @nodoc
mixin _$MachineModel {
  String get machineId => throw _privateConstructorUsedError;
  String get sectionName => throw _privateConstructorUsedError;
  String get line => throw _privateConstructorUsedError;
  String get machineName => throw _privateConstructorUsedError;
  String get machineNumber => throw _privateConstructorUsedError;
  String get dockumentNo => throw _privateConstructorUsedError;
  String get buId => throw _privateConstructorUsedError;

  /// Serializes this MachineModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MachineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MachineModelCopyWith<MachineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineModelCopyWith<$Res> {
  factory $MachineModelCopyWith(
          MachineModel value, $Res Function(MachineModel) then) =
      _$MachineModelCopyWithImpl<$Res, MachineModel>;
  @useResult
  $Res call(
      {String machineId,
      String sectionName,
      String line,
      String machineName,
      String machineNumber,
      String dockumentNo,
      String buId});
}

/// @nodoc
class _$MachineModelCopyWithImpl<$Res, $Val extends MachineModel>
    implements $MachineModelCopyWith<$Res> {
  _$MachineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MachineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? sectionName = null,
    Object? line = null,
    Object? machineName = null,
    Object? machineNumber = null,
    Object? dockumentNo = null,
    Object? buId = null,
  }) {
    return _then(_value.copyWith(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      sectionName: null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String,
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as String,
      machineName: null == machineName
          ? _value.machineName
          : machineName // ignore: cast_nullable_to_non_nullable
              as String,
      machineNumber: null == machineNumber
          ? _value.machineNumber
          : machineNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dockumentNo: null == dockumentNo
          ? _value.dockumentNo
          : dockumentNo // ignore: cast_nullable_to_non_nullable
              as String,
      buId: null == buId
          ? _value.buId
          : buId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MachineModelImplCopyWith<$Res>
    implements $MachineModelCopyWith<$Res> {
  factory _$$MachineModelImplCopyWith(
          _$MachineModelImpl value, $Res Function(_$MachineModelImpl) then) =
      __$$MachineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String machineId,
      String sectionName,
      String line,
      String machineName,
      String machineNumber,
      String dockumentNo,
      String buId});
}

/// @nodoc
class __$$MachineModelImplCopyWithImpl<$Res>
    extends _$MachineModelCopyWithImpl<$Res, _$MachineModelImpl>
    implements _$$MachineModelImplCopyWith<$Res> {
  __$$MachineModelImplCopyWithImpl(
      _$MachineModelImpl _value, $Res Function(_$MachineModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MachineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? sectionName = null,
    Object? line = null,
    Object? machineName = null,
    Object? machineNumber = null,
    Object? dockumentNo = null,
    Object? buId = null,
  }) {
    return _then(_$MachineModelImpl(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      sectionName: null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String,
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as String,
      machineName: null == machineName
          ? _value.machineName
          : machineName // ignore: cast_nullable_to_non_nullable
              as String,
      machineNumber: null == machineNumber
          ? _value.machineNumber
          : machineNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dockumentNo: null == dockumentNo
          ? _value.dockumentNo
          : dockumentNo // ignore: cast_nullable_to_non_nullable
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
class _$MachineModelImpl with DiagnosticableTreeMixin implements _MachineModel {
  const _$MachineModelImpl(
      {required this.machineId,
      required this.sectionName,
      required this.line,
      required this.machineName,
      required this.machineNumber,
      required this.dockumentNo,
      required this.buId});

  factory _$MachineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MachineModelImplFromJson(json);

  @override
  final String machineId;
  @override
  final String sectionName;
  @override
  final String line;
  @override
  final String machineName;
  @override
  final String machineNumber;
  @override
  final String dockumentNo;
  @override
  final String buId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MachineModel(machineId: $machineId, sectionName: $sectionName, line: $line, machineName: $machineName, machineNumber: $machineNumber, dockumentNo: $dockumentNo, buId: $buId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MachineModel'))
      ..add(DiagnosticsProperty('machineId', machineId))
      ..add(DiagnosticsProperty('sectionName', sectionName))
      ..add(DiagnosticsProperty('line', line))
      ..add(DiagnosticsProperty('machineName', machineName))
      ..add(DiagnosticsProperty('machineNumber', machineNumber))
      ..add(DiagnosticsProperty('dockumentNo', dockumentNo))
      ..add(DiagnosticsProperty('buId', buId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MachineModelImpl &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.sectionName, sectionName) ||
                other.sectionName == sectionName) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.machineName, machineName) ||
                other.machineName == machineName) &&
            (identical(other.machineNumber, machineNumber) ||
                other.machineNumber == machineNumber) &&
            (identical(other.dockumentNo, dockumentNo) ||
                other.dockumentNo == dockumentNo) &&
            (identical(other.buId, buId) || other.buId == buId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, machineId, sectionName, line,
      machineName, machineNumber, dockumentNo, buId);

  /// Create a copy of MachineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MachineModelImplCopyWith<_$MachineModelImpl> get copyWith =>
      __$$MachineModelImplCopyWithImpl<_$MachineModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MachineModelImplToJson(
      this,
    );
  }
}

abstract class _MachineModel implements MachineModel {
  const factory _MachineModel(
      {required final String machineId,
      required final String sectionName,
      required final String line,
      required final String machineName,
      required final String machineNumber,
      required final String dockumentNo,
      required final String buId}) = _$MachineModelImpl;

  factory _MachineModel.fromJson(Map<String, dynamic> json) =
      _$MachineModelImpl.fromJson;

  @override
  String get machineId;
  @override
  String get sectionName;
  @override
  String get line;
  @override
  String get machineName;
  @override
  String get machineNumber;
  @override
  String get dockumentNo;
  @override
  String get buId;

  /// Create a copy of MachineModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MachineModelImplCopyWith<_$MachineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
