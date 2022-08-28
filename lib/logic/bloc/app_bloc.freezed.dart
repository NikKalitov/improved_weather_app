// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshData,
    required TResult Function(String newLocation) locationChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshData,
    TResult Function(String newLocation)? locationChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshData,
    TResult Function(String newLocation)? locationChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) started,
    required TResult Function(_RefreshData value) refreshData,
    required TResult Function(_LocationChange value) locationChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? started,
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_LocationChange value)? locationChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? started,
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_LocationChange value)? locationChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AppEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshData,
    required TResult Function(String newLocation) locationChange,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshData,
    TResult Function(String newLocation)? locationChange,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshData,
    TResult Function(String newLocation)? locationChange,
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
    required TResult Function(_Loading value) started,
    required TResult Function(_RefreshData value) refreshData,
    required TResult Function(_LocationChange value) locationChange,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? started,
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_LocationChange value)? locationChange,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? started,
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_LocationChange value)? locationChange,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AppEvent {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_RefreshDataCopyWith<$Res> {
  factory _$$_RefreshDataCopyWith(
          _$_RefreshData value, $Res Function(_$_RefreshData) then) =
      __$$_RefreshDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshDataCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_RefreshDataCopyWith<$Res> {
  __$$_RefreshDataCopyWithImpl(
      _$_RefreshData _value, $Res Function(_$_RefreshData) _then)
      : super(_value, (v) => _then(v as _$_RefreshData));

  @override
  _$_RefreshData get _value => super._value as _$_RefreshData;
}

/// @nodoc

class _$_RefreshData implements _RefreshData {
  const _$_RefreshData();

  @override
  String toString() {
    return 'AppEvent.refreshData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshData,
    required TResult Function(String newLocation) locationChange,
  }) {
    return refreshData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshData,
    TResult Function(String newLocation)? locationChange,
  }) {
    return refreshData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshData,
    TResult Function(String newLocation)? locationChange,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) started,
    required TResult Function(_RefreshData value) refreshData,
    required TResult Function(_LocationChange value) locationChange,
  }) {
    return refreshData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? started,
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_LocationChange value)? locationChange,
  }) {
    return refreshData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? started,
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_LocationChange value)? locationChange,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(this);
    }
    return orElse();
  }
}

abstract class _RefreshData implements AppEvent {
  const factory _RefreshData() = _$_RefreshData;
}

/// @nodoc
abstract class _$$_LocationChangeCopyWith<$Res> {
  factory _$$_LocationChangeCopyWith(
          _$_LocationChange value, $Res Function(_$_LocationChange) then) =
      __$$_LocationChangeCopyWithImpl<$Res>;
  $Res call({String newLocation});
}

/// @nodoc
class __$$_LocationChangeCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_LocationChangeCopyWith<$Res> {
  __$$_LocationChangeCopyWithImpl(
      _$_LocationChange _value, $Res Function(_$_LocationChange) _then)
      : super(_value, (v) => _then(v as _$_LocationChange));

  @override
  _$_LocationChange get _value => super._value as _$_LocationChange;

  @override
  $Res call({
    Object? newLocation = freezed,
  }) {
    return _then(_$_LocationChange(
      newLocation: newLocation == freezed
          ? _value.newLocation
          : newLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationChange implements _LocationChange {
  const _$_LocationChange({required this.newLocation});

  @override
  final String newLocation;

  @override
  String toString() {
    return 'AppEvent.locationChange(newLocation: $newLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationChange &&
            const DeepCollectionEquality()
                .equals(other.newLocation, newLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newLocation));

  @JsonKey(ignore: true)
  @override
  _$$_LocationChangeCopyWith<_$_LocationChange> get copyWith =>
      __$$_LocationChangeCopyWithImpl<_$_LocationChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshData,
    required TResult Function(String newLocation) locationChange,
  }) {
    return locationChange(newLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshData,
    TResult Function(String newLocation)? locationChange,
  }) {
    return locationChange?.call(newLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshData,
    TResult Function(String newLocation)? locationChange,
    required TResult orElse(),
  }) {
    if (locationChange != null) {
      return locationChange(newLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) started,
    required TResult Function(_RefreshData value) refreshData,
    required TResult Function(_LocationChange value) locationChange,
  }) {
    return locationChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? started,
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_LocationChange value)? locationChange,
  }) {
    return locationChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? started,
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_LocationChange value)? locationChange,
    required TResult orElse(),
  }) {
    if (locationChange != null) {
      return locationChange(this);
    }
    return orElse();
  }
}

abstract class _LocationChange implements AppEvent {
  const factory _LocationChange({required final String newLocation}) =
      _$_LocationChange;

  String get newLocation;
  @JsonKey(ignore: true)
  _$$_LocationChangeCopyWith<_$_LocationChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  AppStatus? get appStatus => throw _privateConstructorUsedError;
  ConnectionStatus? get connectionStatus => throw _privateConstructorUsedError;
  CurrentForecast? get currentForecast => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  String? get forecastJson => throw _privateConstructorUsedError;
  String? get locationJson => throw _privateConstructorUsedError;
  bool? get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {AppStatus? appStatus,
      ConnectionStatus? connectionStatus,
      CurrentForecast? currentForecast,
      Location? location,
      String? forecastJson,
      String? locationJson,
      bool? hasError});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? appStatus = freezed,
    Object? connectionStatus = freezed,
    Object? currentForecast = freezed,
    Object? location = freezed,
    Object? forecastJson = freezed,
    Object? locationJson = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_value.copyWith(
      appStatus: appStatus == freezed
          ? _value.appStatus
          : appStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus?,
      connectionStatus: connectionStatus == freezed
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus?,
      currentForecast: currentForecast == freezed
          ? _value.currentForecast
          : currentForecast // ignore: cast_nullable_to_non_nullable
              as CurrentForecast?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      forecastJson: forecastJson == freezed
          ? _value.forecastJson
          : forecastJson // ignore: cast_nullable_to_non_nullable
              as String?,
      locationJson: locationJson == freezed
          ? _value.locationJson
          : locationJson // ignore: cast_nullable_to_non_nullable
              as String?,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AppStatus? appStatus,
      ConnectionStatus? connectionStatus,
      CurrentForecast? currentForecast,
      Location? location,
      String? forecastJson,
      String? locationJson,
      bool? hasError});
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, (v) => _then(v as _$_AppState));

  @override
  _$_AppState get _value => super._value as _$_AppState;

  @override
  $Res call({
    Object? appStatus = freezed,
    Object? connectionStatus = freezed,
    Object? currentForecast = freezed,
    Object? location = freezed,
    Object? forecastJson = freezed,
    Object? locationJson = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_$_AppState(
      appStatus: appStatus == freezed
          ? _value.appStatus
          : appStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus?,
      connectionStatus: connectionStatus == freezed
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus?,
      currentForecast: currentForecast == freezed
          ? _value.currentForecast
          : currentForecast // ignore: cast_nullable_to_non_nullable
              as CurrentForecast?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      forecastJson: forecastJson == freezed
          ? _value.forecastJson
          : forecastJson // ignore: cast_nullable_to_non_nullable
              as String?,
      locationJson: locationJson == freezed
          ? _value.locationJson
          : locationJson // ignore: cast_nullable_to_non_nullable
              as String?,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  _$_AppState(
      {this.appStatus,
      this.connectionStatus,
      this.currentForecast,
      this.location,
      this.forecastJson,
      this.locationJson,
      this.hasError});

  @override
  final AppStatus? appStatus;
  @override
  final ConnectionStatus? connectionStatus;
  @override
  final CurrentForecast? currentForecast;
  @override
  final Location? location;
  @override
  final String? forecastJson;
  @override
  final String? locationJson;
  @override
  final bool? hasError;

  @override
  String toString() {
    return 'AppState(appStatus: $appStatus, connectionStatus: $connectionStatus, currentForecast: $currentForecast, location: $location, forecastJson: $forecastJson, locationJson: $locationJson, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            const DeepCollectionEquality().equals(other.appStatus, appStatus) &&
            const DeepCollectionEquality()
                .equals(other.connectionStatus, connectionStatus) &&
            const DeepCollectionEquality()
                .equals(other.currentForecast, currentForecast) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.forecastJson, forecastJson) &&
            const DeepCollectionEquality()
                .equals(other.locationJson, locationJson) &&
            const DeepCollectionEquality().equals(other.hasError, hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appStatus),
      const DeepCollectionEquality().hash(connectionStatus),
      const DeepCollectionEquality().hash(currentForecast),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(forecastJson),
      const DeepCollectionEquality().hash(locationJson),
      const DeepCollectionEquality().hash(hasError));

  @JsonKey(ignore: true)
  @override
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  factory _AppState(
      {final AppStatus? appStatus,
      final ConnectionStatus? connectionStatus,
      final CurrentForecast? currentForecast,
      final Location? location,
      final String? forecastJson,
      final String? locationJson,
      final bool? hasError}) = _$_AppState;

  @override
  AppStatus? get appStatus;
  @override
  ConnectionStatus? get connectionStatus;
  @override
  CurrentForecast? get currentForecast;
  @override
  Location? get location;
  @override
  String? get forecastJson;
  @override
  String? get locationJson;
  @override
  bool? get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
