// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'machine_inspection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MachineInspectionResponse _$MachineInspectionResponseFromJson(
    Map<String, dynamic> json) {
  return _MachineInspectionResponse.fromJson(json);
}

/// @nodoc
mixin _$MachineInspectionResponse {
  bool get status => throw _privateConstructorUsedError;
  MachineInspectionModel get data => throw _privateConstructorUsedError;

  /// Serializes this MachineInspectionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MachineInspectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MachineInspectionResponseCopyWith<MachineInspectionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineInspectionResponseCopyWith<$Res> {
  factory $MachineInspectionResponseCopyWith(MachineInspectionResponse value,
          $Res Function(MachineInspectionResponse) then) =
      _$MachineInspectionResponseCopyWithImpl<$Res, MachineInspectionResponse>;
  @useResult
  $Res call({bool status, MachineInspectionModel data});

  $MachineInspectionModelCopyWith<$Res> get data;
}

/// @nodoc
class _$MachineInspectionResponseCopyWithImpl<$Res,
        $Val extends MachineInspectionResponse>
    implements $MachineInspectionResponseCopyWith<$Res> {
  _$MachineInspectionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MachineInspectionResponse
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
              as MachineInspectionModel,
    ) as $Val);
  }

  /// Create a copy of MachineInspectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MachineInspectionModelCopyWith<$Res> get data {
    return $MachineInspectionModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MachineInspectionResponseImplCopyWith<$Res>
    implements $MachineInspectionResponseCopyWith<$Res> {
  factory _$$MachineInspectionResponseImplCopyWith(
          _$MachineInspectionResponseImpl value,
          $Res Function(_$MachineInspectionResponseImpl) then) =
      __$$MachineInspectionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, MachineInspectionModel data});

  @override
  $MachineInspectionModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$MachineInspectionResponseImplCopyWithImpl<$Res>
    extends _$MachineInspectionResponseCopyWithImpl<$Res,
        _$MachineInspectionResponseImpl>
    implements _$$MachineInspectionResponseImplCopyWith<$Res> {
  __$$MachineInspectionResponseImplCopyWithImpl(
      _$MachineInspectionResponseImpl _value,
      $Res Function(_$MachineInspectionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MachineInspectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$MachineInspectionResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MachineInspectionModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MachineInspectionResponseImpl
    with DiagnosticableTreeMixin
    implements _MachineInspectionResponse {
  const _$MachineInspectionResponseImpl(
      {required this.status, required this.data});

  factory _$MachineInspectionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MachineInspectionResponseImplFromJson(json);

  @override
  final bool status;
  @override
  final MachineInspectionModel data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MachineInspectionResponse(status: $status, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MachineInspectionResponse'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MachineInspectionResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of MachineInspectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MachineInspectionResponseImplCopyWith<_$MachineInspectionResponseImpl>
      get copyWith => __$$MachineInspectionResponseImplCopyWithImpl<
          _$MachineInspectionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MachineInspectionResponseImplToJson(
      this,
    );
  }
}

abstract class _MachineInspectionResponse implements MachineInspectionResponse {
  const factory _MachineInspectionResponse(
          {required final bool status,
          required final MachineInspectionModel data}) =
      _$MachineInspectionResponseImpl;

  factory _MachineInspectionResponse.fromJson(Map<String, dynamic> json) =
      _$MachineInspectionResponseImpl.fromJson;

  @override
  bool get status;
  @override
  MachineInspectionModel get data;

  /// Create a copy of MachineInspectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MachineInspectionResponseImplCopyWith<_$MachineInspectionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MachineInspectionData _$MachineInspectionDataFromJson(
    Map<String, dynamic> json) {
  return _MachineInspectionData.fromJson(json);
}

/// @nodoc
mixin _$MachineInspectionData {
  MachineInspectionModel get item => throw _privateConstructorUsedError;

  /// Serializes this MachineInspectionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MachineInspectionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MachineInspectionDataCopyWith<MachineInspectionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineInspectionDataCopyWith<$Res> {
  factory $MachineInspectionDataCopyWith(MachineInspectionData value,
          $Res Function(MachineInspectionData) then) =
      _$MachineInspectionDataCopyWithImpl<$Res, MachineInspectionData>;
  @useResult
  $Res call({MachineInspectionModel item});

  $MachineInspectionModelCopyWith<$Res> get item;
}

/// @nodoc
class _$MachineInspectionDataCopyWithImpl<$Res,
        $Val extends MachineInspectionData>
    implements $MachineInspectionDataCopyWith<$Res> {
  _$MachineInspectionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MachineInspectionData
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
              as MachineInspectionModel,
    ) as $Val);
  }

  /// Create a copy of MachineInspectionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MachineInspectionModelCopyWith<$Res> get item {
    return $MachineInspectionModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MachineInspectionDataImplCopyWith<$Res>
    implements $MachineInspectionDataCopyWith<$Res> {
  factory _$$MachineInspectionDataImplCopyWith(
          _$MachineInspectionDataImpl value,
          $Res Function(_$MachineInspectionDataImpl) then) =
      __$$MachineInspectionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MachineInspectionModel item});

  @override
  $MachineInspectionModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$MachineInspectionDataImplCopyWithImpl<$Res>
    extends _$MachineInspectionDataCopyWithImpl<$Res,
        _$MachineInspectionDataImpl>
    implements _$$MachineInspectionDataImplCopyWith<$Res> {
  __$$MachineInspectionDataImplCopyWithImpl(_$MachineInspectionDataImpl _value,
      $Res Function(_$MachineInspectionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MachineInspectionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$MachineInspectionDataImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as MachineInspectionModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MachineInspectionDataImpl
    with DiagnosticableTreeMixin
    implements _MachineInspectionData {
  const _$MachineInspectionDataImpl({required this.item});

  factory _$MachineInspectionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MachineInspectionDataImplFromJson(json);

  @override
  final MachineInspectionModel item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MachineInspectionData(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MachineInspectionData'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MachineInspectionDataImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of MachineInspectionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MachineInspectionDataImplCopyWith<_$MachineInspectionDataImpl>
      get copyWith => __$$MachineInspectionDataImplCopyWithImpl<
          _$MachineInspectionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MachineInspectionDataImplToJson(
      this,
    );
  }
}

abstract class _MachineInspectionData implements MachineInspectionData {
  const factory _MachineInspectionData(
          {required final MachineInspectionModel item}) =
      _$MachineInspectionDataImpl;

  factory _MachineInspectionData.fromJson(Map<String, dynamic> json) =
      _$MachineInspectionDataImpl.fromJson;

  @override
  MachineInspectionModel get item;

  /// Create a copy of MachineInspectionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MachineInspectionDataImplCopyWith<_$MachineInspectionDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MachineInspectionModel _$MachineInspectionModelFromJson(
    Map<String, dynamic> json) {
  return _MachineInspectionModel.fromJson(json);
}

/// @nodoc
mixin _$MachineInspectionModel {
  String get machineId => throw _privateConstructorUsedError;
  MachineModel get machine => throw _privateConstructorUsedError;
  List<InspectionitemMachineGetModel> get item =>
      throw _privateConstructorUsedError;

  /// Serializes this MachineInspectionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MachineInspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MachineInspectionModelCopyWith<MachineInspectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineInspectionModelCopyWith<$Res> {
  factory $MachineInspectionModelCopyWith(MachineInspectionModel value,
          $Res Function(MachineInspectionModel) then) =
      _$MachineInspectionModelCopyWithImpl<$Res, MachineInspectionModel>;
  @useResult
  $Res call(
      {String machineId,
      MachineModel machine,
      List<InspectionitemMachineGetModel> item});

  $MachineModelCopyWith<$Res> get machine;
}

/// @nodoc
class _$MachineInspectionModelCopyWithImpl<$Res,
        $Val extends MachineInspectionModel>
    implements $MachineInspectionModelCopyWith<$Res> {
  _$MachineInspectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MachineInspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? machine = null,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      machine: null == machine
          ? _value.machine
          : machine // ignore: cast_nullable_to_non_nullable
              as MachineModel,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<InspectionitemMachineGetModel>,
    ) as $Val);
  }

  /// Create a copy of MachineInspectionModel
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
abstract class _$$MachineInspectionModelImplCopyWith<$Res>
    implements $MachineInspectionModelCopyWith<$Res> {
  factory _$$MachineInspectionModelImplCopyWith(
          _$MachineInspectionModelImpl value,
          $Res Function(_$MachineInspectionModelImpl) then) =
      __$$MachineInspectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String machineId,
      MachineModel machine,
      List<InspectionitemMachineGetModel> item});

  @override
  $MachineModelCopyWith<$Res> get machine;
}

/// @nodoc
class __$$MachineInspectionModelImplCopyWithImpl<$Res>
    extends _$MachineInspectionModelCopyWithImpl<$Res,
        _$MachineInspectionModelImpl>
    implements _$$MachineInspectionModelImplCopyWith<$Res> {
  __$$MachineInspectionModelImplCopyWithImpl(
      _$MachineInspectionModelImpl _value,
      $Res Function(_$MachineInspectionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MachineInspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? machine = null,
    Object? item = null,
  }) {
    return _then(_$MachineInspectionModelImpl(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      machine: null == machine
          ? _value.machine
          : machine // ignore: cast_nullable_to_non_nullable
              as MachineModel,
      item: null == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<InspectionitemMachineGetModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MachineInspectionModelImpl
    with DiagnosticableTreeMixin
    implements _MachineInspectionModel {
  const _$MachineInspectionModelImpl(
      {required this.machineId,
      required this.machine,
      required final List<InspectionitemMachineGetModel> item})
      : _item = item;

  factory _$MachineInspectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MachineInspectionModelImplFromJson(json);

  @override
  final String machineId;
  @override
  final MachineModel machine;
  final List<InspectionitemMachineGetModel> _item;
  @override
  List<InspectionitemMachineGetModel> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MachineInspectionModel(machineId: $machineId, machine: $machine, item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MachineInspectionModel'))
      ..add(DiagnosticsProperty('machineId', machineId))
      ..add(DiagnosticsProperty('machine', machine))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MachineInspectionModelImpl &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.machine, machine) || other.machine == machine) &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, machineId, machine,
      const DeepCollectionEquality().hash(_item));

  /// Create a copy of MachineInspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MachineInspectionModelImplCopyWith<_$MachineInspectionModelImpl>
      get copyWith => __$$MachineInspectionModelImplCopyWithImpl<
          _$MachineInspectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MachineInspectionModelImplToJson(
      this,
    );
  }
}

abstract class _MachineInspectionModel implements MachineInspectionModel {
  const factory _MachineInspectionModel(
          {required final String machineId,
          required final MachineModel machine,
          required final List<InspectionitemMachineGetModel> item}) =
      _$MachineInspectionModelImpl;

  factory _MachineInspectionModel.fromJson(Map<String, dynamic> json) =
      _$MachineInspectionModelImpl.fromJson;

  @override
  String get machineId;
  @override
  MachineModel get machine;
  @override
  List<InspectionitemMachineGetModel> get item;

  /// Create a copy of MachineInspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MachineInspectionModelImplCopyWith<_$MachineInspectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
