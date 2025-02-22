// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_inspection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailInspectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DetailInspectionModel model) postDetailInspection,
    required TResult Function(int machineId, String tanggal)
        getDetailInspectionList,
    required TResult Function(int machineId, int number, String tanggal)
        getDetailInspection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DetailInspectionModel model)? postDetailInspection,
    TResult? Function(int machineId, String tanggal)? getDetailInspectionList,
    TResult? Function(int machineId, int number, String tanggal)?
        getDetailInspection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DetailInspectionModel model)? postDetailInspection,
    TResult Function(int machineId, String tanggal)? getDetailInspectionList,
    TResult Function(int machineId, int number, String tanggal)?
        getDetailInspection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostDetailInspection value) postDetailInspection,
    required TResult Function(_GetDetailInspectionList value)
        getDetailInspectionList,
    required TResult Function(_GetDetailInspection value) getDetailInspection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostDetailInspection value)? postDetailInspection,
    TResult? Function(_GetDetailInspectionList value)? getDetailInspectionList,
    TResult? Function(_GetDetailInspection value)? getDetailInspection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostDetailInspection value)? postDetailInspection,
    TResult Function(_GetDetailInspectionList value)? getDetailInspectionList,
    TResult Function(_GetDetailInspection value)? getDetailInspection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailInspectionEventCopyWith<$Res> {
  factory $DetailInspectionEventCopyWith(DetailInspectionEvent value,
          $Res Function(DetailInspectionEvent) then) =
      _$DetailInspectionEventCopyWithImpl<$Res, DetailInspectionEvent>;
}

/// @nodoc
class _$DetailInspectionEventCopyWithImpl<$Res,
        $Val extends DetailInspectionEvent>
    implements $DetailInspectionEventCopyWith<$Res> {
  _$DetailInspectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailInspectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$DetailInspectionEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DetailInspectionEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DetailInspectionModel model) postDetailInspection,
    required TResult Function(int machineId, String tanggal)
        getDetailInspectionList,
    required TResult Function(int machineId, int number, String tanggal)
        getDetailInspection,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DetailInspectionModel model)? postDetailInspection,
    TResult? Function(int machineId, String tanggal)? getDetailInspectionList,
    TResult? Function(int machineId, int number, String tanggal)?
        getDetailInspection,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DetailInspectionModel model)? postDetailInspection,
    TResult Function(int machineId, String tanggal)? getDetailInspectionList,
    TResult Function(int machineId, int number, String tanggal)?
        getDetailInspection,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostDetailInspection value) postDetailInspection,
    required TResult Function(_GetDetailInspectionList value)
        getDetailInspectionList,
    required TResult Function(_GetDetailInspection value) getDetailInspection,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostDetailInspection value)? postDetailInspection,
    TResult? Function(_GetDetailInspectionList value)? getDetailInspectionList,
    TResult? Function(_GetDetailInspection value)? getDetailInspection,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostDetailInspection value)? postDetailInspection,
    TResult Function(_GetDetailInspectionList value)? getDetailInspectionList,
    TResult Function(_GetDetailInspection value)? getDetailInspection,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DetailInspectionEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$PostDetailInspectionImplCopyWith<$Res> {
  factory _$$PostDetailInspectionImplCopyWith(_$PostDetailInspectionImpl value,
          $Res Function(_$PostDetailInspectionImpl) then) =
      __$$PostDetailInspectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailInspectionModel model});

  $DetailInspectionModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$PostDetailInspectionImplCopyWithImpl<$Res>
    extends _$DetailInspectionEventCopyWithImpl<$Res,
        _$PostDetailInspectionImpl>
    implements _$$PostDetailInspectionImplCopyWith<$Res> {
  __$$PostDetailInspectionImplCopyWithImpl(_$PostDetailInspectionImpl _value,
      $Res Function(_$PostDetailInspectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$PostDetailInspectionImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DetailInspectionModel,
    ));
  }

  /// Create a copy of DetailInspectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailInspectionModelCopyWith<$Res> get model {
    return $DetailInspectionModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$PostDetailInspectionImpl implements _PostDetailInspection {
  const _$PostDetailInspectionImpl(this.model);

  @override
  final DetailInspectionModel model;

  @override
  String toString() {
    return 'DetailInspectionEvent.postDetailInspection(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDetailInspectionImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of DetailInspectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDetailInspectionImplCopyWith<_$PostDetailInspectionImpl>
      get copyWith =>
          __$$PostDetailInspectionImplCopyWithImpl<_$PostDetailInspectionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DetailInspectionModel model) postDetailInspection,
    required TResult Function(int machineId, String tanggal)
        getDetailInspectionList,
    required TResult Function(int machineId, int number, String tanggal)
        getDetailInspection,
  }) {
    return postDetailInspection(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DetailInspectionModel model)? postDetailInspection,
    TResult? Function(int machineId, String tanggal)? getDetailInspectionList,
    TResult? Function(int machineId, int number, String tanggal)?
        getDetailInspection,
  }) {
    return postDetailInspection?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DetailInspectionModel model)? postDetailInspection,
    TResult Function(int machineId, String tanggal)? getDetailInspectionList,
    TResult Function(int machineId, int number, String tanggal)?
        getDetailInspection,
    required TResult orElse(),
  }) {
    if (postDetailInspection != null) {
      return postDetailInspection(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostDetailInspection value) postDetailInspection,
    required TResult Function(_GetDetailInspectionList value)
        getDetailInspectionList,
    required TResult Function(_GetDetailInspection value) getDetailInspection,
  }) {
    return postDetailInspection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostDetailInspection value)? postDetailInspection,
    TResult? Function(_GetDetailInspectionList value)? getDetailInspectionList,
    TResult? Function(_GetDetailInspection value)? getDetailInspection,
  }) {
    return postDetailInspection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostDetailInspection value)? postDetailInspection,
    TResult Function(_GetDetailInspectionList value)? getDetailInspectionList,
    TResult Function(_GetDetailInspection value)? getDetailInspection,
    required TResult orElse(),
  }) {
    if (postDetailInspection != null) {
      return postDetailInspection(this);
    }
    return orElse();
  }
}

abstract class _PostDetailInspection implements DetailInspectionEvent {
  const factory _PostDetailInspection(final DetailInspectionModel model) =
      _$PostDetailInspectionImpl;

  DetailInspectionModel get model;

  /// Create a copy of DetailInspectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostDetailInspectionImplCopyWith<_$PostDetailInspectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDetailInspectionListImplCopyWith<$Res> {
  factory _$$GetDetailInspectionListImplCopyWith(
          _$GetDetailInspectionListImpl value,
          $Res Function(_$GetDetailInspectionListImpl) then) =
      __$$GetDetailInspectionListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int machineId, String tanggal});
}

/// @nodoc
class __$$GetDetailInspectionListImplCopyWithImpl<$Res>
    extends _$DetailInspectionEventCopyWithImpl<$Res,
        _$GetDetailInspectionListImpl>
    implements _$$GetDetailInspectionListImplCopyWith<$Res> {
  __$$GetDetailInspectionListImplCopyWithImpl(
      _$GetDetailInspectionListImpl _value,
      $Res Function(_$GetDetailInspectionListImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? tanggal = null,
  }) {
    return _then(_$GetDetailInspectionListImpl(
      null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as int,
      null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDetailInspectionListImpl implements _GetDetailInspectionList {
  const _$GetDetailInspectionListImpl(this.machineId, this.tanggal);

  @override
  final int machineId;
  @override
  final String tanggal;

  @override
  String toString() {
    return 'DetailInspectionEvent.getDetailInspectionList(machineId: $machineId, tanggal: $tanggal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailInspectionListImpl &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, machineId, tanggal);

  /// Create a copy of DetailInspectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailInspectionListImplCopyWith<_$GetDetailInspectionListImpl>
      get copyWith => __$$GetDetailInspectionListImplCopyWithImpl<
          _$GetDetailInspectionListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DetailInspectionModel model) postDetailInspection,
    required TResult Function(int machineId, String tanggal)
        getDetailInspectionList,
    required TResult Function(int machineId, int number, String tanggal)
        getDetailInspection,
  }) {
    return getDetailInspectionList(machineId, tanggal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DetailInspectionModel model)? postDetailInspection,
    TResult? Function(int machineId, String tanggal)? getDetailInspectionList,
    TResult? Function(int machineId, int number, String tanggal)?
        getDetailInspection,
  }) {
    return getDetailInspectionList?.call(machineId, tanggal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DetailInspectionModel model)? postDetailInspection,
    TResult Function(int machineId, String tanggal)? getDetailInspectionList,
    TResult Function(int machineId, int number, String tanggal)?
        getDetailInspection,
    required TResult orElse(),
  }) {
    if (getDetailInspectionList != null) {
      return getDetailInspectionList(machineId, tanggal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostDetailInspection value) postDetailInspection,
    required TResult Function(_GetDetailInspectionList value)
        getDetailInspectionList,
    required TResult Function(_GetDetailInspection value) getDetailInspection,
  }) {
    return getDetailInspectionList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostDetailInspection value)? postDetailInspection,
    TResult? Function(_GetDetailInspectionList value)? getDetailInspectionList,
    TResult? Function(_GetDetailInspection value)? getDetailInspection,
  }) {
    return getDetailInspectionList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostDetailInspection value)? postDetailInspection,
    TResult Function(_GetDetailInspectionList value)? getDetailInspectionList,
    TResult Function(_GetDetailInspection value)? getDetailInspection,
    required TResult orElse(),
  }) {
    if (getDetailInspectionList != null) {
      return getDetailInspectionList(this);
    }
    return orElse();
  }
}

abstract class _GetDetailInspectionList implements DetailInspectionEvent {
  const factory _GetDetailInspectionList(
          final int machineId, final String tanggal) =
      _$GetDetailInspectionListImpl;

  int get machineId;
  String get tanggal;

  /// Create a copy of DetailInspectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDetailInspectionListImplCopyWith<_$GetDetailInspectionListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDetailInspectionImplCopyWith<$Res> {
  factory _$$GetDetailInspectionImplCopyWith(_$GetDetailInspectionImpl value,
          $Res Function(_$GetDetailInspectionImpl) then) =
      __$$GetDetailInspectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int machineId, int number, String tanggal});
}

/// @nodoc
class __$$GetDetailInspectionImplCopyWithImpl<$Res>
    extends _$DetailInspectionEventCopyWithImpl<$Res, _$GetDetailInspectionImpl>
    implements _$$GetDetailInspectionImplCopyWith<$Res> {
  __$$GetDetailInspectionImplCopyWithImpl(_$GetDetailInspectionImpl _value,
      $Res Function(_$GetDetailInspectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? number = null,
    Object? tanggal = null,
  }) {
    return _then(_$GetDetailInspectionImpl(
      null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as int,
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDetailInspectionImpl implements _GetDetailInspection {
  const _$GetDetailInspectionImpl(this.machineId, this.number, this.tanggal);

  @override
  final int machineId;
  @override
  final int number;
  @override
  final String tanggal;

  @override
  String toString() {
    return 'DetailInspectionEvent.getDetailInspection(machineId: $machineId, number: $number, tanggal: $tanggal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailInspectionImpl &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, machineId, number, tanggal);

  /// Create a copy of DetailInspectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailInspectionImplCopyWith<_$GetDetailInspectionImpl> get copyWith =>
      __$$GetDetailInspectionImplCopyWithImpl<_$GetDetailInspectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DetailInspectionModel model) postDetailInspection,
    required TResult Function(int machineId, String tanggal)
        getDetailInspectionList,
    required TResult Function(int machineId, int number, String tanggal)
        getDetailInspection,
  }) {
    return getDetailInspection(machineId, number, tanggal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DetailInspectionModel model)? postDetailInspection,
    TResult? Function(int machineId, String tanggal)? getDetailInspectionList,
    TResult? Function(int machineId, int number, String tanggal)?
        getDetailInspection,
  }) {
    return getDetailInspection?.call(machineId, number, tanggal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DetailInspectionModel model)? postDetailInspection,
    TResult Function(int machineId, String tanggal)? getDetailInspectionList,
    TResult Function(int machineId, int number, String tanggal)?
        getDetailInspection,
    required TResult orElse(),
  }) {
    if (getDetailInspection != null) {
      return getDetailInspection(machineId, number, tanggal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostDetailInspection value) postDetailInspection,
    required TResult Function(_GetDetailInspectionList value)
        getDetailInspectionList,
    required TResult Function(_GetDetailInspection value) getDetailInspection,
  }) {
    return getDetailInspection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostDetailInspection value)? postDetailInspection,
    TResult? Function(_GetDetailInspectionList value)? getDetailInspectionList,
    TResult? Function(_GetDetailInspection value)? getDetailInspection,
  }) {
    return getDetailInspection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostDetailInspection value)? postDetailInspection,
    TResult Function(_GetDetailInspectionList value)? getDetailInspectionList,
    TResult Function(_GetDetailInspection value)? getDetailInspection,
    required TResult orElse(),
  }) {
    if (getDetailInspection != null) {
      return getDetailInspection(this);
    }
    return orElse();
  }
}

abstract class _GetDetailInspection implements DetailInspectionEvent {
  const factory _GetDetailInspection(
          final int machineId, final int number, final String tanggal) =
      _$GetDetailInspectionImpl;

  int get machineId;
  int get number;
  String get tanggal;

  /// Create a copy of DetailInspectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDetailInspectionImplCopyWith<_$GetDetailInspectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailInspectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function(DetailInspectionModel itemsdata) loaded,
    required TResult Function(List<DetailInspectionGetModel> itemsdata)
        loadedList,
    required TResult Function() success,
    required TResult Function(DetailInspectionGetModel response) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function(DetailInspectionModel itemsdata)? loaded,
    TResult? Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult? Function()? success,
    TResult? Function(DetailInspectionGetModel response)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function(DetailInspectionModel itemsdata)? loaded,
    TResult Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult Function()? success,
    TResult Function(DetailInspectionGetModel response)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedList value) loadedList,
    required TResult Function(_Success value) success,
    required TResult Function(_GetData value) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedList value)? loadedList,
    TResult? Function(_Success value)? success,
    TResult? Function(_GetData value)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedList value)? loadedList,
    TResult Function(_Success value)? success,
    TResult Function(_GetData value)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailInspectionStateCopyWith<$Res> {
  factory $DetailInspectionStateCopyWith(DetailInspectionState value,
          $Res Function(DetailInspectionState) then) =
      _$DetailInspectionStateCopyWithImpl<$Res, DetailInspectionState>;
}

/// @nodoc
class _$DetailInspectionStateCopyWithImpl<$Res,
        $Val extends DetailInspectionState>
    implements $DetailInspectionStateCopyWith<$Res> {
  _$DetailInspectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DetailInspectionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DetailInspectionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function(DetailInspectionModel itemsdata) loaded,
    required TResult Function(List<DetailInspectionGetModel> itemsdata)
        loadedList,
    required TResult Function() success,
    required TResult Function(DetailInspectionGetModel response) getData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function(DetailInspectionModel itemsdata)? loaded,
    TResult? Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult? Function()? success,
    TResult? Function(DetailInspectionGetModel response)? getData,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function(DetailInspectionModel itemsdata)? loaded,
    TResult Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult Function()? success,
    TResult Function(DetailInspectionGetModel response)? getData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedList value) loadedList,
    required TResult Function(_Success value) success,
    required TResult Function(_GetData value) getData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedList value)? loadedList,
    TResult? Function(_Success value)? success,
    TResult? Function(_GetData value)? getData,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedList value)? loadedList,
    TResult Function(_Success value)? success,
    TResult Function(_GetData value)? getData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DetailInspectionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$DetailInspectionStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'DetailInspectionState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function(DetailInspectionModel itemsdata) loaded,
    required TResult Function(List<DetailInspectionGetModel> itemsdata)
        loadedList,
    required TResult Function() success,
    required TResult Function(DetailInspectionGetModel response) getData,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function(DetailInspectionModel itemsdata)? loaded,
    TResult? Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult? Function()? success,
    TResult? Function(DetailInspectionGetModel response)? getData,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function(DetailInspectionModel itemsdata)? loaded,
    TResult Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult Function()? success,
    TResult Function(DetailInspectionGetModel response)? getData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedList value) loadedList,
    required TResult Function(_Success value) success,
    required TResult Function(_GetData value) getData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedList value)? loadedList,
    TResult? Function(_Success value)? success,
    TResult? Function(_GetData value)? getData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedList value)? loadedList,
    TResult Function(_Success value)? success,
    TResult Function(_GetData value)? getData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DetailInspectionState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DetailInspectionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DetailInspectionState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function(DetailInspectionModel itemsdata) loaded,
    required TResult Function(List<DetailInspectionGetModel> itemsdata)
        loadedList,
    required TResult Function() success,
    required TResult Function(DetailInspectionGetModel response) getData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function(DetailInspectionModel itemsdata)? loaded,
    TResult? Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult? Function()? success,
    TResult? Function(DetailInspectionGetModel response)? getData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function(DetailInspectionModel itemsdata)? loaded,
    TResult Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult Function()? success,
    TResult Function(DetailInspectionGetModel response)? getData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedList value) loadedList,
    required TResult Function(_Success value) success,
    required TResult Function(_GetData value) getData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedList value)? loadedList,
    TResult? Function(_Success value)? success,
    TResult? Function(_GetData value)? getData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedList value)? loadedList,
    TResult Function(_Success value)? success,
    TResult Function(_GetData value)? getData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DetailInspectionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailInspectionModel itemsdata});

  $DetailInspectionModelCopyWith<$Res> get itemsdata;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$DetailInspectionStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsdata = null,
  }) {
    return _then(_$LoadedImpl(
      null == itemsdata
          ? _value.itemsdata
          : itemsdata // ignore: cast_nullable_to_non_nullable
              as DetailInspectionModel,
    ));
  }

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailInspectionModelCopyWith<$Res> get itemsdata {
    return $DetailInspectionModelCopyWith<$Res>(_value.itemsdata, (value) {
      return _then(_value.copyWith(itemsdata: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.itemsdata);

  @override
  final DetailInspectionModel itemsdata;

  @override
  String toString() {
    return 'DetailInspectionState.loaded(itemsdata: $itemsdata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.itemsdata, itemsdata) ||
                other.itemsdata == itemsdata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemsdata);

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function(DetailInspectionModel itemsdata) loaded,
    required TResult Function(List<DetailInspectionGetModel> itemsdata)
        loadedList,
    required TResult Function() success,
    required TResult Function(DetailInspectionGetModel response) getData,
  }) {
    return loaded(itemsdata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function(DetailInspectionModel itemsdata)? loaded,
    TResult? Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult? Function()? success,
    TResult? Function(DetailInspectionGetModel response)? getData,
  }) {
    return loaded?.call(itemsdata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function(DetailInspectionModel itemsdata)? loaded,
    TResult Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult Function()? success,
    TResult Function(DetailInspectionGetModel response)? getData,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(itemsdata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedList value) loadedList,
    required TResult Function(_Success value) success,
    required TResult Function(_GetData value) getData,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedList value)? loadedList,
    TResult? Function(_Success value)? success,
    TResult? Function(_GetData value)? getData,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedList value)? loadedList,
    TResult Function(_Success value)? success,
    TResult Function(_GetData value)? getData,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DetailInspectionState {
  const factory _Loaded(final DetailInspectionModel itemsdata) = _$LoadedImpl;

  DetailInspectionModel get itemsdata;

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedListImplCopyWith<$Res> {
  factory _$$LoadedListImplCopyWith(
          _$LoadedListImpl value, $Res Function(_$LoadedListImpl) then) =
      __$$LoadedListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DetailInspectionGetModel> itemsdata});
}

/// @nodoc
class __$$LoadedListImplCopyWithImpl<$Res>
    extends _$DetailInspectionStateCopyWithImpl<$Res, _$LoadedListImpl>
    implements _$$LoadedListImplCopyWith<$Res> {
  __$$LoadedListImplCopyWithImpl(
      _$LoadedListImpl _value, $Res Function(_$LoadedListImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsdata = null,
  }) {
    return _then(_$LoadedListImpl(
      null == itemsdata
          ? _value._itemsdata
          : itemsdata // ignore: cast_nullable_to_non_nullable
              as List<DetailInspectionGetModel>,
    ));
  }
}

/// @nodoc

class _$LoadedListImpl implements _LoadedList {
  const _$LoadedListImpl(final List<DetailInspectionGetModel> itemsdata)
      : _itemsdata = itemsdata;

  final List<DetailInspectionGetModel> _itemsdata;
  @override
  List<DetailInspectionGetModel> get itemsdata {
    if (_itemsdata is EqualUnmodifiableListView) return _itemsdata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemsdata);
  }

  @override
  String toString() {
    return 'DetailInspectionState.loadedList(itemsdata: $itemsdata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedListImpl &&
            const DeepCollectionEquality()
                .equals(other._itemsdata, _itemsdata));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_itemsdata));

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedListImplCopyWith<_$LoadedListImpl> get copyWith =>
      __$$LoadedListImplCopyWithImpl<_$LoadedListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function(DetailInspectionModel itemsdata) loaded,
    required TResult Function(List<DetailInspectionGetModel> itemsdata)
        loadedList,
    required TResult Function() success,
    required TResult Function(DetailInspectionGetModel response) getData,
  }) {
    return loadedList(itemsdata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function(DetailInspectionModel itemsdata)? loaded,
    TResult? Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult? Function()? success,
    TResult? Function(DetailInspectionGetModel response)? getData,
  }) {
    return loadedList?.call(itemsdata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function(DetailInspectionModel itemsdata)? loaded,
    TResult Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult Function()? success,
    TResult Function(DetailInspectionGetModel response)? getData,
    required TResult orElse(),
  }) {
    if (loadedList != null) {
      return loadedList(itemsdata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedList value) loadedList,
    required TResult Function(_Success value) success,
    required TResult Function(_GetData value) getData,
  }) {
    return loadedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedList value)? loadedList,
    TResult? Function(_Success value)? success,
    TResult? Function(_GetData value)? getData,
  }) {
    return loadedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedList value)? loadedList,
    TResult Function(_Success value)? success,
    TResult Function(_GetData value)? getData,
    required TResult orElse(),
  }) {
    if (loadedList != null) {
      return loadedList(this);
    }
    return orElse();
  }
}

abstract class _LoadedList implements DetailInspectionState {
  const factory _LoadedList(final List<DetailInspectionGetModel> itemsdata) =
      _$LoadedListImpl;

  List<DetailInspectionGetModel> get itemsdata;

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedListImplCopyWith<_$LoadedListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$DetailInspectionStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'DetailInspectionState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function(DetailInspectionModel itemsdata) loaded,
    required TResult Function(List<DetailInspectionGetModel> itemsdata)
        loadedList,
    required TResult Function() success,
    required TResult Function(DetailInspectionGetModel response) getData,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function(DetailInspectionModel itemsdata)? loaded,
    TResult? Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult? Function()? success,
    TResult? Function(DetailInspectionGetModel response)? getData,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function(DetailInspectionModel itemsdata)? loaded,
    TResult Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult Function()? success,
    TResult Function(DetailInspectionGetModel response)? getData,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedList value) loadedList,
    required TResult Function(_Success value) success,
    required TResult Function(_GetData value) getData,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedList value)? loadedList,
    TResult? Function(_Success value)? success,
    TResult? Function(_GetData value)? getData,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedList value)? loadedList,
    TResult Function(_Success value)? success,
    TResult Function(_GetData value)? getData,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements DetailInspectionState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$GetDataImplCopyWith<$Res> {
  factory _$$GetDataImplCopyWith(
          _$GetDataImpl value, $Res Function(_$GetDataImpl) then) =
      __$$GetDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailInspectionGetModel response});

  $DetailInspectionGetModelCopyWith<$Res> get response;
}

/// @nodoc
class __$$GetDataImplCopyWithImpl<$Res>
    extends _$DetailInspectionStateCopyWithImpl<$Res, _$GetDataImpl>
    implements _$$GetDataImplCopyWith<$Res> {
  __$$GetDataImplCopyWithImpl(
      _$GetDataImpl _value, $Res Function(_$GetDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$GetDataImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as DetailInspectionGetModel,
    ));
  }

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailInspectionGetModelCopyWith<$Res> get response {
    return $DetailInspectionGetModelCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$GetDataImpl implements _GetData {
  const _$GetDataImpl(this.response);

  @override
  final DetailInspectionGetModel response;

  @override
  String toString() {
    return 'DetailInspectionState.getData(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataImplCopyWith<_$GetDataImpl> get copyWith =>
      __$$GetDataImplCopyWithImpl<_$GetDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function(DetailInspectionModel itemsdata) loaded,
    required TResult Function(List<DetailInspectionGetModel> itemsdata)
        loadedList,
    required TResult Function() success,
    required TResult Function(DetailInspectionGetModel response) getData,
  }) {
    return getData(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function(DetailInspectionModel itemsdata)? loaded,
    TResult? Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult? Function()? success,
    TResult? Function(DetailInspectionGetModel response)? getData,
  }) {
    return getData?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function(DetailInspectionModel itemsdata)? loaded,
    TResult Function(List<DetailInspectionGetModel> itemsdata)? loadedList,
    TResult Function()? success,
    TResult Function(DetailInspectionGetModel response)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedList value) loadedList,
    required TResult Function(_Success value) success,
    required TResult Function(_GetData value) getData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedList value)? loadedList,
    TResult? Function(_Success value)? success,
    TResult? Function(_GetData value)? getData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedList value)? loadedList,
    TResult Function(_Success value)? success,
    TResult Function(_GetData value)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements DetailInspectionState {
  const factory _GetData(final DetailInspectionGetModel response) =
      _$GetDataImpl;

  DetailInspectionGetModel get response;

  /// Create a copy of DetailInspectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDataImplCopyWith<_$GetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
