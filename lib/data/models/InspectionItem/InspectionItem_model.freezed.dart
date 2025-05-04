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
  String get itemId => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String get specification => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String get frequency => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  bool get isNumber => throw _privateConstructorUsedError;
  String get prasyarat => throw _privateConstructorUsedError;

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
      {String itemId,
      String itemName,
      String specification,
      String method,
      String frequency,
      int number,
      String imagePath,
      bool isNumber,
      String prasyarat});
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
    Object? itemId = null,
    Object? itemName = null,
    Object? specification = null,
    Object? method = null,
    Object? frequency = null,
    Object? number = null,
    Object? imagePath = null,
    Object? isNumber = null,
    Object? prasyarat = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
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
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isNumber: null == isNumber
          ? _value.isNumber
          : isNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      prasyarat: null == prasyarat
          ? _value.prasyarat
          : prasyarat // ignore: cast_nullable_to_non_nullable
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
      {String itemId,
      String itemName,
      String specification,
      String method,
      String frequency,
      int number,
      String imagePath,
      bool isNumber,
      String prasyarat});
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
    Object? itemId = null,
    Object? itemName = null,
    Object? specification = null,
    Object? method = null,
    Object? frequency = null,
    Object? number = null,
    Object? imagePath = null,
    Object? isNumber = null,
    Object? prasyarat = null,
  }) {
    return _then(_$InspectionitemModelImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
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
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isNumber: null == isNumber
          ? _value.isNumber
          : isNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      prasyarat: null == prasyarat
          ? _value.prasyarat
          : prasyarat // ignore: cast_nullable_to_non_nullable
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
      {required this.itemId,
      required this.itemName,
      required this.specification,
      required this.method,
      required this.frequency,
      required this.number,
      required this.imagePath,
      required this.isNumber,
      required this.prasyarat});

  factory _$InspectionitemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InspectionitemModelImplFromJson(json);

  @override
  final String itemId;
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
  final String imagePath;
  @override
  final bool isNumber;
  @override
  final String prasyarat;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InspectionitemModel(itemId: $itemId, itemName: $itemName, specification: $specification, method: $method, frequency: $frequency, number: $number, imagePath: $imagePath, isNumber: $isNumber, prasyarat: $prasyarat)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InspectionitemModel'))
      ..add(DiagnosticsProperty('itemId', itemId))
      ..add(DiagnosticsProperty('itemName', itemName))
      ..add(DiagnosticsProperty('specification', specification))
      ..add(DiagnosticsProperty('method', method))
      ..add(DiagnosticsProperty('frequency', frequency))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('imagePath', imagePath))
      ..add(DiagnosticsProperty('isNumber', isNumber))
      ..add(DiagnosticsProperty('prasyarat', prasyarat));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspectionitemModelImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.isNumber, isNumber) ||
                other.isNumber == isNumber) &&
            (identical(other.prasyarat, prasyarat) ||
                other.prasyarat == prasyarat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, itemName, specification,
      method, frequency, number, imagePath, isNumber, prasyarat);

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
      {required final String itemId,
      required final String itemName,
      required final String specification,
      required final String method,
      required final String frequency,
      required final int number,
      required final String imagePath,
      required final bool isNumber,
      required final String prasyarat}) = _$InspectionitemModelImpl;

  factory _InspectionitemModel.fromJson(Map<String, dynamic> json) =
      _$InspectionitemModelImpl.fromJson;

  @override
  String get itemId;
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
  String get imagePath;
  @override
  bool get isNumber;
  @override
  String get prasyarat;

  /// Create a copy of InspectionitemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InspectionitemModelImplCopyWith<_$InspectionitemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InspectionitemMachineGetModel _$InspectionitemMachineGetModelFromJson(
    Map<String, dynamic> json) {
  return _InspectionitemMachineGetModel.fromJson(json);
}

/// @nodoc
mixin _$InspectionitemMachineGetModel {
  String get machineInspectionId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String get specification => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String get frequency => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  bool get isNumber => throw _privateConstructorUsedError;
  String get prasyarat => throw _privateConstructorUsedError;

  /// Serializes this InspectionitemMachineGetModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InspectionitemMachineGetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InspectionitemMachineGetModelCopyWith<InspectionitemMachineGetModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspectionitemMachineGetModelCopyWith<$Res> {
  factory $InspectionitemMachineGetModelCopyWith(
          InspectionitemMachineGetModel value,
          $Res Function(InspectionitemMachineGetModel) then) =
      _$InspectionitemMachineGetModelCopyWithImpl<$Res,
          InspectionitemMachineGetModel>;
  @useResult
  $Res call(
      {String machineInspectionId,
      String itemId,
      String itemName,
      String specification,
      String method,
      String frequency,
      int number,
      String imagePath,
      bool isNumber,
      String prasyarat});
}

/// @nodoc
class _$InspectionitemMachineGetModelCopyWithImpl<$Res,
        $Val extends InspectionitemMachineGetModel>
    implements $InspectionitemMachineGetModelCopyWith<$Res> {
  _$InspectionitemMachineGetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InspectionitemMachineGetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineInspectionId = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? specification = null,
    Object? method = null,
    Object? frequency = null,
    Object? number = null,
    Object? imagePath = null,
    Object? isNumber = null,
    Object? prasyarat = null,
  }) {
    return _then(_value.copyWith(
      machineInspectionId: null == machineInspectionId
          ? _value.machineInspectionId
          : machineInspectionId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
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
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isNumber: null == isNumber
          ? _value.isNumber
          : isNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      prasyarat: null == prasyarat
          ? _value.prasyarat
          : prasyarat // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InspectionitemMachineGetModelImplCopyWith<$Res>
    implements $InspectionitemMachineGetModelCopyWith<$Res> {
  factory _$$InspectionitemMachineGetModelImplCopyWith(
          _$InspectionitemMachineGetModelImpl value,
          $Res Function(_$InspectionitemMachineGetModelImpl) then) =
      __$$InspectionitemMachineGetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String machineInspectionId,
      String itemId,
      String itemName,
      String specification,
      String method,
      String frequency,
      int number,
      String imagePath,
      bool isNumber,
      String prasyarat});
}

/// @nodoc
class __$$InspectionitemMachineGetModelImplCopyWithImpl<$Res>
    extends _$InspectionitemMachineGetModelCopyWithImpl<$Res,
        _$InspectionitemMachineGetModelImpl>
    implements _$$InspectionitemMachineGetModelImplCopyWith<$Res> {
  __$$InspectionitemMachineGetModelImplCopyWithImpl(
      _$InspectionitemMachineGetModelImpl _value,
      $Res Function(_$InspectionitemMachineGetModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InspectionitemMachineGetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineInspectionId = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? specification = null,
    Object? method = null,
    Object? frequency = null,
    Object? number = null,
    Object? imagePath = null,
    Object? isNumber = null,
    Object? prasyarat = null,
  }) {
    return _then(_$InspectionitemMachineGetModelImpl(
      machineInspectionId: null == machineInspectionId
          ? _value.machineInspectionId
          : machineInspectionId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
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
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isNumber: null == isNumber
          ? _value.isNumber
          : isNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      prasyarat: null == prasyarat
          ? _value.prasyarat
          : prasyarat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InspectionitemMachineGetModelImpl
    with DiagnosticableTreeMixin
    implements _InspectionitemMachineGetModel {
  const _$InspectionitemMachineGetModelImpl(
      {required this.machineInspectionId,
      required this.itemId,
      required this.itemName,
      required this.specification,
      required this.method,
      required this.frequency,
      required this.number,
      required this.imagePath,
      required this.isNumber,
      required this.prasyarat});

  factory _$InspectionitemMachineGetModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InspectionitemMachineGetModelImplFromJson(json);

  @override
  final String machineInspectionId;
  @override
  final String itemId;
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
  final String imagePath;
  @override
  final bool isNumber;
  @override
  final String prasyarat;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InspectionitemMachineGetModel(machineInspectionId: $machineInspectionId, itemId: $itemId, itemName: $itemName, specification: $specification, method: $method, frequency: $frequency, number: $number, imagePath: $imagePath, isNumber: $isNumber, prasyarat: $prasyarat)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InspectionitemMachineGetModel'))
      ..add(DiagnosticsProperty('machineInspectionId', machineInspectionId))
      ..add(DiagnosticsProperty('itemId', itemId))
      ..add(DiagnosticsProperty('itemName', itemName))
      ..add(DiagnosticsProperty('specification', specification))
      ..add(DiagnosticsProperty('method', method))
      ..add(DiagnosticsProperty('frequency', frequency))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('imagePath', imagePath))
      ..add(DiagnosticsProperty('isNumber', isNumber))
      ..add(DiagnosticsProperty('prasyarat', prasyarat));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspectionitemMachineGetModelImpl &&
            (identical(other.machineInspectionId, machineInspectionId) ||
                other.machineInspectionId == machineInspectionId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.isNumber, isNumber) ||
                other.isNumber == isNumber) &&
            (identical(other.prasyarat, prasyarat) ||
                other.prasyarat == prasyarat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      machineInspectionId,
      itemId,
      itemName,
      specification,
      method,
      frequency,
      number,
      imagePath,
      isNumber,
      prasyarat);

  /// Create a copy of InspectionitemMachineGetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InspectionitemMachineGetModelImplCopyWith<
          _$InspectionitemMachineGetModelImpl>
      get copyWith => __$$InspectionitemMachineGetModelImplCopyWithImpl<
          _$InspectionitemMachineGetModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InspectionitemMachineGetModelImplToJson(
      this,
    );
  }
}

abstract class _InspectionitemMachineGetModel
    implements InspectionitemMachineGetModel {
  const factory _InspectionitemMachineGetModel(
      {required final String machineInspectionId,
      required final String itemId,
      required final String itemName,
      required final String specification,
      required final String method,
      required final String frequency,
      required final int number,
      required final String imagePath,
      required final bool isNumber,
      required final String prasyarat}) = _$InspectionitemMachineGetModelImpl;

  factory _InspectionitemMachineGetModel.fromJson(Map<String, dynamic> json) =
      _$InspectionitemMachineGetModelImpl.fromJson;

  @override
  String get machineInspectionId;
  @override
  String get itemId;
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
  String get imagePath;
  @override
  bool get isNumber;
  @override
  String get prasyarat;

  /// Create a copy of InspectionitemMachineGetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InspectionitemMachineGetModelImplCopyWith<
          _$InspectionitemMachineGetModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
