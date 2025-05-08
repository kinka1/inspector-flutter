// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DetailInspection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailInspectionResponse _$DetailInspectionResponseFromJson(
    Map<String, dynamic> json) {
  return _DetailInspectionResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailInspectionResponse {
  bool get status => throw _privateConstructorUsedError;
  DetailInspectionData get data => throw _privateConstructorUsedError;

  /// Serializes this DetailInspectionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailInspectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailInspectionResponseCopyWith<DetailInspectionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailInspectionResponseCopyWith<$Res> {
  factory $DetailInspectionResponseCopyWith(DetailInspectionResponse value,
          $Res Function(DetailInspectionResponse) then) =
      _$DetailInspectionResponseCopyWithImpl<$Res, DetailInspectionResponse>;
  @useResult
  $Res call({bool status, DetailInspectionData data});

  $DetailInspectionDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DetailInspectionResponseCopyWithImpl<$Res,
        $Val extends DetailInspectionResponse>
    implements $DetailInspectionResponseCopyWith<$Res> {
  _$DetailInspectionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailInspectionResponse
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
              as DetailInspectionData,
    ) as $Val);
  }

  /// Create a copy of DetailInspectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailInspectionDataCopyWith<$Res> get data {
    return $DetailInspectionDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailInspectionResponseImplCopyWith<$Res>
    implements $DetailInspectionResponseCopyWith<$Res> {
  factory _$$DetailInspectionResponseImplCopyWith(
          _$DetailInspectionResponseImpl value,
          $Res Function(_$DetailInspectionResponseImpl) then) =
      __$$DetailInspectionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, DetailInspectionData data});

  @override
  $DetailInspectionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DetailInspectionResponseImplCopyWithImpl<$Res>
    extends _$DetailInspectionResponseCopyWithImpl<$Res,
        _$DetailInspectionResponseImpl>
    implements _$$DetailInspectionResponseImplCopyWith<$Res> {
  __$$DetailInspectionResponseImplCopyWithImpl(
      _$DetailInspectionResponseImpl _value,
      $Res Function(_$DetailInspectionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$DetailInspectionResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailInspectionData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailInspectionResponseImpl
    with DiagnosticableTreeMixin
    implements _DetailInspectionResponse {
  const _$DetailInspectionResponseImpl(
      {required this.status, required this.data});

  factory _$DetailInspectionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailInspectionResponseImplFromJson(json);

  @override
  final bool status;
  @override
  final DetailInspectionData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailInspectionResponse(status: $status, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailInspectionResponse'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailInspectionResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of DetailInspectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailInspectionResponseImplCopyWith<_$DetailInspectionResponseImpl>
      get copyWith => __$$DetailInspectionResponseImplCopyWithImpl<
          _$DetailInspectionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailInspectionResponseImplToJson(
      this,
    );
  }
}

abstract class _DetailInspectionResponse implements DetailInspectionResponse {
  const factory _DetailInspectionResponse(
          {required final bool status,
          required final DetailInspectionData data}) =
      _$DetailInspectionResponseImpl;

  factory _DetailInspectionResponse.fromJson(Map<String, dynamic> json) =
      _$DetailInspectionResponseImpl.fromJson;

  @override
  bool get status;
  @override
  DetailInspectionData get data;

  /// Create a copy of DetailInspectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailInspectionResponseImplCopyWith<_$DetailInspectionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetailInspectionData _$DetailInspectionDataFromJson(Map<String, dynamic> json) {
  return _DetailInspectionData.fromJson(json);
}

/// @nodoc
mixin _$DetailInspectionData {
  List<DetailInspectionGetModel> get item => throw _privateConstructorUsedError;

  /// Serializes this DetailInspectionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailInspectionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailInspectionDataCopyWith<DetailInspectionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailInspectionDataCopyWith<$Res> {
  factory $DetailInspectionDataCopyWith(DetailInspectionData value,
          $Res Function(DetailInspectionData) then) =
      _$DetailInspectionDataCopyWithImpl<$Res, DetailInspectionData>;
  @useResult
  $Res call({List<DetailInspectionGetModel> item});
}

/// @nodoc
class _$DetailInspectionDataCopyWithImpl<$Res,
        $Val extends DetailInspectionData>
    implements $DetailInspectionDataCopyWith<$Res> {
  _$DetailInspectionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailInspectionData
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
              as List<DetailInspectionGetModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailInspectionDataImplCopyWith<$Res>
    implements $DetailInspectionDataCopyWith<$Res> {
  factory _$$DetailInspectionDataImplCopyWith(_$DetailInspectionDataImpl value,
          $Res Function(_$DetailInspectionDataImpl) then) =
      __$$DetailInspectionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DetailInspectionGetModel> item});
}

/// @nodoc
class __$$DetailInspectionDataImplCopyWithImpl<$Res>
    extends _$DetailInspectionDataCopyWithImpl<$Res, _$DetailInspectionDataImpl>
    implements _$$DetailInspectionDataImplCopyWith<$Res> {
  __$$DetailInspectionDataImplCopyWithImpl(_$DetailInspectionDataImpl _value,
      $Res Function(_$DetailInspectionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$DetailInspectionDataImpl(
      item: null == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<DetailInspectionGetModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailInspectionDataImpl
    with DiagnosticableTreeMixin
    implements _DetailInspectionData {
  const _$DetailInspectionDataImpl(
      {required final List<DetailInspectionGetModel> item})
      : _item = item;

  factory _$DetailInspectionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailInspectionDataImplFromJson(json);

  final List<DetailInspectionGetModel> _item;
  @override
  List<DetailInspectionGetModel> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailInspectionData(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailInspectionData'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailInspectionDataImpl &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_item));

  /// Create a copy of DetailInspectionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailInspectionDataImplCopyWith<_$DetailInspectionDataImpl>
      get copyWith =>
          __$$DetailInspectionDataImplCopyWithImpl<_$DetailInspectionDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailInspectionDataImplToJson(
      this,
    );
  }
}

abstract class _DetailInspectionData implements DetailInspectionData {
  const factory _DetailInspectionData(
          {required final List<DetailInspectionGetModel> item}) =
      _$DetailInspectionDataImpl;

  factory _DetailInspectionData.fromJson(Map<String, dynamic> json) =
      _$DetailInspectionDataImpl.fromJson;

  @override
  List<DetailInspectionGetModel> get item;

  /// Create a copy of DetailInspectionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailInspectionDataImplCopyWith<_$DetailInspectionDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetailInspectionModel _$DetailInspectionModelFromJson(
    Map<String, dynamic> json) {
  return _DetailInspectionModel.fromJson(json);
}

/// @nodoc
mixin _$DetailInspectionModel {
  int get id => throw _privateConstructorUsedError;
  String get machineInspectionId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get tanggal => throw _privateConstructorUsedError;
  String get resultId => throw _privateConstructorUsedError;

  /// Serializes this DetailInspectionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailInspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailInspectionModelCopyWith<DetailInspectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailInspectionModelCopyWith<$Res> {
  factory $DetailInspectionModelCopyWith(DetailInspectionModel value,
          $Res Function(DetailInspectionModel) then) =
      _$DetailInspectionModelCopyWithImpl<$Res, DetailInspectionModel>;
  @useResult
  $Res call(
      {int id,
      String machineInspectionId,
      String description,
      String status,
      DateTime tanggal,
      String resultId});
}

/// @nodoc
class _$DetailInspectionModelCopyWithImpl<$Res,
        $Val extends DetailInspectionModel>
    implements $DetailInspectionModelCopyWith<$Res> {
  _$DetailInspectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailInspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? machineInspectionId = null,
    Object? description = null,
    Object? status = null,
    Object? tanggal = null,
    Object? resultId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      machineInspectionId: null == machineInspectionId
          ? _value.machineInspectionId
          : machineInspectionId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime,
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailInspectionModelImplCopyWith<$Res>
    implements $DetailInspectionModelCopyWith<$Res> {
  factory _$$DetailInspectionModelImplCopyWith(
          _$DetailInspectionModelImpl value,
          $Res Function(_$DetailInspectionModelImpl) then) =
      __$$DetailInspectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String machineInspectionId,
      String description,
      String status,
      DateTime tanggal,
      String resultId});
}

/// @nodoc
class __$$DetailInspectionModelImplCopyWithImpl<$Res>
    extends _$DetailInspectionModelCopyWithImpl<$Res,
        _$DetailInspectionModelImpl>
    implements _$$DetailInspectionModelImplCopyWith<$Res> {
  __$$DetailInspectionModelImplCopyWithImpl(_$DetailInspectionModelImpl _value,
      $Res Function(_$DetailInspectionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? machineInspectionId = null,
    Object? description = null,
    Object? status = null,
    Object? tanggal = null,
    Object? resultId = null,
  }) {
    return _then(_$DetailInspectionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      machineInspectionId: null == machineInspectionId
          ? _value.machineInspectionId
          : machineInspectionId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime,
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailInspectionModelImpl
    with DiagnosticableTreeMixin
    implements _DetailInspectionModel {
  const _$DetailInspectionModelImpl(
      {required this.id,
      required this.machineInspectionId,
      required this.description,
      required this.status,
      required this.tanggal,
      required this.resultId});

  factory _$DetailInspectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailInspectionModelImplFromJson(json);

  @override
  final int id;
  @override
  final String machineInspectionId;
  @override
  final String description;
  @override
  final String status;
  @override
  final DateTime tanggal;
  @override
  final String resultId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailInspectionModel(id: $id, machineInspectionId: $machineInspectionId, description: $description, status: $status, tanggal: $tanggal, resultId: $resultId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailInspectionModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('machineInspectionId', machineInspectionId))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('tanggal', tanggal))
      ..add(DiagnosticsProperty('resultId', resultId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailInspectionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.machineInspectionId, machineInspectionId) ||
                other.machineInspectionId == machineInspectionId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.resultId, resultId) ||
                other.resultId == resultId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, machineInspectionId,
      description, status, tanggal, resultId);

  /// Create a copy of DetailInspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailInspectionModelImplCopyWith<_$DetailInspectionModelImpl>
      get copyWith => __$$DetailInspectionModelImplCopyWithImpl<
          _$DetailInspectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailInspectionModelImplToJson(
      this,
    );
  }
}

abstract class _DetailInspectionModel implements DetailInspectionModel {
  const factory _DetailInspectionModel(
      {required final int id,
      required final String machineInspectionId,
      required final String description,
      required final String status,
      required final DateTime tanggal,
      required final String resultId}) = _$DetailInspectionModelImpl;

  factory _DetailInspectionModel.fromJson(Map<String, dynamic> json) =
      _$DetailInspectionModelImpl.fromJson;

  @override
  int get id;
  @override
  String get machineInspectionId;
  @override
  String get description;
  @override
  String get status;
  @override
  DateTime get tanggal;
  @override
  String get resultId;

  /// Create a copy of DetailInspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailInspectionModelImplCopyWith<_$DetailInspectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetailInspectionModelAdd _$DetailInspectionModelAddFromJson(
    Map<String, dynamic> json) {
  return _DetailInspectionModelAdd.fromJson(json);
}

/// @nodoc
mixin _$DetailInspectionModelAdd {
  int get InspectionId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  int get ResultId => throw _privateConstructorUsedError;

  /// Serializes this DetailInspectionModelAdd to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailInspectionModelAdd
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailInspectionModelAddCopyWith<DetailInspectionModelAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailInspectionModelAddCopyWith<$Res> {
  factory $DetailInspectionModelAddCopyWith(DetailInspectionModelAdd value,
          $Res Function(DetailInspectionModelAdd) then) =
      _$DetailInspectionModelAddCopyWithImpl<$Res, DetailInspectionModelAdd>;
  @useResult
  $Res call({int InspectionId, String status, String remark, int ResultId});
}

/// @nodoc
class _$DetailInspectionModelAddCopyWithImpl<$Res,
        $Val extends DetailInspectionModelAdd>
    implements $DetailInspectionModelAddCopyWith<$Res> {
  _$DetailInspectionModelAddCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailInspectionModelAdd
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? InspectionId = null,
    Object? status = null,
    Object? remark = null,
    Object? ResultId = null,
  }) {
    return _then(_value.copyWith(
      InspectionId: null == InspectionId
          ? _value.InspectionId
          : InspectionId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      ResultId: null == ResultId
          ? _value.ResultId
          : ResultId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailInspectionModelAddImplCopyWith<$Res>
    implements $DetailInspectionModelAddCopyWith<$Res> {
  factory _$$DetailInspectionModelAddImplCopyWith(
          _$DetailInspectionModelAddImpl value,
          $Res Function(_$DetailInspectionModelAddImpl) then) =
      __$$DetailInspectionModelAddImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int InspectionId, String status, String remark, int ResultId});
}

/// @nodoc
class __$$DetailInspectionModelAddImplCopyWithImpl<$Res>
    extends _$DetailInspectionModelAddCopyWithImpl<$Res,
        _$DetailInspectionModelAddImpl>
    implements _$$DetailInspectionModelAddImplCopyWith<$Res> {
  __$$DetailInspectionModelAddImplCopyWithImpl(
      _$DetailInspectionModelAddImpl _value,
      $Res Function(_$DetailInspectionModelAddImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionModelAdd
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? InspectionId = null,
    Object? status = null,
    Object? remark = null,
    Object? ResultId = null,
  }) {
    return _then(_$DetailInspectionModelAddImpl(
      InspectionId: null == InspectionId
          ? _value.InspectionId
          : InspectionId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      ResultId: null == ResultId
          ? _value.ResultId
          : ResultId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailInspectionModelAddImpl
    with DiagnosticableTreeMixin
    implements _DetailInspectionModelAdd {
  const _$DetailInspectionModelAddImpl(
      {required this.InspectionId,
      required this.status,
      required this.remark,
      required this.ResultId});

  factory _$DetailInspectionModelAddImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailInspectionModelAddImplFromJson(json);

  @override
  final int InspectionId;
  @override
  final String status;
  @override
  final String remark;
  @override
  final int ResultId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailInspectionModelAdd(InspectionId: $InspectionId, status: $status, remark: $remark, ResultId: $ResultId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailInspectionModelAdd'))
      ..add(DiagnosticsProperty('InspectionId', InspectionId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('remark', remark))
      ..add(DiagnosticsProperty('ResultId', ResultId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailInspectionModelAddImpl &&
            (identical(other.InspectionId, InspectionId) ||
                other.InspectionId == InspectionId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.ResultId, ResultId) ||
                other.ResultId == ResultId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, InspectionId, status, remark, ResultId);

  /// Create a copy of DetailInspectionModelAdd
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailInspectionModelAddImplCopyWith<_$DetailInspectionModelAddImpl>
      get copyWith => __$$DetailInspectionModelAddImplCopyWithImpl<
          _$DetailInspectionModelAddImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailInspectionModelAddImplToJson(
      this,
    );
  }
}

abstract class _DetailInspectionModelAdd implements DetailInspectionModelAdd {
  const factory _DetailInspectionModelAdd(
      {required final int InspectionId,
      required final String status,
      required final String remark,
      required final int ResultId}) = _$DetailInspectionModelAddImpl;

  factory _DetailInspectionModelAdd.fromJson(Map<String, dynamic> json) =
      _$DetailInspectionModelAddImpl.fromJson;

  @override
  int get InspectionId;
  @override
  String get status;
  @override
  String get remark;
  @override
  int get ResultId;

  /// Create a copy of DetailInspectionModelAdd
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailInspectionModelAddImplCopyWith<_$DetailInspectionModelAddImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetailInspectionGetModel _$DetailInspectionGetModelFromJson(
    Map<String, dynamic> json) {
  return _DetailInspectionGetModel.fromJson(json);
}

/// @nodoc
mixin _$DetailInspectionGetModel {
  int get id => throw _privateConstructorUsedError;
  InspectionitemModel get inspectionItem => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;

  /// Serializes this DetailInspectionGetModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailInspectionGetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailInspectionGetModelCopyWith<DetailInspectionGetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailInspectionGetModelCopyWith<$Res> {
  factory $DetailInspectionGetModelCopyWith(DetailInspectionGetModel value,
          $Res Function(DetailInspectionGetModel) then) =
      _$DetailInspectionGetModelCopyWithImpl<$Res, DetailInspectionGetModel>;
  @useResult
  $Res call(
      {int id,
      InspectionitemModel inspectionItem,
      String status,
      String remark});

  $InspectionitemModelCopyWith<$Res> get inspectionItem;
}

/// @nodoc
class _$DetailInspectionGetModelCopyWithImpl<$Res,
        $Val extends DetailInspectionGetModel>
    implements $DetailInspectionGetModelCopyWith<$Res> {
  _$DetailInspectionGetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailInspectionGetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inspectionItem = null,
    Object? status = null,
    Object? remark = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inspectionItem: null == inspectionItem
          ? _value.inspectionItem
          : inspectionItem // ignore: cast_nullable_to_non_nullable
              as InspectionitemModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of DetailInspectionGetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InspectionitemModelCopyWith<$Res> get inspectionItem {
    return $InspectionitemModelCopyWith<$Res>(_value.inspectionItem, (value) {
      return _then(_value.copyWith(inspectionItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailInspectionGetModelImplCopyWith<$Res>
    implements $DetailInspectionGetModelCopyWith<$Res> {
  factory _$$DetailInspectionGetModelImplCopyWith(
          _$DetailInspectionGetModelImpl value,
          $Res Function(_$DetailInspectionGetModelImpl) then) =
      __$$DetailInspectionGetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      InspectionitemModel inspectionItem,
      String status,
      String remark});

  @override
  $InspectionitemModelCopyWith<$Res> get inspectionItem;
}

/// @nodoc
class __$$DetailInspectionGetModelImplCopyWithImpl<$Res>
    extends _$DetailInspectionGetModelCopyWithImpl<$Res,
        _$DetailInspectionGetModelImpl>
    implements _$$DetailInspectionGetModelImplCopyWith<$Res> {
  __$$DetailInspectionGetModelImplCopyWithImpl(
      _$DetailInspectionGetModelImpl _value,
      $Res Function(_$DetailInspectionGetModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionGetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inspectionItem = null,
    Object? status = null,
    Object? remark = null,
  }) {
    return _then(_$DetailInspectionGetModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inspectionItem: null == inspectionItem
          ? _value.inspectionItem
          : inspectionItem // ignore: cast_nullable_to_non_nullable
              as InspectionitemModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailInspectionGetModelImpl
    with DiagnosticableTreeMixin
    implements _DetailInspectionGetModel {
  const _$DetailInspectionGetModelImpl(
      {required this.id,
      required this.inspectionItem,
      required this.status,
      required this.remark});

  factory _$DetailInspectionGetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailInspectionGetModelImplFromJson(json);

  @override
  final int id;
  @override
  final InspectionitemModel inspectionItem;
  @override
  final String status;
  @override
  final String remark;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailInspectionGetModel(id: $id, inspectionItem: $inspectionItem, status: $status, remark: $remark)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailInspectionGetModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('inspectionItem', inspectionItem))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('remark', remark));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailInspectionGetModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inspectionItem, inspectionItem) ||
                other.inspectionItem == inspectionItem) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.remark, remark) || other.remark == remark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, inspectionItem, status, remark);

  /// Create a copy of DetailInspectionGetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailInspectionGetModelImplCopyWith<_$DetailInspectionGetModelImpl>
      get copyWith => __$$DetailInspectionGetModelImplCopyWithImpl<
          _$DetailInspectionGetModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailInspectionGetModelImplToJson(
      this,
    );
  }
}

abstract class _DetailInspectionGetModel implements DetailInspectionGetModel {
  const factory _DetailInspectionGetModel(
      {required final int id,
      required final InspectionitemModel inspectionItem,
      required final String status,
      required final String remark}) = _$DetailInspectionGetModelImpl;

  factory _DetailInspectionGetModel.fromJson(Map<String, dynamic> json) =
      _$DetailInspectionGetModelImpl.fromJson;

  @override
  int get id;
  @override
  InspectionitemModel get inspectionItem;
  @override
  String get status;
  @override
  String get remark;

  /// Create a copy of DetailInspectionGetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailInspectionGetModelImplCopyWith<_$DetailInspectionGetModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
