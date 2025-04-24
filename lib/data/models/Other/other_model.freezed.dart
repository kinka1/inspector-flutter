// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtherResponse _$OtherResponseFromJson(Map<String, dynamic> json) {
  return _OtherResponse.fromJson(json);
}

/// @nodoc
mixin _$OtherResponse {
  bool get status => throw _privateConstructorUsedError;
  OtherData get data => throw _privateConstructorUsedError;

  /// Serializes this OtherResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtherResponseCopyWith<OtherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherResponseCopyWith<$Res> {
  factory $OtherResponseCopyWith(
          OtherResponse value, $Res Function(OtherResponse) then) =
      _$OtherResponseCopyWithImpl<$Res, OtherResponse>;
  @useResult
  $Res call({bool status, OtherData data});

  $OtherDataCopyWith<$Res> get data;
}

/// @nodoc
class _$OtherResponseCopyWithImpl<$Res, $Val extends OtherResponse>
    implements $OtherResponseCopyWith<$Res> {
  _$OtherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtherResponse
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
              as OtherData,
    ) as $Val);
  }

  /// Create a copy of OtherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OtherDataCopyWith<$Res> get data {
    return $OtherDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtherResponseImplCopyWith<$Res>
    implements $OtherResponseCopyWith<$Res> {
  factory _$$OtherResponseImplCopyWith(
          _$OtherResponseImpl value, $Res Function(_$OtherResponseImpl) then) =
      __$$OtherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, OtherData data});

  @override
  $OtherDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$OtherResponseImplCopyWithImpl<$Res>
    extends _$OtherResponseCopyWithImpl<$Res, _$OtherResponseImpl>
    implements _$$OtherResponseImplCopyWith<$Res> {
  __$$OtherResponseImplCopyWithImpl(
      _$OtherResponseImpl _value, $Res Function(_$OtherResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$OtherResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OtherData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherResponseImpl implements _OtherResponse {
  const _$OtherResponseImpl({required this.status, required this.data});

  factory _$OtherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherResponseImplFromJson(json);

  @override
  final bool status;
  @override
  final OtherData data;

  @override
  String toString() {
    return 'OtherResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of OtherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherResponseImplCopyWith<_$OtherResponseImpl> get copyWith =>
      __$$OtherResponseImplCopyWithImpl<_$OtherResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherResponseImplToJson(
      this,
    );
  }
}

abstract class _OtherResponse implements OtherResponse {
  const factory _OtherResponse(
      {required final bool status,
      required final OtherData data}) = _$OtherResponseImpl;

  factory _OtherResponse.fromJson(Map<String, dynamic> json) =
      _$OtherResponseImpl.fromJson;

  @override
  bool get status;
  @override
  OtherData get data;

  /// Create a copy of OtherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtherResponseImplCopyWith<_$OtherResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherData _$OtherDataFromJson(Map<String, dynamic> json) {
  return _OtherData.fromJson(json);
}

/// @nodoc
mixin _$OtherData {
  OtherModel get item => throw _privateConstructorUsedError;

  /// Serializes this OtherData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtherDataCopyWith<OtherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherDataCopyWith<$Res> {
  factory $OtherDataCopyWith(OtherData value, $Res Function(OtherData) then) =
      _$OtherDataCopyWithImpl<$Res, OtherData>;
  @useResult
  $Res call({OtherModel item});

  $OtherModelCopyWith<$Res> get item;
}

/// @nodoc
class _$OtherDataCopyWithImpl<$Res, $Val extends OtherData>
    implements $OtherDataCopyWith<$Res> {
  _$OtherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtherData
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
              as OtherModel,
    ) as $Val);
  }

  /// Create a copy of OtherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OtherModelCopyWith<$Res> get item {
    return $OtherModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtherDataImplCopyWith<$Res>
    implements $OtherDataCopyWith<$Res> {
  factory _$$OtherDataImplCopyWith(
          _$OtherDataImpl value, $Res Function(_$OtherDataImpl) then) =
      __$$OtherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OtherModel item});

  @override
  $OtherModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$OtherDataImplCopyWithImpl<$Res>
    extends _$OtherDataCopyWithImpl<$Res, _$OtherDataImpl>
    implements _$$OtherDataImplCopyWith<$Res> {
  __$$OtherDataImplCopyWithImpl(
      _$OtherDataImpl _value, $Res Function(_$OtherDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$OtherDataImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as OtherModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherDataImpl implements _OtherData {
  const _$OtherDataImpl({required this.item});

  factory _$OtherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherDataImplFromJson(json);

  @override
  final OtherModel item;

  @override
  String toString() {
    return 'OtherData(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherDataImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of OtherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherDataImplCopyWith<_$OtherDataImpl> get copyWith =>
      __$$OtherDataImplCopyWithImpl<_$OtherDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherDataImplToJson(
      this,
    );
  }
}

abstract class _OtherData implements OtherData {
  const factory _OtherData({required final OtherModel item}) = _$OtherDataImpl;

  factory _OtherData.fromJson(Map<String, dynamic> json) =
      _$OtherDataImpl.fromJson;

  @override
  OtherModel get item;

  /// Create a copy of OtherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtherDataImplCopyWith<_$OtherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherModel _$OtherModelFromJson(Map<String, dynamic> json) {
  return _OtherModel.fromJson(json);
}

/// @nodoc
mixin _$OtherModel {
  int get otherId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get resultId => throw _privateConstructorUsedError;

  /// Serializes this OtherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtherModelCopyWith<OtherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherModelCopyWith<$Res> {
  factory $OtherModelCopyWith(
          OtherModel value, $Res Function(OtherModel) then) =
      _$OtherModelCopyWithImpl<$Res, OtherModel>;
  @useResult
  $Res call({int otherId, String description, String status, int resultId});
}

/// @nodoc
class _$OtherModelCopyWithImpl<$Res, $Val extends OtherModel>
    implements $OtherModelCopyWith<$Res> {
  _$OtherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otherId = null,
    Object? description = null,
    Object? status = null,
    Object? resultId = null,
  }) {
    return _then(_value.copyWith(
      otherId: null == otherId
          ? _value.otherId
          : otherId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtherModelImplCopyWith<$Res>
    implements $OtherModelCopyWith<$Res> {
  factory _$$OtherModelImplCopyWith(
          _$OtherModelImpl value, $Res Function(_$OtherModelImpl) then) =
      __$$OtherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int otherId, String description, String status, int resultId});
}

/// @nodoc
class __$$OtherModelImplCopyWithImpl<$Res>
    extends _$OtherModelCopyWithImpl<$Res, _$OtherModelImpl>
    implements _$$OtherModelImplCopyWith<$Res> {
  __$$OtherModelImplCopyWithImpl(
      _$OtherModelImpl _value, $Res Function(_$OtherModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otherId = null,
    Object? description = null,
    Object? status = null,
    Object? resultId = null,
  }) {
    return _then(_$OtherModelImpl(
      otherId: null == otherId
          ? _value.otherId
          : otherId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherModelImpl implements _OtherModel {
  const _$OtherModelImpl(
      {required this.otherId,
      required this.description,
      required this.status,
      required this.resultId});

  factory _$OtherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherModelImplFromJson(json);

  @override
  final int otherId;
  @override
  final String description;
  @override
  final String status;
  @override
  final int resultId;

  @override
  String toString() {
    return 'OtherModel(otherId: $otherId, description: $description, status: $status, resultId: $resultId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherModelImpl &&
            (identical(other.otherId, otherId) || other.otherId == otherId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.resultId, resultId) ||
                other.resultId == resultId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, otherId, description, status, resultId);

  /// Create a copy of OtherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherModelImplCopyWith<_$OtherModelImpl> get copyWith =>
      __$$OtherModelImplCopyWithImpl<_$OtherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherModelImplToJson(
      this,
    );
  }
}

abstract class _OtherModel implements OtherModel {
  const factory _OtherModel(
      {required final int otherId,
      required final String description,
      required final String status,
      required final int resultId}) = _$OtherModelImpl;

  factory _OtherModel.fromJson(Map<String, dynamic> json) =
      _$OtherModelImpl.fromJson;

  @override
  int get otherId;
  @override
  String get description;
  @override
  String get status;
  @override
  int get resultId;

  /// Create a copy of OtherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtherModelImplCopyWith<_$OtherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherAddModel _$OtherAddModelFromJson(Map<String, dynamic> json) {
  return _OtherAddModel.fromJson(json);
}

/// @nodoc
mixin _$OtherAddModel {
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  int get resultId => throw _privateConstructorUsedError;

  /// Serializes this OtherAddModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtherAddModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtherAddModelCopyWith<OtherAddModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherAddModelCopyWith<$Res> {
  factory $OtherAddModelCopyWith(
          OtherAddModel value, $Res Function(OtherAddModel) then) =
      _$OtherAddModelCopyWithImpl<$Res, OtherAddModel>;
  @useResult
  $Res call({String description, String status, String date, int resultId});
}

/// @nodoc
class _$OtherAddModelCopyWithImpl<$Res, $Val extends OtherAddModel>
    implements $OtherAddModelCopyWith<$Res> {
  _$OtherAddModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtherAddModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? status = null,
    Object? date = null,
    Object? resultId = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtherAddModelImplCopyWith<$Res>
    implements $OtherAddModelCopyWith<$Res> {
  factory _$$OtherAddModelImplCopyWith(
          _$OtherAddModelImpl value, $Res Function(_$OtherAddModelImpl) then) =
      __$$OtherAddModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String status, String date, int resultId});
}

/// @nodoc
class __$$OtherAddModelImplCopyWithImpl<$Res>
    extends _$OtherAddModelCopyWithImpl<$Res, _$OtherAddModelImpl>
    implements _$$OtherAddModelImplCopyWith<$Res> {
  __$$OtherAddModelImplCopyWithImpl(
      _$OtherAddModelImpl _value, $Res Function(_$OtherAddModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtherAddModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? status = null,
    Object? date = null,
    Object? resultId = null,
  }) {
    return _then(_$OtherAddModelImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherAddModelImpl implements _OtherAddModel {
  const _$OtherAddModelImpl(
      {required this.description,
      required this.status,
      required this.date,
      required this.resultId});

  factory _$OtherAddModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherAddModelImplFromJson(json);

  @override
  final String description;
  @override
  final String status;
  @override
  final String date;
  @override
  final int resultId;

  @override
  String toString() {
    return 'OtherAddModel(description: $description, status: $status, date: $date, resultId: $resultId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherAddModelImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.resultId, resultId) ||
                other.resultId == resultId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, status, date, resultId);

  /// Create a copy of OtherAddModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherAddModelImplCopyWith<_$OtherAddModelImpl> get copyWith =>
      __$$OtherAddModelImplCopyWithImpl<_$OtherAddModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherAddModelImplToJson(
      this,
    );
  }
}

abstract class _OtherAddModel implements OtherAddModel {
  const factory _OtherAddModel(
      {required final String description,
      required final String status,
      required final String date,
      required final int resultId}) = _$OtherAddModelImpl;

  factory _OtherAddModel.fromJson(Map<String, dynamic> json) =
      _$OtherAddModelImpl.fromJson;

  @override
  String get description;
  @override
  String get status;
  @override
  String get date;
  @override
  int get resultId;

  /// Create a copy of OtherAddModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtherAddModelImplCopyWith<_$OtherAddModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
