// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'InspectionItem_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InspectionitemResponse _$InspectionitemResponseFromJson(
    Map<String, dynamic> json) {
  return _InspectionitemResponse.fromJson(json);
}

/// @nodoc
mixin _$InspectionitemResponse {
  bool get success => throw _privateConstructorUsedError;
  InspectionitemResponse get data => throw _privateConstructorUsedError;

  /// Serializes this InspectionitemResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InspectionitemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InspectionitemResponseCopyWith<InspectionitemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspectionitemResponseCopyWith<$Res> {
  factory $InspectionitemResponseCopyWith(InspectionitemResponse value,
          $Res Function(InspectionitemResponse) then) =
      _$InspectionitemResponseCopyWithImpl<$Res, InspectionitemResponse>;
  @useResult
  $Res call({bool success, InspectionitemResponse data});

  $InspectionitemResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$InspectionitemResponseCopyWithImpl<$Res,
        $Val extends InspectionitemResponse>
    implements $InspectionitemResponseCopyWith<$Res> {
  _$InspectionitemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InspectionitemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InspectionitemResponse,
    ) as $Val);
  }

  /// Create a copy of InspectionitemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InspectionitemResponseCopyWith<$Res> get data {
    return $InspectionitemResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InspectionitemResponseImplCopyWith<$Res>
    implements $InspectionitemResponseCopyWith<$Res> {
  factory _$$InspectionitemResponseImplCopyWith(
          _$InspectionitemResponseImpl value,
          $Res Function(_$InspectionitemResponseImpl) then) =
      __$$InspectionitemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, InspectionitemResponse data});

  @override
  $InspectionitemResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$InspectionitemResponseImplCopyWithImpl<$Res>
    extends _$InspectionitemResponseCopyWithImpl<$Res,
        _$InspectionitemResponseImpl>
    implements _$$InspectionitemResponseImplCopyWith<$Res> {
  __$$InspectionitemResponseImplCopyWithImpl(
      _$InspectionitemResponseImpl _value,
      $Res Function(_$InspectionitemResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of InspectionitemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$InspectionitemResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InspectionitemResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InspectionitemResponseImpl
    with DiagnosticableTreeMixin
    implements _InspectionitemResponse {
  const _$InspectionitemResponseImpl(
      {required this.success, required this.data});

  factory _$InspectionitemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InspectionitemResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final InspectionitemResponse data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InspectionitemResponse(success: $success, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InspectionitemResponse'))
      ..add(DiagnosticsProperty('success', success))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspectionitemResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of InspectionitemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InspectionitemResponseImplCopyWith<_$InspectionitemResponseImpl>
      get copyWith => __$$InspectionitemResponseImplCopyWithImpl<
          _$InspectionitemResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InspectionitemResponseImplToJson(
      this,
    );
  }
}

abstract class _InspectionitemResponse implements InspectionitemResponse {
  const factory _InspectionitemResponse(
          {required final bool success,
          required final InspectionitemResponse data}) =
      _$InspectionitemResponseImpl;

  factory _InspectionitemResponse.fromJson(Map<String, dynamic> json) =
      _$InspectionitemResponseImpl.fromJson;

  @override
  bool get success;
  @override
  InspectionitemResponse get data;

  /// Create a copy of InspectionitemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InspectionitemResponseImplCopyWith<_$InspectionitemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InspectionitemModel _$InspectionitemModelFromJson(Map<String, dynamic> json) {
  return _InspectionitemModel.fromJson(json);
}

/// @nodoc
mixin _$InspectionitemModel {
  String get id => throw _privateConstructorUsedError;
  String get inspectionItem => throw _privateConstructorUsedError;
  String get specification => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;

  /// Serializes this InspectionitemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InspectionitemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InspectionitemModelCopyWith<InspectionitemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspectionitemModelCopyWith<$Res> {
  factory $InspectionitemModelCopyWith(
          InspectionitemModel value, $Res Function(InspectionitemModel) then) =
      _$InspectionitemModelCopyWithImpl<$Res, InspectionitemModel>;
  @useResult
  $Res call(
      {String id,
      String inspectionItem,
      String specification,
      String status,
      String period});
}

/// @nodoc
class _$InspectionitemModelCopyWithImpl<$Res, $Val extends InspectionitemModel>
    implements $InspectionitemModelCopyWith<$Res> {
  _$InspectionitemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InspectionitemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inspectionItem = null,
    Object? specification = null,
    Object? status = null,
    Object? period = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      inspectionItem: null == inspectionItem
          ? _value.inspectionItem
          : inspectionItem // ignore: cast_nullable_to_non_nullable
              as String,
      specification: null == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InspectionitemModelImplCopyWith<$Res>
    implements $InspectionitemModelCopyWith<$Res> {
  factory _$$InspectionitemModelImplCopyWith(_$InspectionitemModelImpl value,
          $Res Function(_$InspectionitemModelImpl) then) =
      __$$InspectionitemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String inspectionItem,
      String specification,
      String status,
      String period});
}

/// @nodoc
class __$$InspectionitemModelImplCopyWithImpl<$Res>
    extends _$InspectionitemModelCopyWithImpl<$Res, _$InspectionitemModelImpl>
    implements _$$InspectionitemModelImplCopyWith<$Res> {
  __$$InspectionitemModelImplCopyWithImpl(_$InspectionitemModelImpl _value,
      $Res Function(_$InspectionitemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InspectionitemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inspectionItem = null,
    Object? specification = null,
    Object? status = null,
    Object? period = null,
  }) {
    return _then(_$InspectionitemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      inspectionItem: null == inspectionItem
          ? _value.inspectionItem
          : inspectionItem // ignore: cast_nullable_to_non_nullable
              as String,
      specification: null == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InspectionitemModelImpl
    with DiagnosticableTreeMixin
    implements _InspectionitemModel {
  const _$InspectionitemModelImpl(
      {required this.id,
      required this.inspectionItem,
      required this.specification,
      required this.status,
      required this.period});

  factory _$InspectionitemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InspectionitemModelImplFromJson(json);

  @override
  final String id;
  @override
  final String inspectionItem;
  @override
  final String specification;
  @override
  final String status;
  @override
  final String period;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InspectionitemModel(id: $id, inspectionItem: $inspectionItem, specification: $specification, status: $status, period: $period)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InspectionitemModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('inspectionItem', inspectionItem))
      ..add(DiagnosticsProperty('specification', specification))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('period', period));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspectionitemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inspectionItem, inspectionItem) ||
                other.inspectionItem == inspectionItem) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, inspectionItem, specification, status, period);

  /// Create a copy of InspectionitemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InspectionitemModelImplCopyWith<_$InspectionitemModelImpl> get copyWith =>
      __$$InspectionitemModelImplCopyWithImpl<_$InspectionitemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InspectionitemModelImplToJson(
      this,
    );
  }
}

abstract class _InspectionitemModel implements InspectionitemModel {
  const factory _InspectionitemModel(
      {required final String id,
      required final String inspectionItem,
      required final String specification,
      required final String status,
      required final String period}) = _$InspectionitemModelImpl;

  factory _InspectionitemModel.fromJson(Map<String, dynamic> json) =
      _$InspectionitemModelImpl.fromJson;

  @override
  String get id;
  @override
  String get inspectionItem;
  @override
  String get specification;
  @override
  String get status;
  @override
  String get period;

  /// Create a copy of InspectionitemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InspectionitemModelImplCopyWith<_$InspectionitemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
