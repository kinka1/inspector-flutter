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
  bool get status => throw _privateConstructorUsedError;
  InspectionItemData get data => throw _privateConstructorUsedError;

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
  $Res call({bool status, InspectionItemData data});

  $InspectionItemDataCopyWith<$Res> get data;
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
              as InspectionItemData,
    ) as $Val);
  }

  /// Create a copy of InspectionitemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InspectionItemDataCopyWith<$Res> get data {
    return $InspectionItemDataCopyWith<$Res>(_value.data, (value) {
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
  $Res call({bool status, InspectionItemData data});

  @override
  $InspectionItemDataCopyWith<$Res> get data;
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
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$InspectionitemResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InspectionItemData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InspectionitemResponseImpl
    with DiagnosticableTreeMixin
    implements _InspectionitemResponse {
  const _$InspectionitemResponseImpl(
      {required this.status, required this.data});

  factory _$InspectionitemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InspectionitemResponseImplFromJson(json);

  @override
  final bool status;
  @override
  final InspectionItemData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InspectionitemResponse(status: $status, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InspectionitemResponse'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspectionitemResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

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
      {required final bool status,
      required final InspectionItemData data}) = _$InspectionitemResponseImpl;

  factory _InspectionitemResponse.fromJson(Map<String, dynamic> json) =
      _$InspectionitemResponseImpl.fromJson;

  @override
  bool get status;
  @override
  InspectionItemData get data;

  /// Create a copy of InspectionitemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InspectionitemResponseImplCopyWith<_$InspectionitemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InspectionItemData _$InspectionItemDataFromJson(Map<String, dynamic> json) {
  return _InspectionItemData.fromJson(json);
}

/// @nodoc
mixin _$InspectionItemData {
  List<InspectionitemModel> get item => throw _privateConstructorUsedError;

  /// Serializes this InspectionItemData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InspectionItemData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InspectionItemDataCopyWith<InspectionItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspectionItemDataCopyWith<$Res> {
  factory $InspectionItemDataCopyWith(
          InspectionItemData value, $Res Function(InspectionItemData) then) =
      _$InspectionItemDataCopyWithImpl<$Res, InspectionItemData>;
  @useResult
  $Res call({List<InspectionitemModel> item});
}

/// @nodoc
class _$InspectionItemDataCopyWithImpl<$Res, $Val extends InspectionItemData>
    implements $InspectionItemDataCopyWith<$Res> {
  _$InspectionItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InspectionItemData
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
              as List<InspectionitemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InspectionItemDataImplCopyWith<$Res>
    implements $InspectionItemDataCopyWith<$Res> {
  factory _$$InspectionItemDataImplCopyWith(_$InspectionItemDataImpl value,
          $Res Function(_$InspectionItemDataImpl) then) =
      __$$InspectionItemDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<InspectionitemModel> item});
}

/// @nodoc
class __$$InspectionItemDataImplCopyWithImpl<$Res>
    extends _$InspectionItemDataCopyWithImpl<$Res, _$InspectionItemDataImpl>
    implements _$$InspectionItemDataImplCopyWith<$Res> {
  __$$InspectionItemDataImplCopyWithImpl(_$InspectionItemDataImpl _value,
      $Res Function(_$InspectionItemDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of InspectionItemData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$InspectionItemDataImpl(
      item: null == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<InspectionitemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InspectionItemDataImpl
    with DiagnosticableTreeMixin
    implements _InspectionItemData {
  const _$InspectionItemDataImpl(
      {required final List<InspectionitemModel> item})
      : _item = item;

  factory _$InspectionItemDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InspectionItemDataImplFromJson(json);

  final List<InspectionitemModel> _item;
  @override
  List<InspectionitemModel> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InspectionItemData(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InspectionItemData'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspectionItemDataImpl &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_item));

  /// Create a copy of InspectionItemData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InspectionItemDataImplCopyWith<_$InspectionItemDataImpl> get copyWith =>
      __$$InspectionItemDataImplCopyWithImpl<_$InspectionItemDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InspectionItemDataImplToJson(
      this,
    );
  }
}

abstract class _InspectionItemData implements InspectionItemData {
  const factory _InspectionItemData(
          {required final List<InspectionitemModel> item}) =
      _$InspectionItemDataImpl;

  factory _InspectionItemData.fromJson(Map<String, dynamic> json) =
      _$InspectionItemDataImpl.fromJson;

  @override
  List<InspectionitemModel> get item;

  /// Create a copy of InspectionItemData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InspectionItemDataImplCopyWith<_$InspectionItemDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
  String get method => throw _privateConstructorUsedError;

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
      String period,
      String method});
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
    Object? method = null,
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
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
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
      String period,
      String method});
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
    Object? method = null,
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
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
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
      required this.period,
      required this.method});

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
  final String method;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InspectionitemModel(id: $id, inspectionItem: $inspectionItem, specification: $specification, status: $status, period: $period, method: $method)';
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
      ..add(DiagnosticsProperty('period', period))
      ..add(DiagnosticsProperty('method', method));
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
            (identical(other.period, period) || other.period == period) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, inspectionItem, specification, status, period, method);

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
      required final String period,
      required final String method}) = _$InspectionitemModelImpl;

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
  @override
  String get method;

  /// Create a copy of InspectionitemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InspectionitemModelImplCopyWith<_$InspectionitemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
