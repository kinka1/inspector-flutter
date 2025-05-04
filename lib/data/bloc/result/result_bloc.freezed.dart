// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResultEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getResult,
    required TResult Function(String status) addResult,
    required TResult Function() getResultAll,
    required TResult Function(ResultModel model) UpdateStatus,
    required TResult Function(String buId, String tanggal) getResultByDatelist,
    required TResult Function(String tanggal) getResultByDate,
    required TResult Function(String tanggal) getResultByDateForHomepage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getResult,
    TResult? Function(String status)? addResult,
    TResult? Function()? getResultAll,
    TResult? Function(ResultModel model)? UpdateStatus,
    TResult? Function(String buId, String tanggal)? getResultByDatelist,
    TResult? Function(String tanggal)? getResultByDate,
    TResult? Function(String tanggal)? getResultByDateForHomepage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getResult,
    TResult Function(String status)? addResult,
    TResult Function()? getResultAll,
    TResult Function(ResultModel model)? UpdateStatus,
    TResult Function(String buId, String tanggal)? getResultByDatelist,
    TResult Function(String tanggal)? getResultByDate,
    TResult Function(String tanggal)? getResultByDateForHomepage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetResult value) getResult,
    required TResult Function(_AddResult value) addResult,
    required TResult Function(_GetResultAll value) getResultAll,
    required TResult Function(_UpdateStatus value) UpdateStatus,
    required TResult Function(_GetResultByDatelist value) getResultByDatelist,
    required TResult Function(_GetResultByDate value) getResultByDate,
    required TResult Function(_GetResultByDateForHomepage value)
        getResultByDateForHomepage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetResult value)? getResult,
    TResult? Function(_AddResult value)? addResult,
    TResult? Function(_GetResultAll value)? getResultAll,
    TResult? Function(_UpdateStatus value)? UpdateStatus,
    TResult? Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult? Function(_GetResultByDate value)? getResultByDate,
    TResult? Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetResult value)? getResult,
    TResult Function(_AddResult value)? addResult,
    TResult Function(_GetResultAll value)? getResultAll,
    TResult Function(_UpdateStatus value)? UpdateStatus,
    TResult Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult Function(_GetResultByDate value)? getResultByDate,
    TResult Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultEventCopyWith<$Res> {
  factory $ResultEventCopyWith(
          ResultEvent value, $Res Function(ResultEvent) then) =
      _$ResultEventCopyWithImpl<$Res, ResultEvent>;
}

/// @nodoc
class _$ResultEventCopyWithImpl<$Res, $Val extends ResultEvent>
    implements $ResultEventCopyWith<$Res> {
  _$ResultEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultEvent
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
    extends _$ResultEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ResultEvent.started'));
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
    required TResult Function() getResult,
    required TResult Function(String status) addResult,
    required TResult Function() getResultAll,
    required TResult Function(ResultModel model) UpdateStatus,
    required TResult Function(String buId, String tanggal) getResultByDatelist,
    required TResult Function(String tanggal) getResultByDate,
    required TResult Function(String tanggal) getResultByDateForHomepage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getResult,
    TResult? Function(String status)? addResult,
    TResult? Function()? getResultAll,
    TResult? Function(ResultModel model)? UpdateStatus,
    TResult? Function(String buId, String tanggal)? getResultByDatelist,
    TResult? Function(String tanggal)? getResultByDate,
    TResult? Function(String tanggal)? getResultByDateForHomepage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getResult,
    TResult Function(String status)? addResult,
    TResult Function()? getResultAll,
    TResult Function(ResultModel model)? UpdateStatus,
    TResult Function(String buId, String tanggal)? getResultByDatelist,
    TResult Function(String tanggal)? getResultByDate,
    TResult Function(String tanggal)? getResultByDateForHomepage,
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
    required TResult Function(_GetResult value) getResult,
    required TResult Function(_AddResult value) addResult,
    required TResult Function(_GetResultAll value) getResultAll,
    required TResult Function(_UpdateStatus value) UpdateStatus,
    required TResult Function(_GetResultByDatelist value) getResultByDatelist,
    required TResult Function(_GetResultByDate value) getResultByDate,
    required TResult Function(_GetResultByDateForHomepage value)
        getResultByDateForHomepage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetResult value)? getResult,
    TResult? Function(_AddResult value)? addResult,
    TResult? Function(_GetResultAll value)? getResultAll,
    TResult? Function(_UpdateStatus value)? UpdateStatus,
    TResult? Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult? Function(_GetResultByDate value)? getResultByDate,
    TResult? Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetResult value)? getResult,
    TResult Function(_AddResult value)? addResult,
    TResult Function(_GetResultAll value)? getResultAll,
    TResult Function(_UpdateStatus value)? UpdateStatus,
    TResult Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult Function(_GetResultByDate value)? getResultByDate,
    TResult Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ResultEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetResultImplCopyWith<$Res> {
  factory _$$GetResultImplCopyWith(
          _$GetResultImpl value, $Res Function(_$GetResultImpl) then) =
      __$$GetResultImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetResultImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$GetResultImpl>
    implements _$$GetResultImplCopyWith<$Res> {
  __$$GetResultImplCopyWithImpl(
      _$GetResultImpl _value, $Res Function(_$GetResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetResultImpl with DiagnosticableTreeMixin implements _GetResult {
  const _$GetResultImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultEvent.getResult()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ResultEvent.getResult'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetResultImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getResult,
    required TResult Function(String status) addResult,
    required TResult Function() getResultAll,
    required TResult Function(ResultModel model) UpdateStatus,
    required TResult Function(String buId, String tanggal) getResultByDatelist,
    required TResult Function(String tanggal) getResultByDate,
    required TResult Function(String tanggal) getResultByDateForHomepage,
  }) {
    return getResult();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getResult,
    TResult? Function(String status)? addResult,
    TResult? Function()? getResultAll,
    TResult? Function(ResultModel model)? UpdateStatus,
    TResult? Function(String buId, String tanggal)? getResultByDatelist,
    TResult? Function(String tanggal)? getResultByDate,
    TResult? Function(String tanggal)? getResultByDateForHomepage,
  }) {
    return getResult?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getResult,
    TResult Function(String status)? addResult,
    TResult Function()? getResultAll,
    TResult Function(ResultModel model)? UpdateStatus,
    TResult Function(String buId, String tanggal)? getResultByDatelist,
    TResult Function(String tanggal)? getResultByDate,
    TResult Function(String tanggal)? getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (getResult != null) {
      return getResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetResult value) getResult,
    required TResult Function(_AddResult value) addResult,
    required TResult Function(_GetResultAll value) getResultAll,
    required TResult Function(_UpdateStatus value) UpdateStatus,
    required TResult Function(_GetResultByDatelist value) getResultByDatelist,
    required TResult Function(_GetResultByDate value) getResultByDate,
    required TResult Function(_GetResultByDateForHomepage value)
        getResultByDateForHomepage,
  }) {
    return getResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetResult value)? getResult,
    TResult? Function(_AddResult value)? addResult,
    TResult? Function(_GetResultAll value)? getResultAll,
    TResult? Function(_UpdateStatus value)? UpdateStatus,
    TResult? Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult? Function(_GetResultByDate value)? getResultByDate,
    TResult? Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
  }) {
    return getResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetResult value)? getResult,
    TResult Function(_AddResult value)? addResult,
    TResult Function(_GetResultAll value)? getResultAll,
    TResult Function(_UpdateStatus value)? UpdateStatus,
    TResult Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult Function(_GetResultByDate value)? getResultByDate,
    TResult Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (getResult != null) {
      return getResult(this);
    }
    return orElse();
  }
}

abstract class _GetResult implements ResultEvent {
  const factory _GetResult() = _$GetResultImpl;
}

/// @nodoc
abstract class _$$AddResultImplCopyWith<$Res> {
  factory _$$AddResultImplCopyWith(
          _$AddResultImpl value, $Res Function(_$AddResultImpl) then) =
      __$$AddResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$AddResultImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$AddResultImpl>
    implements _$$AddResultImplCopyWith<$Res> {
  __$$AddResultImplCopyWithImpl(
      _$AddResultImpl _value, $Res Function(_$AddResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$AddResultImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddResultImpl with DiagnosticableTreeMixin implements _AddResult {
  const _$AddResultImpl(this.status);

  @override
  final String status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultEvent.addResult(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultEvent.addResult'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddResultImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddResultImplCopyWith<_$AddResultImpl> get copyWith =>
      __$$AddResultImplCopyWithImpl<_$AddResultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getResult,
    required TResult Function(String status) addResult,
    required TResult Function() getResultAll,
    required TResult Function(ResultModel model) UpdateStatus,
    required TResult Function(String buId, String tanggal) getResultByDatelist,
    required TResult Function(String tanggal) getResultByDate,
    required TResult Function(String tanggal) getResultByDateForHomepage,
  }) {
    return addResult(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getResult,
    TResult? Function(String status)? addResult,
    TResult? Function()? getResultAll,
    TResult? Function(ResultModel model)? UpdateStatus,
    TResult? Function(String buId, String tanggal)? getResultByDatelist,
    TResult? Function(String tanggal)? getResultByDate,
    TResult? Function(String tanggal)? getResultByDateForHomepage,
  }) {
    return addResult?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getResult,
    TResult Function(String status)? addResult,
    TResult Function()? getResultAll,
    TResult Function(ResultModel model)? UpdateStatus,
    TResult Function(String buId, String tanggal)? getResultByDatelist,
    TResult Function(String tanggal)? getResultByDate,
    TResult Function(String tanggal)? getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (addResult != null) {
      return addResult(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetResult value) getResult,
    required TResult Function(_AddResult value) addResult,
    required TResult Function(_GetResultAll value) getResultAll,
    required TResult Function(_UpdateStatus value) UpdateStatus,
    required TResult Function(_GetResultByDatelist value) getResultByDatelist,
    required TResult Function(_GetResultByDate value) getResultByDate,
    required TResult Function(_GetResultByDateForHomepage value)
        getResultByDateForHomepage,
  }) {
    return addResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetResult value)? getResult,
    TResult? Function(_AddResult value)? addResult,
    TResult? Function(_GetResultAll value)? getResultAll,
    TResult? Function(_UpdateStatus value)? UpdateStatus,
    TResult? Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult? Function(_GetResultByDate value)? getResultByDate,
    TResult? Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
  }) {
    return addResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetResult value)? getResult,
    TResult Function(_AddResult value)? addResult,
    TResult Function(_GetResultAll value)? getResultAll,
    TResult Function(_UpdateStatus value)? UpdateStatus,
    TResult Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult Function(_GetResultByDate value)? getResultByDate,
    TResult Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (addResult != null) {
      return addResult(this);
    }
    return orElse();
  }
}

abstract class _AddResult implements ResultEvent {
  const factory _AddResult(final String status) = _$AddResultImpl;

  String get status;

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddResultImplCopyWith<_$AddResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetResultAllImplCopyWith<$Res> {
  factory _$$GetResultAllImplCopyWith(
          _$GetResultAllImpl value, $Res Function(_$GetResultAllImpl) then) =
      __$$GetResultAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetResultAllImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$GetResultAllImpl>
    implements _$$GetResultAllImplCopyWith<$Res> {
  __$$GetResultAllImplCopyWithImpl(
      _$GetResultAllImpl _value, $Res Function(_$GetResultAllImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetResultAllImpl with DiagnosticableTreeMixin implements _GetResultAll {
  const _$GetResultAllImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultEvent.getResultAll()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ResultEvent.getResultAll'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetResultAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getResult,
    required TResult Function(String status) addResult,
    required TResult Function() getResultAll,
    required TResult Function(ResultModel model) UpdateStatus,
    required TResult Function(String buId, String tanggal) getResultByDatelist,
    required TResult Function(String tanggal) getResultByDate,
    required TResult Function(String tanggal) getResultByDateForHomepage,
  }) {
    return getResultAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getResult,
    TResult? Function(String status)? addResult,
    TResult? Function()? getResultAll,
    TResult? Function(ResultModel model)? UpdateStatus,
    TResult? Function(String buId, String tanggal)? getResultByDatelist,
    TResult? Function(String tanggal)? getResultByDate,
    TResult? Function(String tanggal)? getResultByDateForHomepage,
  }) {
    return getResultAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getResult,
    TResult Function(String status)? addResult,
    TResult Function()? getResultAll,
    TResult Function(ResultModel model)? UpdateStatus,
    TResult Function(String buId, String tanggal)? getResultByDatelist,
    TResult Function(String tanggal)? getResultByDate,
    TResult Function(String tanggal)? getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (getResultAll != null) {
      return getResultAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetResult value) getResult,
    required TResult Function(_AddResult value) addResult,
    required TResult Function(_GetResultAll value) getResultAll,
    required TResult Function(_UpdateStatus value) UpdateStatus,
    required TResult Function(_GetResultByDatelist value) getResultByDatelist,
    required TResult Function(_GetResultByDate value) getResultByDate,
    required TResult Function(_GetResultByDateForHomepage value)
        getResultByDateForHomepage,
  }) {
    return getResultAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetResult value)? getResult,
    TResult? Function(_AddResult value)? addResult,
    TResult? Function(_GetResultAll value)? getResultAll,
    TResult? Function(_UpdateStatus value)? UpdateStatus,
    TResult? Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult? Function(_GetResultByDate value)? getResultByDate,
    TResult? Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
  }) {
    return getResultAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetResult value)? getResult,
    TResult Function(_AddResult value)? addResult,
    TResult Function(_GetResultAll value)? getResultAll,
    TResult Function(_UpdateStatus value)? UpdateStatus,
    TResult Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult Function(_GetResultByDate value)? getResultByDate,
    TResult Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (getResultAll != null) {
      return getResultAll(this);
    }
    return orElse();
  }
}

abstract class _GetResultAll implements ResultEvent {
  const factory _GetResultAll() = _$GetResultAllImpl;
}

/// @nodoc
abstract class _$$UpdateStatusImplCopyWith<$Res> {
  factory _$$UpdateStatusImplCopyWith(
          _$UpdateStatusImpl value, $Res Function(_$UpdateStatusImpl) then) =
      __$$UpdateStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResultModel model});

  $ResultModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$UpdateStatusImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$UpdateStatusImpl>
    implements _$$UpdateStatusImplCopyWith<$Res> {
  __$$UpdateStatusImplCopyWithImpl(
      _$UpdateStatusImpl _value, $Res Function(_$UpdateStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$UpdateStatusImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ResultModel,
    ));
  }

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultModelCopyWith<$Res> get model {
    return $ResultModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$UpdateStatusImpl with DiagnosticableTreeMixin implements _UpdateStatus {
  const _$UpdateStatusImpl(this.model);

  @override
  final ResultModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultEvent.UpdateStatus(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultEvent.UpdateStatus'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStatusImplCopyWith<_$UpdateStatusImpl> get copyWith =>
      __$$UpdateStatusImplCopyWithImpl<_$UpdateStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getResult,
    required TResult Function(String status) addResult,
    required TResult Function() getResultAll,
    required TResult Function(ResultModel model) UpdateStatus,
    required TResult Function(String buId, String tanggal) getResultByDatelist,
    required TResult Function(String tanggal) getResultByDate,
    required TResult Function(String tanggal) getResultByDateForHomepage,
  }) {
    return UpdateStatus(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getResult,
    TResult? Function(String status)? addResult,
    TResult? Function()? getResultAll,
    TResult? Function(ResultModel model)? UpdateStatus,
    TResult? Function(String buId, String tanggal)? getResultByDatelist,
    TResult? Function(String tanggal)? getResultByDate,
    TResult? Function(String tanggal)? getResultByDateForHomepage,
  }) {
    return UpdateStatus?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getResult,
    TResult Function(String status)? addResult,
    TResult Function()? getResultAll,
    TResult Function(ResultModel model)? UpdateStatus,
    TResult Function(String buId, String tanggal)? getResultByDatelist,
    TResult Function(String tanggal)? getResultByDate,
    TResult Function(String tanggal)? getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (UpdateStatus != null) {
      return UpdateStatus(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetResult value) getResult,
    required TResult Function(_AddResult value) addResult,
    required TResult Function(_GetResultAll value) getResultAll,
    required TResult Function(_UpdateStatus value) UpdateStatus,
    required TResult Function(_GetResultByDatelist value) getResultByDatelist,
    required TResult Function(_GetResultByDate value) getResultByDate,
    required TResult Function(_GetResultByDateForHomepage value)
        getResultByDateForHomepage,
  }) {
    return UpdateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetResult value)? getResult,
    TResult? Function(_AddResult value)? addResult,
    TResult? Function(_GetResultAll value)? getResultAll,
    TResult? Function(_UpdateStatus value)? UpdateStatus,
    TResult? Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult? Function(_GetResultByDate value)? getResultByDate,
    TResult? Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
  }) {
    return UpdateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetResult value)? getResult,
    TResult Function(_AddResult value)? addResult,
    TResult Function(_GetResultAll value)? getResultAll,
    TResult Function(_UpdateStatus value)? UpdateStatus,
    TResult Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult Function(_GetResultByDate value)? getResultByDate,
    TResult Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (UpdateStatus != null) {
      return UpdateStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateStatus implements ResultEvent {
  const factory _UpdateStatus(final ResultModel model) = _$UpdateStatusImpl;

  ResultModel get model;

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStatusImplCopyWith<_$UpdateStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetResultByDatelistImplCopyWith<$Res> {
  factory _$$GetResultByDatelistImplCopyWith(_$GetResultByDatelistImpl value,
          $Res Function(_$GetResultByDatelistImpl) then) =
      __$$GetResultByDatelistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String buId, String tanggal});
}

/// @nodoc
class __$$GetResultByDatelistImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$GetResultByDatelistImpl>
    implements _$$GetResultByDatelistImplCopyWith<$Res> {
  __$$GetResultByDatelistImplCopyWithImpl(_$GetResultByDatelistImpl _value,
      $Res Function(_$GetResultByDatelistImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buId = null,
    Object? tanggal = null,
  }) {
    return _then(_$GetResultByDatelistImpl(
      null == buId
          ? _value.buId
          : buId // ignore: cast_nullable_to_non_nullable
              as String,
      null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetResultByDatelistImpl
    with DiagnosticableTreeMixin
    implements _GetResultByDatelist {
  const _$GetResultByDatelistImpl(this.buId, this.tanggal);

  @override
  final String buId;
  @override
  final String tanggal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultEvent.getResultByDatelist(buId: $buId, tanggal: $tanggal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultEvent.getResultByDatelist'))
      ..add(DiagnosticsProperty('buId', buId))
      ..add(DiagnosticsProperty('tanggal', tanggal));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetResultByDatelistImpl &&
            (identical(other.buId, buId) || other.buId == buId) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buId, tanggal);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetResultByDatelistImplCopyWith<_$GetResultByDatelistImpl> get copyWith =>
      __$$GetResultByDatelistImplCopyWithImpl<_$GetResultByDatelistImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getResult,
    required TResult Function(String status) addResult,
    required TResult Function() getResultAll,
    required TResult Function(ResultModel model) UpdateStatus,
    required TResult Function(String buId, String tanggal) getResultByDatelist,
    required TResult Function(String tanggal) getResultByDate,
    required TResult Function(String tanggal) getResultByDateForHomepage,
  }) {
    return getResultByDatelist(buId, tanggal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getResult,
    TResult? Function(String status)? addResult,
    TResult? Function()? getResultAll,
    TResult? Function(ResultModel model)? UpdateStatus,
    TResult? Function(String buId, String tanggal)? getResultByDatelist,
    TResult? Function(String tanggal)? getResultByDate,
    TResult? Function(String tanggal)? getResultByDateForHomepage,
  }) {
    return getResultByDatelist?.call(buId, tanggal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getResult,
    TResult Function(String status)? addResult,
    TResult Function()? getResultAll,
    TResult Function(ResultModel model)? UpdateStatus,
    TResult Function(String buId, String tanggal)? getResultByDatelist,
    TResult Function(String tanggal)? getResultByDate,
    TResult Function(String tanggal)? getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (getResultByDatelist != null) {
      return getResultByDatelist(buId, tanggal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetResult value) getResult,
    required TResult Function(_AddResult value) addResult,
    required TResult Function(_GetResultAll value) getResultAll,
    required TResult Function(_UpdateStatus value) UpdateStatus,
    required TResult Function(_GetResultByDatelist value) getResultByDatelist,
    required TResult Function(_GetResultByDate value) getResultByDate,
    required TResult Function(_GetResultByDateForHomepage value)
        getResultByDateForHomepage,
  }) {
    return getResultByDatelist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetResult value)? getResult,
    TResult? Function(_AddResult value)? addResult,
    TResult? Function(_GetResultAll value)? getResultAll,
    TResult? Function(_UpdateStatus value)? UpdateStatus,
    TResult? Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult? Function(_GetResultByDate value)? getResultByDate,
    TResult? Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
  }) {
    return getResultByDatelist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetResult value)? getResult,
    TResult Function(_AddResult value)? addResult,
    TResult Function(_GetResultAll value)? getResultAll,
    TResult Function(_UpdateStatus value)? UpdateStatus,
    TResult Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult Function(_GetResultByDate value)? getResultByDate,
    TResult Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (getResultByDatelist != null) {
      return getResultByDatelist(this);
    }
    return orElse();
  }
}

abstract class _GetResultByDatelist implements ResultEvent {
  const factory _GetResultByDatelist(final String buId, final String tanggal) =
      _$GetResultByDatelistImpl;

  String get buId;
  String get tanggal;

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetResultByDatelistImplCopyWith<_$GetResultByDatelistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetResultByDateImplCopyWith<$Res> {
  factory _$$GetResultByDateImplCopyWith(_$GetResultByDateImpl value,
          $Res Function(_$GetResultByDateImpl) then) =
      __$$GetResultByDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tanggal});
}

/// @nodoc
class __$$GetResultByDateImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$GetResultByDateImpl>
    implements _$$GetResultByDateImplCopyWith<$Res> {
  __$$GetResultByDateImplCopyWithImpl(
      _$GetResultByDateImpl _value, $Res Function(_$GetResultByDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tanggal = null,
  }) {
    return _then(_$GetResultByDateImpl(
      null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetResultByDateImpl
    with DiagnosticableTreeMixin
    implements _GetResultByDate {
  const _$GetResultByDateImpl(this.tanggal);

  @override
  final String tanggal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultEvent.getResultByDate(tanggal: $tanggal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultEvent.getResultByDate'))
      ..add(DiagnosticsProperty('tanggal', tanggal));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetResultByDateImpl &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tanggal);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetResultByDateImplCopyWith<_$GetResultByDateImpl> get copyWith =>
      __$$GetResultByDateImplCopyWithImpl<_$GetResultByDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getResult,
    required TResult Function(String status) addResult,
    required TResult Function() getResultAll,
    required TResult Function(ResultModel model) UpdateStatus,
    required TResult Function(String buId, String tanggal) getResultByDatelist,
    required TResult Function(String tanggal) getResultByDate,
    required TResult Function(String tanggal) getResultByDateForHomepage,
  }) {
    return getResultByDate(tanggal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getResult,
    TResult? Function(String status)? addResult,
    TResult? Function()? getResultAll,
    TResult? Function(ResultModel model)? UpdateStatus,
    TResult? Function(String buId, String tanggal)? getResultByDatelist,
    TResult? Function(String tanggal)? getResultByDate,
    TResult? Function(String tanggal)? getResultByDateForHomepage,
  }) {
    return getResultByDate?.call(tanggal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getResult,
    TResult Function(String status)? addResult,
    TResult Function()? getResultAll,
    TResult Function(ResultModel model)? UpdateStatus,
    TResult Function(String buId, String tanggal)? getResultByDatelist,
    TResult Function(String tanggal)? getResultByDate,
    TResult Function(String tanggal)? getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (getResultByDate != null) {
      return getResultByDate(tanggal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetResult value) getResult,
    required TResult Function(_AddResult value) addResult,
    required TResult Function(_GetResultAll value) getResultAll,
    required TResult Function(_UpdateStatus value) UpdateStatus,
    required TResult Function(_GetResultByDatelist value) getResultByDatelist,
    required TResult Function(_GetResultByDate value) getResultByDate,
    required TResult Function(_GetResultByDateForHomepage value)
        getResultByDateForHomepage,
  }) {
    return getResultByDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetResult value)? getResult,
    TResult? Function(_AddResult value)? addResult,
    TResult? Function(_GetResultAll value)? getResultAll,
    TResult? Function(_UpdateStatus value)? UpdateStatus,
    TResult? Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult? Function(_GetResultByDate value)? getResultByDate,
    TResult? Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
  }) {
    return getResultByDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetResult value)? getResult,
    TResult Function(_AddResult value)? addResult,
    TResult Function(_GetResultAll value)? getResultAll,
    TResult Function(_UpdateStatus value)? UpdateStatus,
    TResult Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult Function(_GetResultByDate value)? getResultByDate,
    TResult Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (getResultByDate != null) {
      return getResultByDate(this);
    }
    return orElse();
  }
}

abstract class _GetResultByDate implements ResultEvent {
  const factory _GetResultByDate(final String tanggal) = _$GetResultByDateImpl;

  String get tanggal;

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetResultByDateImplCopyWith<_$GetResultByDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetResultByDateForHomepageImplCopyWith<$Res> {
  factory _$$GetResultByDateForHomepageImplCopyWith(
          _$GetResultByDateForHomepageImpl value,
          $Res Function(_$GetResultByDateForHomepageImpl) then) =
      __$$GetResultByDateForHomepageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tanggal});
}

/// @nodoc
class __$$GetResultByDateForHomepageImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$GetResultByDateForHomepageImpl>
    implements _$$GetResultByDateForHomepageImplCopyWith<$Res> {
  __$$GetResultByDateForHomepageImplCopyWithImpl(
      _$GetResultByDateForHomepageImpl _value,
      $Res Function(_$GetResultByDateForHomepageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tanggal = null,
  }) {
    return _then(_$GetResultByDateForHomepageImpl(
      null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetResultByDateForHomepageImpl
    with DiagnosticableTreeMixin
    implements _GetResultByDateForHomepage {
  const _$GetResultByDateForHomepageImpl(this.tanggal);

  @override
  final String tanggal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultEvent.getResultByDateForHomepage(tanggal: $tanggal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ResultEvent.getResultByDateForHomepage'))
      ..add(DiagnosticsProperty('tanggal', tanggal));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetResultByDateForHomepageImpl &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tanggal);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetResultByDateForHomepageImplCopyWith<_$GetResultByDateForHomepageImpl>
      get copyWith => __$$GetResultByDateForHomepageImplCopyWithImpl<
          _$GetResultByDateForHomepageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getResult,
    required TResult Function(String status) addResult,
    required TResult Function() getResultAll,
    required TResult Function(ResultModel model) UpdateStatus,
    required TResult Function(String buId, String tanggal) getResultByDatelist,
    required TResult Function(String tanggal) getResultByDate,
    required TResult Function(String tanggal) getResultByDateForHomepage,
  }) {
    return getResultByDateForHomepage(tanggal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getResult,
    TResult? Function(String status)? addResult,
    TResult? Function()? getResultAll,
    TResult? Function(ResultModel model)? UpdateStatus,
    TResult? Function(String buId, String tanggal)? getResultByDatelist,
    TResult? Function(String tanggal)? getResultByDate,
    TResult? Function(String tanggal)? getResultByDateForHomepage,
  }) {
    return getResultByDateForHomepage?.call(tanggal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getResult,
    TResult Function(String status)? addResult,
    TResult Function()? getResultAll,
    TResult Function(ResultModel model)? UpdateStatus,
    TResult Function(String buId, String tanggal)? getResultByDatelist,
    TResult Function(String tanggal)? getResultByDate,
    TResult Function(String tanggal)? getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (getResultByDateForHomepage != null) {
      return getResultByDateForHomepage(tanggal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetResult value) getResult,
    required TResult Function(_AddResult value) addResult,
    required TResult Function(_GetResultAll value) getResultAll,
    required TResult Function(_UpdateStatus value) UpdateStatus,
    required TResult Function(_GetResultByDatelist value) getResultByDatelist,
    required TResult Function(_GetResultByDate value) getResultByDate,
    required TResult Function(_GetResultByDateForHomepage value)
        getResultByDateForHomepage,
  }) {
    return getResultByDateForHomepage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetResult value)? getResult,
    TResult? Function(_AddResult value)? addResult,
    TResult? Function(_GetResultAll value)? getResultAll,
    TResult? Function(_UpdateStatus value)? UpdateStatus,
    TResult? Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult? Function(_GetResultByDate value)? getResultByDate,
    TResult? Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
  }) {
    return getResultByDateForHomepage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetResult value)? getResult,
    TResult Function(_AddResult value)? addResult,
    TResult Function(_GetResultAll value)? getResultAll,
    TResult Function(_UpdateStatus value)? UpdateStatus,
    TResult Function(_GetResultByDatelist value)? getResultByDatelist,
    TResult Function(_GetResultByDate value)? getResultByDate,
    TResult Function(_GetResultByDateForHomepage value)?
        getResultByDateForHomepage,
    required TResult orElse(),
  }) {
    if (getResultByDateForHomepage != null) {
      return getResultByDateForHomepage(this);
    }
    return orElse();
  }
}

abstract class _GetResultByDateForHomepage implements ResultEvent {
  const factory _GetResultByDateForHomepage(final String tanggal) =
      _$GetResultByDateForHomepageImpl;

  String get tanggal;

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetResultByDateForHomepageImplCopyWith<_$GetResultByDateForHomepageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ResultModel result) loaded,
    required TResult Function(
            List<ResultModel> result, int OKCount, int NGCount)
        getAll,
    required TResult Function(String error) error,
    required TResult Function(ResultModel model) update,
    required TResult Function(ResultModel model) added,
    required TResult Function(List<ResultGet> result) loadedByDateList,
    required TResult Function(ResultModel result) loadedByDate,
    required TResult Function(ResultModel result) loadedByDateForHomepage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ResultModel result)? loaded,
    TResult? Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult? Function(String error)? error,
    TResult? Function(ResultModel model)? update,
    TResult? Function(ResultModel model)? added,
    TResult? Function(List<ResultGet> result)? loadedByDateList,
    TResult? Function(ResultModel result)? loadedByDate,
    TResult? Function(ResultModel result)? loadedByDateForHomepage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ResultModel result)? loaded,
    TResult Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult Function(String error)? error,
    TResult Function(ResultModel model)? update,
    TResult Function(ResultModel model)? added,
    TResult Function(List<ResultGet> result)? loadedByDateList,
    TResult Function(ResultModel result)? loadedByDate,
    TResult Function(ResultModel result)? loadedByDateForHomepage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Error value) error,
    required TResult Function(_Update value) update,
    required TResult Function(_Added value) added,
    required TResult Function(_LoadedByDateList value) loadedByDateList,
    required TResult Function(_LoadedByDate value) loadedByDate,
    required TResult Function(_LoadedByDateForHomepage value)
        loadedByDateForHomepage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Error value)? error,
    TResult? Function(_Update value)? update,
    TResult? Function(_Added value)? added,
    TResult? Function(_LoadedByDateList value)? loadedByDateList,
    TResult? Function(_LoadedByDate value)? loadedByDate,
    TResult? Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Error value)? error,
    TResult Function(_Update value)? update,
    TResult Function(_Added value)? added,
    TResult Function(_LoadedByDateList value)? loadedByDateList,
    TResult Function(_LoadedByDate value)? loadedByDate,
    TResult Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<$Res> {
  factory $ResultStateCopyWith(
          ResultState value, $Res Function(ResultState) then) =
      _$ResultStateCopyWithImpl<$Res, ResultState>;
}

/// @nodoc
class _$ResultStateCopyWithImpl<$Res, $Val extends ResultState>
    implements $ResultStateCopyWith<$Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultState
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
    extends _$ResultStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ResultState.initial'));
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
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ResultModel result) loaded,
    required TResult Function(
            List<ResultModel> result, int OKCount, int NGCount)
        getAll,
    required TResult Function(String error) error,
    required TResult Function(ResultModel model) update,
    required TResult Function(ResultModel model) added,
    required TResult Function(List<ResultGet> result) loadedByDateList,
    required TResult Function(ResultModel result) loadedByDate,
    required TResult Function(ResultModel result) loadedByDateForHomepage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ResultModel result)? loaded,
    TResult? Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult? Function(String error)? error,
    TResult? Function(ResultModel model)? update,
    TResult? Function(ResultModel model)? added,
    TResult? Function(List<ResultGet> result)? loadedByDateList,
    TResult? Function(ResultModel result)? loadedByDate,
    TResult? Function(ResultModel result)? loadedByDateForHomepage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ResultModel result)? loaded,
    TResult Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult Function(String error)? error,
    TResult Function(ResultModel model)? update,
    TResult Function(ResultModel model)? added,
    TResult Function(List<ResultGet> result)? loadedByDateList,
    TResult Function(ResultModel result)? loadedByDate,
    TResult Function(ResultModel result)? loadedByDateForHomepage,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Error value) error,
    required TResult Function(_Update value) update,
    required TResult Function(_Added value) added,
    required TResult Function(_LoadedByDateList value) loadedByDateList,
    required TResult Function(_LoadedByDate value) loadedByDate,
    required TResult Function(_LoadedByDateForHomepage value)
        loadedByDateForHomepage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Error value)? error,
    TResult? Function(_Update value)? update,
    TResult? Function(_Added value)? added,
    TResult? Function(_LoadedByDateList value)? loadedByDateList,
    TResult? Function(_LoadedByDate value)? loadedByDate,
    TResult? Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Error value)? error,
    TResult Function(_Update value)? update,
    TResult Function(_Added value)? added,
    TResult Function(_LoadedByDateList value)? loadedByDateList,
    TResult Function(_LoadedByDate value)? loadedByDate,
    TResult Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ResultState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ResultState.loading'));
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
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ResultModel result) loaded,
    required TResult Function(
            List<ResultModel> result, int OKCount, int NGCount)
        getAll,
    required TResult Function(String error) error,
    required TResult Function(ResultModel model) update,
    required TResult Function(ResultModel model) added,
    required TResult Function(List<ResultGet> result) loadedByDateList,
    required TResult Function(ResultModel result) loadedByDate,
    required TResult Function(ResultModel result) loadedByDateForHomepage,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ResultModel result)? loaded,
    TResult? Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult? Function(String error)? error,
    TResult? Function(ResultModel model)? update,
    TResult? Function(ResultModel model)? added,
    TResult? Function(List<ResultGet> result)? loadedByDateList,
    TResult? Function(ResultModel result)? loadedByDate,
    TResult? Function(ResultModel result)? loadedByDateForHomepage,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ResultModel result)? loaded,
    TResult Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult Function(String error)? error,
    TResult Function(ResultModel model)? update,
    TResult Function(ResultModel model)? added,
    TResult Function(List<ResultGet> result)? loadedByDateList,
    TResult Function(ResultModel result)? loadedByDate,
    TResult Function(ResultModel result)? loadedByDateForHomepage,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Error value) error,
    required TResult Function(_Update value) update,
    required TResult Function(_Added value) added,
    required TResult Function(_LoadedByDateList value) loadedByDateList,
    required TResult Function(_LoadedByDate value) loadedByDate,
    required TResult Function(_LoadedByDateForHomepage value)
        loadedByDateForHomepage,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Error value)? error,
    TResult? Function(_Update value)? update,
    TResult? Function(_Added value)? added,
    TResult? Function(_LoadedByDateList value)? loadedByDateList,
    TResult? Function(_LoadedByDate value)? loadedByDate,
    TResult? Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Error value)? error,
    TResult Function(_Update value)? update,
    TResult Function(_Added value)? added,
    TResult Function(_LoadedByDateList value)? loadedByDateList,
    TResult Function(_LoadedByDate value)? loadedByDate,
    TResult Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ResultState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl with DiagnosticableTreeMixin implements _Success {
  const _$SuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ResultState.success'));
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
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ResultModel result) loaded,
    required TResult Function(
            List<ResultModel> result, int OKCount, int NGCount)
        getAll,
    required TResult Function(String error) error,
    required TResult Function(ResultModel model) update,
    required TResult Function(ResultModel model) added,
    required TResult Function(List<ResultGet> result) loadedByDateList,
    required TResult Function(ResultModel result) loadedByDate,
    required TResult Function(ResultModel result) loadedByDateForHomepage,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ResultModel result)? loaded,
    TResult? Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult? Function(String error)? error,
    TResult? Function(ResultModel model)? update,
    TResult? Function(ResultModel model)? added,
    TResult? Function(List<ResultGet> result)? loadedByDateList,
    TResult? Function(ResultModel result)? loadedByDate,
    TResult? Function(ResultModel result)? loadedByDateForHomepage,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ResultModel result)? loaded,
    TResult Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult Function(String error)? error,
    TResult Function(ResultModel model)? update,
    TResult Function(ResultModel model)? added,
    TResult Function(List<ResultGet> result)? loadedByDateList,
    TResult Function(ResultModel result)? loadedByDate,
    TResult Function(ResultModel result)? loadedByDateForHomepage,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Error value) error,
    required TResult Function(_Update value) update,
    required TResult Function(_Added value) added,
    required TResult Function(_LoadedByDateList value) loadedByDateList,
    required TResult Function(_LoadedByDate value) loadedByDate,
    required TResult Function(_LoadedByDateForHomepage value)
        loadedByDateForHomepage,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Error value)? error,
    TResult? Function(_Update value)? update,
    TResult? Function(_Added value)? added,
    TResult? Function(_LoadedByDateList value)? loadedByDateList,
    TResult? Function(_LoadedByDate value)? loadedByDate,
    TResult? Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Error value)? error,
    TResult Function(_Update value)? update,
    TResult Function(_Added value)? added,
    TResult Function(_LoadedByDateList value)? loadedByDateList,
    TResult Function(_LoadedByDate value)? loadedByDate,
    TResult Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ResultState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResultModel result});

  $ResultModelCopyWith<$Res> get result;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$LoadedImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultModel,
    ));
  }

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultModelCopyWith<$Res> get result {
    return $ResultModelCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl with DiagnosticableTreeMixin implements _Loaded {
  const _$LoadedImpl(this.result);

  @override
  final ResultModel result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState.loaded(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState.loaded'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of ResultState
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
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ResultModel result) loaded,
    required TResult Function(
            List<ResultModel> result, int OKCount, int NGCount)
        getAll,
    required TResult Function(String error) error,
    required TResult Function(ResultModel model) update,
    required TResult Function(ResultModel model) added,
    required TResult Function(List<ResultGet> result) loadedByDateList,
    required TResult Function(ResultModel result) loadedByDate,
    required TResult Function(ResultModel result) loadedByDateForHomepage,
  }) {
    return loaded(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ResultModel result)? loaded,
    TResult? Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult? Function(String error)? error,
    TResult? Function(ResultModel model)? update,
    TResult? Function(ResultModel model)? added,
    TResult? Function(List<ResultGet> result)? loadedByDateList,
    TResult? Function(ResultModel result)? loadedByDate,
    TResult? Function(ResultModel result)? loadedByDateForHomepage,
  }) {
    return loaded?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ResultModel result)? loaded,
    TResult Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult Function(String error)? error,
    TResult Function(ResultModel model)? update,
    TResult Function(ResultModel model)? added,
    TResult Function(List<ResultGet> result)? loadedByDateList,
    TResult Function(ResultModel result)? loadedByDate,
    TResult Function(ResultModel result)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Error value) error,
    required TResult Function(_Update value) update,
    required TResult Function(_Added value) added,
    required TResult Function(_LoadedByDateList value) loadedByDateList,
    required TResult Function(_LoadedByDate value) loadedByDate,
    required TResult Function(_LoadedByDateForHomepage value)
        loadedByDateForHomepage,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Error value)? error,
    TResult? Function(_Update value)? update,
    TResult? Function(_Added value)? added,
    TResult? Function(_LoadedByDateList value)? loadedByDateList,
    TResult? Function(_LoadedByDate value)? loadedByDate,
    TResult? Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Error value)? error,
    TResult Function(_Update value)? update,
    TResult Function(_Added value)? added,
    TResult Function(_LoadedByDateList value)? loadedByDateList,
    TResult Function(_LoadedByDate value)? loadedByDate,
    TResult Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ResultState {
  const factory _Loaded(final ResultModel result) = _$LoadedImpl;

  ResultModel get result;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllImplCopyWith<$Res> {
  factory _$$GetAllImplCopyWith(
          _$GetAllImpl value, $Res Function(_$GetAllImpl) then) =
      __$$GetAllImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ResultModel> result, int OKCount, int NGCount});
}

/// @nodoc
class __$$GetAllImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$GetAllImpl>
    implements _$$GetAllImplCopyWith<$Res> {
  __$$GetAllImplCopyWithImpl(
      _$GetAllImpl _value, $Res Function(_$GetAllImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? OKCount = null,
    Object? NGCount = null,
  }) {
    return _then(_$GetAllImpl(
      null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>,
      null == OKCount
          ? _value.OKCount
          : OKCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == NGCount
          ? _value.NGCount
          : NGCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAllImpl with DiagnosticableTreeMixin implements _GetAll {
  const _$GetAllImpl(final List<ResultModel> result, this.OKCount, this.NGCount)
      : _result = result;

  final List<ResultModel> _result;
  @override
  List<ResultModel> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  final int OKCount;
  @override
  final int NGCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState.getAll(result: $result, OKCount: $OKCount, NGCount: $NGCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState.getAll'))
      ..add(DiagnosticsProperty('result', result))
      ..add(DiagnosticsProperty('OKCount', OKCount))
      ..add(DiagnosticsProperty('NGCount', NGCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllImpl &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.OKCount, OKCount) || other.OKCount == OKCount) &&
            (identical(other.NGCount, NGCount) || other.NGCount == NGCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_result), OKCount, NGCount);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllImplCopyWith<_$GetAllImpl> get copyWith =>
      __$$GetAllImplCopyWithImpl<_$GetAllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ResultModel result) loaded,
    required TResult Function(
            List<ResultModel> result, int OKCount, int NGCount)
        getAll,
    required TResult Function(String error) error,
    required TResult Function(ResultModel model) update,
    required TResult Function(ResultModel model) added,
    required TResult Function(List<ResultGet> result) loadedByDateList,
    required TResult Function(ResultModel result) loadedByDate,
    required TResult Function(ResultModel result) loadedByDateForHomepage,
  }) {
    return getAll(result, OKCount, NGCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ResultModel result)? loaded,
    TResult? Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult? Function(String error)? error,
    TResult? Function(ResultModel model)? update,
    TResult? Function(ResultModel model)? added,
    TResult? Function(List<ResultGet> result)? loadedByDateList,
    TResult? Function(ResultModel result)? loadedByDate,
    TResult? Function(ResultModel result)? loadedByDateForHomepage,
  }) {
    return getAll?.call(result, OKCount, NGCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ResultModel result)? loaded,
    TResult Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult Function(String error)? error,
    TResult Function(ResultModel model)? update,
    TResult Function(ResultModel model)? added,
    TResult Function(List<ResultGet> result)? loadedByDateList,
    TResult Function(ResultModel result)? loadedByDate,
    TResult Function(ResultModel result)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(result, OKCount, NGCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Error value) error,
    required TResult Function(_Update value) update,
    required TResult Function(_Added value) added,
    required TResult Function(_LoadedByDateList value) loadedByDateList,
    required TResult Function(_LoadedByDate value) loadedByDate,
    required TResult Function(_LoadedByDateForHomepage value)
        loadedByDateForHomepage,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Error value)? error,
    TResult? Function(_Update value)? update,
    TResult? Function(_Added value)? added,
    TResult? Function(_LoadedByDateList value)? loadedByDateList,
    TResult? Function(_LoadedByDate value)? loadedByDate,
    TResult? Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Error value)? error,
    TResult Function(_Update value)? update,
    TResult Function(_Added value)? added,
    TResult Function(_LoadedByDateList value)? loadedByDateList,
    TResult Function(_LoadedByDate value)? loadedByDate,
    TResult Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetAll implements ResultState {
  const factory _GetAll(final List<ResultModel> result, final int OKCount,
      final int NGCount) = _$GetAllImpl;

  List<ResultModel> get result;
  int get OKCount;
  int get NGCount;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllImplCopyWith<_$GetAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ResultStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
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

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState.error'))
      ..add(DiagnosticsProperty('error', error));
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

  /// Create a copy of ResultState
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
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ResultModel result) loaded,
    required TResult Function(
            List<ResultModel> result, int OKCount, int NGCount)
        getAll,
    required TResult Function(String error) error,
    required TResult Function(ResultModel model) update,
    required TResult Function(ResultModel model) added,
    required TResult Function(List<ResultGet> result) loadedByDateList,
    required TResult Function(ResultModel result) loadedByDate,
    required TResult Function(ResultModel result) loadedByDateForHomepage,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ResultModel result)? loaded,
    TResult? Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult? Function(String error)? error,
    TResult? Function(ResultModel model)? update,
    TResult? Function(ResultModel model)? added,
    TResult? Function(List<ResultGet> result)? loadedByDateList,
    TResult? Function(ResultModel result)? loadedByDate,
    TResult? Function(ResultModel result)? loadedByDateForHomepage,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ResultModel result)? loaded,
    TResult Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult Function(String error)? error,
    TResult Function(ResultModel model)? update,
    TResult Function(ResultModel model)? added,
    TResult Function(List<ResultGet> result)? loadedByDateList,
    TResult Function(ResultModel result)? loadedByDate,
    TResult Function(ResultModel result)? loadedByDateForHomepage,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Error value) error,
    required TResult Function(_Update value) update,
    required TResult Function(_Added value) added,
    required TResult Function(_LoadedByDateList value) loadedByDateList,
    required TResult Function(_LoadedByDate value) loadedByDate,
    required TResult Function(_LoadedByDateForHomepage value)
        loadedByDateForHomepage,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Error value)? error,
    TResult? Function(_Update value)? update,
    TResult? Function(_Added value)? added,
    TResult? Function(_LoadedByDateList value)? loadedByDateList,
    TResult? Function(_LoadedByDate value)? loadedByDate,
    TResult? Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Error value)? error,
    TResult Function(_Update value)? update,
    TResult Function(_Added value)? added,
    TResult Function(_LoadedByDateList value)? loadedByDateList,
    TResult Function(_LoadedByDate value)? loadedByDate,
    TResult Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ResultState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResultModel model});

  $ResultModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$UpdateImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ResultModel,
    ));
  }

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultModelCopyWith<$Res> get model {
    return $ResultModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$UpdateImpl with DiagnosticableTreeMixin implements _Update {
  const _$UpdateImpl(this.model);

  @override
  final ResultModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState.update(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState.update'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ResultModel result) loaded,
    required TResult Function(
            List<ResultModel> result, int OKCount, int NGCount)
        getAll,
    required TResult Function(String error) error,
    required TResult Function(ResultModel model) update,
    required TResult Function(ResultModel model) added,
    required TResult Function(List<ResultGet> result) loadedByDateList,
    required TResult Function(ResultModel result) loadedByDate,
    required TResult Function(ResultModel result) loadedByDateForHomepage,
  }) {
    return update(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ResultModel result)? loaded,
    TResult? Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult? Function(String error)? error,
    TResult? Function(ResultModel model)? update,
    TResult? Function(ResultModel model)? added,
    TResult? Function(List<ResultGet> result)? loadedByDateList,
    TResult? Function(ResultModel result)? loadedByDate,
    TResult? Function(ResultModel result)? loadedByDateForHomepage,
  }) {
    return update?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ResultModel result)? loaded,
    TResult Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult Function(String error)? error,
    TResult Function(ResultModel model)? update,
    TResult Function(ResultModel model)? added,
    TResult Function(List<ResultGet> result)? loadedByDateList,
    TResult Function(ResultModel result)? loadedByDate,
    TResult Function(ResultModel result)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Error value) error,
    required TResult Function(_Update value) update,
    required TResult Function(_Added value) added,
    required TResult Function(_LoadedByDateList value) loadedByDateList,
    required TResult Function(_LoadedByDate value) loadedByDate,
    required TResult Function(_LoadedByDateForHomepage value)
        loadedByDateForHomepage,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Error value)? error,
    TResult? Function(_Update value)? update,
    TResult? Function(_Added value)? added,
    TResult? Function(_LoadedByDateList value)? loadedByDateList,
    TResult? Function(_LoadedByDate value)? loadedByDate,
    TResult? Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Error value)? error,
    TResult Function(_Update value)? update,
    TResult Function(_Added value)? added,
    TResult Function(_LoadedByDateList value)? loadedByDateList,
    TResult Function(_LoadedByDate value)? loadedByDate,
    TResult Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements ResultState {
  const factory _Update(final ResultModel model) = _$UpdateImpl;

  ResultModel get model;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddedImplCopyWith<$Res> {
  factory _$$AddedImplCopyWith(
          _$AddedImpl value, $Res Function(_$AddedImpl) then) =
      __$$AddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResultModel model});

  $ResultModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$AddedImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$AddedImpl>
    implements _$$AddedImplCopyWith<$Res> {
  __$$AddedImplCopyWithImpl(
      _$AddedImpl _value, $Res Function(_$AddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$AddedImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ResultModel,
    ));
  }

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultModelCopyWith<$Res> get model {
    return $ResultModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$AddedImpl with DiagnosticableTreeMixin implements _Added {
  const _$AddedImpl(this.model);

  @override
  final ResultModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState.added(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState.added'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      __$$AddedImplCopyWithImpl<_$AddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ResultModel result) loaded,
    required TResult Function(
            List<ResultModel> result, int OKCount, int NGCount)
        getAll,
    required TResult Function(String error) error,
    required TResult Function(ResultModel model) update,
    required TResult Function(ResultModel model) added,
    required TResult Function(List<ResultGet> result) loadedByDateList,
    required TResult Function(ResultModel result) loadedByDate,
    required TResult Function(ResultModel result) loadedByDateForHomepage,
  }) {
    return added(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ResultModel result)? loaded,
    TResult? Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult? Function(String error)? error,
    TResult? Function(ResultModel model)? update,
    TResult? Function(ResultModel model)? added,
    TResult? Function(List<ResultGet> result)? loadedByDateList,
    TResult? Function(ResultModel result)? loadedByDate,
    TResult? Function(ResultModel result)? loadedByDateForHomepage,
  }) {
    return added?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ResultModel result)? loaded,
    TResult Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult Function(String error)? error,
    TResult Function(ResultModel model)? update,
    TResult Function(ResultModel model)? added,
    TResult Function(List<ResultGet> result)? loadedByDateList,
    TResult Function(ResultModel result)? loadedByDate,
    TResult Function(ResultModel result)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Error value) error,
    required TResult Function(_Update value) update,
    required TResult Function(_Added value) added,
    required TResult Function(_LoadedByDateList value) loadedByDateList,
    required TResult Function(_LoadedByDate value) loadedByDate,
    required TResult Function(_LoadedByDateForHomepage value)
        loadedByDateForHomepage,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Error value)? error,
    TResult? Function(_Update value)? update,
    TResult? Function(_Added value)? added,
    TResult? Function(_LoadedByDateList value)? loadedByDateList,
    TResult? Function(_LoadedByDate value)? loadedByDate,
    TResult? Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Error value)? error,
    TResult Function(_Update value)? update,
    TResult Function(_Added value)? added,
    TResult Function(_LoadedByDateList value)? loadedByDateList,
    TResult Function(_LoadedByDate value)? loadedByDate,
    TResult Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _Added implements ResultState {
  const factory _Added(final ResultModel model) = _$AddedImpl;

  ResultModel get model;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedByDateListImplCopyWith<$Res> {
  factory _$$LoadedByDateListImplCopyWith(_$LoadedByDateListImpl value,
          $Res Function(_$LoadedByDateListImpl) then) =
      __$$LoadedByDateListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ResultGet> result});
}

/// @nodoc
class __$$LoadedByDateListImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$LoadedByDateListImpl>
    implements _$$LoadedByDateListImplCopyWith<$Res> {
  __$$LoadedByDateListImplCopyWithImpl(_$LoadedByDateListImpl _value,
      $Res Function(_$LoadedByDateListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$LoadedByDateListImpl(
      null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ResultGet>,
    ));
  }
}

/// @nodoc

class _$LoadedByDateListImpl
    with DiagnosticableTreeMixin
    implements _LoadedByDateList {
  const _$LoadedByDateListImpl(final List<ResultGet> result) : _result = result;

  final List<ResultGet> _result;
  @override
  List<ResultGet> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState.loadedByDateList(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState.loadedByDateList'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedByDateListImpl &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedByDateListImplCopyWith<_$LoadedByDateListImpl> get copyWith =>
      __$$LoadedByDateListImplCopyWithImpl<_$LoadedByDateListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ResultModel result) loaded,
    required TResult Function(
            List<ResultModel> result, int OKCount, int NGCount)
        getAll,
    required TResult Function(String error) error,
    required TResult Function(ResultModel model) update,
    required TResult Function(ResultModel model) added,
    required TResult Function(List<ResultGet> result) loadedByDateList,
    required TResult Function(ResultModel result) loadedByDate,
    required TResult Function(ResultModel result) loadedByDateForHomepage,
  }) {
    return loadedByDateList(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ResultModel result)? loaded,
    TResult? Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult? Function(String error)? error,
    TResult? Function(ResultModel model)? update,
    TResult? Function(ResultModel model)? added,
    TResult? Function(List<ResultGet> result)? loadedByDateList,
    TResult? Function(ResultModel result)? loadedByDate,
    TResult? Function(ResultModel result)? loadedByDateForHomepage,
  }) {
    return loadedByDateList?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ResultModel result)? loaded,
    TResult Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult Function(String error)? error,
    TResult Function(ResultModel model)? update,
    TResult Function(ResultModel model)? added,
    TResult Function(List<ResultGet> result)? loadedByDateList,
    TResult Function(ResultModel result)? loadedByDate,
    TResult Function(ResultModel result)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (loadedByDateList != null) {
      return loadedByDateList(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Error value) error,
    required TResult Function(_Update value) update,
    required TResult Function(_Added value) added,
    required TResult Function(_LoadedByDateList value) loadedByDateList,
    required TResult Function(_LoadedByDate value) loadedByDate,
    required TResult Function(_LoadedByDateForHomepage value)
        loadedByDateForHomepage,
  }) {
    return loadedByDateList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Error value)? error,
    TResult? Function(_Update value)? update,
    TResult? Function(_Added value)? added,
    TResult? Function(_LoadedByDateList value)? loadedByDateList,
    TResult? Function(_LoadedByDate value)? loadedByDate,
    TResult? Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
  }) {
    return loadedByDateList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Error value)? error,
    TResult Function(_Update value)? update,
    TResult Function(_Added value)? added,
    TResult Function(_LoadedByDateList value)? loadedByDateList,
    TResult Function(_LoadedByDate value)? loadedByDate,
    TResult Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (loadedByDateList != null) {
      return loadedByDateList(this);
    }
    return orElse();
  }
}

abstract class _LoadedByDateList implements ResultState {
  const factory _LoadedByDateList(final List<ResultGet> result) =
      _$LoadedByDateListImpl;

  List<ResultGet> get result;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedByDateListImplCopyWith<_$LoadedByDateListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedByDateImplCopyWith<$Res> {
  factory _$$LoadedByDateImplCopyWith(
          _$LoadedByDateImpl value, $Res Function(_$LoadedByDateImpl) then) =
      __$$LoadedByDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResultModel result});

  $ResultModelCopyWith<$Res> get result;
}

/// @nodoc
class __$$LoadedByDateImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$LoadedByDateImpl>
    implements _$$LoadedByDateImplCopyWith<$Res> {
  __$$LoadedByDateImplCopyWithImpl(
      _$LoadedByDateImpl _value, $Res Function(_$LoadedByDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$LoadedByDateImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultModel,
    ));
  }

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultModelCopyWith<$Res> get result {
    return $ResultModelCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$LoadedByDateImpl with DiagnosticableTreeMixin implements _LoadedByDate {
  const _$LoadedByDateImpl(this.result);

  @override
  final ResultModel result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState.loadedByDate(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState.loadedByDate'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedByDateImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedByDateImplCopyWith<_$LoadedByDateImpl> get copyWith =>
      __$$LoadedByDateImplCopyWithImpl<_$LoadedByDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ResultModel result) loaded,
    required TResult Function(
            List<ResultModel> result, int OKCount, int NGCount)
        getAll,
    required TResult Function(String error) error,
    required TResult Function(ResultModel model) update,
    required TResult Function(ResultModel model) added,
    required TResult Function(List<ResultGet> result) loadedByDateList,
    required TResult Function(ResultModel result) loadedByDate,
    required TResult Function(ResultModel result) loadedByDateForHomepage,
  }) {
    return loadedByDate(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ResultModel result)? loaded,
    TResult? Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult? Function(String error)? error,
    TResult? Function(ResultModel model)? update,
    TResult? Function(ResultModel model)? added,
    TResult? Function(List<ResultGet> result)? loadedByDateList,
    TResult? Function(ResultModel result)? loadedByDate,
    TResult? Function(ResultModel result)? loadedByDateForHomepage,
  }) {
    return loadedByDate?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ResultModel result)? loaded,
    TResult Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult Function(String error)? error,
    TResult Function(ResultModel model)? update,
    TResult Function(ResultModel model)? added,
    TResult Function(List<ResultGet> result)? loadedByDateList,
    TResult Function(ResultModel result)? loadedByDate,
    TResult Function(ResultModel result)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (loadedByDate != null) {
      return loadedByDate(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Error value) error,
    required TResult Function(_Update value) update,
    required TResult Function(_Added value) added,
    required TResult Function(_LoadedByDateList value) loadedByDateList,
    required TResult Function(_LoadedByDate value) loadedByDate,
    required TResult Function(_LoadedByDateForHomepage value)
        loadedByDateForHomepage,
  }) {
    return loadedByDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Error value)? error,
    TResult? Function(_Update value)? update,
    TResult? Function(_Added value)? added,
    TResult? Function(_LoadedByDateList value)? loadedByDateList,
    TResult? Function(_LoadedByDate value)? loadedByDate,
    TResult? Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
  }) {
    return loadedByDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Error value)? error,
    TResult Function(_Update value)? update,
    TResult Function(_Added value)? added,
    TResult Function(_LoadedByDateList value)? loadedByDateList,
    TResult Function(_LoadedByDate value)? loadedByDate,
    TResult Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (loadedByDate != null) {
      return loadedByDate(this);
    }
    return orElse();
  }
}

abstract class _LoadedByDate implements ResultState {
  const factory _LoadedByDate(final ResultModel result) = _$LoadedByDateImpl;

  ResultModel get result;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedByDateImplCopyWith<_$LoadedByDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedByDateForHomepageImplCopyWith<$Res> {
  factory _$$LoadedByDateForHomepageImplCopyWith(
          _$LoadedByDateForHomepageImpl value,
          $Res Function(_$LoadedByDateForHomepageImpl) then) =
      __$$LoadedByDateForHomepageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResultModel result});

  $ResultModelCopyWith<$Res> get result;
}

/// @nodoc
class __$$LoadedByDateForHomepageImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$LoadedByDateForHomepageImpl>
    implements _$$LoadedByDateForHomepageImplCopyWith<$Res> {
  __$$LoadedByDateForHomepageImplCopyWithImpl(
      _$LoadedByDateForHomepageImpl _value,
      $Res Function(_$LoadedByDateForHomepageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$LoadedByDateForHomepageImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultModel,
    ));
  }

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultModelCopyWith<$Res> get result {
    return $ResultModelCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$LoadedByDateForHomepageImpl
    with DiagnosticableTreeMixin
    implements _LoadedByDateForHomepage {
  const _$LoadedByDateForHomepageImpl(this.result);

  @override
  final ResultModel result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState.loadedByDateForHomepage(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState.loadedByDateForHomepage'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedByDateForHomepageImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedByDateForHomepageImplCopyWith<_$LoadedByDateForHomepageImpl>
      get copyWith => __$$LoadedByDateForHomepageImplCopyWithImpl<
          _$LoadedByDateForHomepageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ResultModel result) loaded,
    required TResult Function(
            List<ResultModel> result, int OKCount, int NGCount)
        getAll,
    required TResult Function(String error) error,
    required TResult Function(ResultModel model) update,
    required TResult Function(ResultModel model) added,
    required TResult Function(List<ResultGet> result) loadedByDateList,
    required TResult Function(ResultModel result) loadedByDate,
    required TResult Function(ResultModel result) loadedByDateForHomepage,
  }) {
    return loadedByDateForHomepage(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ResultModel result)? loaded,
    TResult? Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult? Function(String error)? error,
    TResult? Function(ResultModel model)? update,
    TResult? Function(ResultModel model)? added,
    TResult? Function(List<ResultGet> result)? loadedByDateList,
    TResult? Function(ResultModel result)? loadedByDate,
    TResult? Function(ResultModel result)? loadedByDateForHomepage,
  }) {
    return loadedByDateForHomepage?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ResultModel result)? loaded,
    TResult Function(List<ResultModel> result, int OKCount, int NGCount)?
        getAll,
    TResult Function(String error)? error,
    TResult Function(ResultModel model)? update,
    TResult Function(ResultModel model)? added,
    TResult Function(List<ResultGet> result)? loadedByDateList,
    TResult Function(ResultModel result)? loadedByDate,
    TResult Function(ResultModel result)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (loadedByDateForHomepage != null) {
      return loadedByDateForHomepage(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Error value) error,
    required TResult Function(_Update value) update,
    required TResult Function(_Added value) added,
    required TResult Function(_LoadedByDateList value) loadedByDateList,
    required TResult Function(_LoadedByDate value) loadedByDate,
    required TResult Function(_LoadedByDateForHomepage value)
        loadedByDateForHomepage,
  }) {
    return loadedByDateForHomepage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Error value)? error,
    TResult? Function(_Update value)? update,
    TResult? Function(_Added value)? added,
    TResult? Function(_LoadedByDateList value)? loadedByDateList,
    TResult? Function(_LoadedByDate value)? loadedByDate,
    TResult? Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
  }) {
    return loadedByDateForHomepage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Error value)? error,
    TResult Function(_Update value)? update,
    TResult Function(_Added value)? added,
    TResult Function(_LoadedByDateList value)? loadedByDateList,
    TResult Function(_LoadedByDate value)? loadedByDate,
    TResult Function(_LoadedByDateForHomepage value)? loadedByDateForHomepage,
    required TResult orElse(),
  }) {
    if (loadedByDateForHomepage != null) {
      return loadedByDateForHomepage(this);
    }
    return orElse();
  }
}

abstract class _LoadedByDateForHomepage implements ResultState {
  const factory _LoadedByDateForHomepage(final ResultModel result) =
      _$LoadedByDateForHomepageImpl;

  ResultModel get result;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedByDateForHomepageImplCopyWith<_$LoadedByDateForHomepageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
