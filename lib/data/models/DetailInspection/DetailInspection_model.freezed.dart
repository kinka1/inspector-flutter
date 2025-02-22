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
  DetailInspectionGetModel get item => throw _privateConstructorUsedError;

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
  $Res call({DetailInspectionGetModel item});

  $DetailInspectionGetModelCopyWith<$Res> get item;
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
              as DetailInspectionGetModel,
    ) as $Val);
  }

  /// Create a copy of DetailInspectionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailInspectionGetModelCopyWith<$Res> get item {
    return $DetailInspectionGetModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
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
  $Res call({DetailInspectionGetModel item});

  @override
  $DetailInspectionGetModelCopyWith<$Res> get item;
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
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as DetailInspectionGetModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailInspectionDataImpl
    with DiagnosticableTreeMixin
    implements _DetailInspectionData {
  const _$DetailInspectionDataImpl({required this.item});

  factory _$DetailInspectionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailInspectionDataImplFromJson(json);

  @override
  final DetailInspectionGetModel item;

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
            (identical(other.item, item) || other.item == item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, item);

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
          {required final DetailInspectionGetModel item}) =
      _$DetailInspectionDataImpl;

  factory _DetailInspectionData.fromJson(Map<String, dynamic> json) =
      _$DetailInspectionDataImpl.fromJson;

  @override
  DetailInspectionGetModel get item;

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
  String get itemName => throw _privateConstructorUsedError;
  String get specification => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String get frequency => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get machineId => throw _privateConstructorUsedError;
  String get imageName => throw _privateConstructorUsedError;

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
      {String itemName,
      String specification,
      String method,
      String frequency,
      int number,
      String status,
      String description,
      int machineId,
      String imageName});
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
    Object? itemName = null,
    Object? specification = null,
    Object? method = null,
    Object? frequency = null,
    Object? number = null,
    Object? status = null,
    Object? description = null,
    Object? machineId = null,
    Object? imageName = null,
  }) {
    return _then(_value.copyWith(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      specification: null == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as int,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
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
      {String itemName,
      String specification,
      String method,
      String frequency,
      int number,
      String status,
      String description,
      int machineId,
      String imageName});
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
    Object? itemName = null,
    Object? specification = null,
    Object? method = null,
    Object? frequency = null,
    Object? number = null,
    Object? status = null,
    Object? description = null,
    Object? machineId = null,
    Object? imageName = null,
  }) {
    return _then(_$DetailInspectionModelImpl(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      specification: null == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as int,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
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
      {required this.itemName,
      required this.specification,
      required this.method,
      required this.frequency,
      required this.number,
      required this.status,
      required this.description,
      required this.machineId,
      required this.imageName});

  factory _$DetailInspectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailInspectionModelImplFromJson(json);

  @override
  final String itemName;
  @override
  final String specification;
  @override
  final String method;
  @override
  final String frequency;
  @override
  final int number;
  @override
  final String status;
  @override
  final String description;
  @override
  final int machineId;
  @override
  final String imageName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailInspectionModel(itemName: $itemName, specification: $specification, method: $method, frequency: $frequency, number: $number, status: $status, description: $description, machineId: $machineId, imageName: $imageName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailInspectionModel'))
      ..add(DiagnosticsProperty('itemName', itemName))
      ..add(DiagnosticsProperty('specification', specification))
      ..add(DiagnosticsProperty('method', method))
      ..add(DiagnosticsProperty('frequency', frequency))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('machineId', machineId))
      ..add(DiagnosticsProperty('imageName', imageName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailInspectionModelImpl &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.imageName, imageName) ||
                other.imageName == imageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemName, specification, method,
      frequency, number, status, description, machineId, imageName);

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
      {required final String itemName,
      required final String specification,
      required final String method,
      required final String frequency,
      required final int number,
      required final String status,
      required final String description,
      required final int machineId,
      required final String imageName}) = _$DetailInspectionModelImpl;

  factory _DetailInspectionModel.fromJson(Map<String, dynamic> json) =
      _$DetailInspectionModelImpl.fromJson;

  @override
  String get itemName;
  @override
  String get specification;
  @override
  String get method;
  @override
  String get frequency;
  @override
  int get number;
  @override
  String get status;
  @override
  String get description;
  @override
  int get machineId;
  @override
  String get imageName;

  /// Create a copy of DetailInspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailInspectionModelImplCopyWith<_$DetailInspectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetailInspectionGetModel _$DetailInspectionGetModelFromJson(
    Map<String, dynamic> json) {
  return _DetailInspectionGetModel.fromJson(json);
}

/// @nodoc
mixin _$DetailInspectionGetModel {
  int get id => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String get specification => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String get frequency => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get machineId => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  DateTime get tanggal => throw _privateConstructorUsedError;

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
      String itemName,
      String specification,
      String method,
      String frequency,
      int number,
      String status,
      String description,
      int machineId,
      String imagePath,
      DateTime tanggal});
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
    Object? itemName = null,
    Object? specification = null,
    Object? method = null,
    Object? frequency = null,
    Object? number = null,
    Object? status = null,
    Object? description = null,
    Object? machineId = null,
    Object? imagePath = null,
    Object? tanggal = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      specification: null == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
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
      String itemName,
      String specification,
      String method,
      String frequency,
      int number,
      String status,
      String description,
      int machineId,
      String imagePath,
      DateTime tanggal});
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
    Object? itemName = null,
    Object? specification = null,
    Object? method = null,
    Object? frequency = null,
    Object? number = null,
    Object? status = null,
    Object? description = null,
    Object? machineId = null,
    Object? imagePath = null,
    Object? tanggal = null,
  }) {
    return _then(_$DetailInspectionGetModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      specification: null == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      required this.itemName,
      required this.specification,
      required this.method,
      required this.frequency,
      required this.number,
      required this.status,
      required this.description,
      required this.machineId,
      required this.imagePath,
      required this.tanggal});

  factory _$DetailInspectionGetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailInspectionGetModelImplFromJson(json);

  @override
  final int id;
  @override
  final String itemName;
  @override
  final String specification;
  @override
  final String method;
  @override
  final String frequency;
  @override
  final int number;
  @override
  final String status;
  @override
  final String description;
  @override
  final int machineId;
  @override
  final String imagePath;
  @override
  final DateTime tanggal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailInspectionGetModel(id: $id, itemName: $itemName, specification: $specification, method: $method, frequency: $frequency, number: $number, status: $status, description: $description, machineId: $machineId, imagePath: $imagePath, tanggal: $tanggal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailInspectionGetModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('itemName', itemName))
      ..add(DiagnosticsProperty('specification', specification))
      ..add(DiagnosticsProperty('method', method))
      ..add(DiagnosticsProperty('frequency', frequency))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('machineId', machineId))
      ..add(DiagnosticsProperty('imagePath', imagePath))
      ..add(DiagnosticsProperty('tanggal', tanggal));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailInspectionGetModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      itemName,
      specification,
      method,
      frequency,
      number,
      status,
      description,
      machineId,
      imagePath,
      tanggal);

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
      required final String itemName,
      required final String specification,
      required final String method,
      required final String frequency,
      required final int number,
      required final String status,
      required final String description,
      required final int machineId,
      required final String imagePath,
      required final DateTime tanggal}) = _$DetailInspectionGetModelImpl;

  factory _DetailInspectionGetModel.fromJson(Map<String, dynamic> json) =
      _$DetailInspectionGetModelImpl.fromJson;

  @override
  int get id;
  @override
  String get itemName;
  @override
  String get specification;
  @override
  String get method;
  @override
  String get frequency;
  @override
  int get number;
  @override
  String get status;
  @override
  String get description;
  @override
  int get machineId;
  @override
  String get imagePath;
  @override
  DateTime get tanggal;

  /// Create a copy of DetailInspectionGetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailInspectionGetModelImplCopyWith<_$DetailInspectionGetModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
