// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_forecast_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentForecastState {
  bool? get isLoading => throw _privateConstructorUsedError;
  int? get timeStamp => throw _privateConstructorUsedError;
  TimeClass? get timeClass => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool? isLoading, int? timeStamp, TimeClass? timeClass)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? isLoading, int? timeStamp, TimeClass? timeClass)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLoading, int? timeStamp, TimeClass? timeClass)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentForecastStateCopyWith<CurrentForecastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentForecastStateCopyWith<$Res> {
  factory $CurrentForecastStateCopyWith(CurrentForecastState value,
          $Res Function(CurrentForecastState) then) =
      _$CurrentForecastStateCopyWithImpl<$Res>;
  $Res call({bool? isLoading, int? timeStamp, TimeClass? timeClass});
}

/// @nodoc
class _$CurrentForecastStateCopyWithImpl<$Res>
    implements $CurrentForecastStateCopyWith<$Res> {
  _$CurrentForecastStateCopyWithImpl(this._value, this._then);

  final CurrentForecastState _value;
  // ignore: unused_field
  final $Res Function(CurrentForecastState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? timeStamp = freezed,
    Object? timeClass = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as int?,
      timeClass: timeClass == freezed
          ? _value.timeClass
          : timeClass // ignore: cast_nullable_to_non_nullable
              as TimeClass?,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $CurrentForecastStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool? isLoading, int? timeStamp, TimeClass? timeClass});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CurrentForecastStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? timeStamp = freezed,
    Object? timeClass = freezed,
  }) {
    return _then(_$_Initial(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as int?,
      timeClass: timeClass == freezed
          ? _value.timeClass
          : timeClass // ignore: cast_nullable_to_non_nullable
              as TimeClass?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.isLoading, this.timeStamp, this.timeClass});

  @override
  final bool? isLoading;
  @override
  final int? timeStamp;
  @override
  final TimeClass? timeClass;

  @override
  String toString() {
    return 'CurrentForecastState.initial(isLoading: $isLoading, timeStamp: $timeStamp, timeClass: $timeClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.timeStamp, timeStamp) &&
            const DeepCollectionEquality().equals(other.timeClass, timeClass));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(timeStamp),
      const DeepCollectionEquality().hash(timeClass));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool? isLoading, int? timeStamp, TimeClass? timeClass)
        initial,
  }) {
    return initial(isLoading, timeStamp, timeClass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? isLoading, int? timeStamp, TimeClass? timeClass)?
        initial,
  }) {
    return initial?.call(isLoading, timeStamp, timeClass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLoading, int? timeStamp, TimeClass? timeClass)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading, timeStamp, timeClass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CurrentForecastState {
  const factory _Initial(
      {final bool? isLoading,
      final int? timeStamp,
      final TimeClass? timeClass}) = _$_Initial;

  @override
  bool? get isLoading;
  @override
  int? get timeStamp;
  @override
  TimeClass? get timeClass;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
