part of 'app_bloc.dart';

enum AppStatus {
  loading,
  loaded,
}

enum ConnectionStatus {
  online,
  offline,
  unknown,
}

@freezed
class AppState with _$AppState {
  factory AppState({
    AppStatus? appStatus,
    ConnectionStatus? connectionStatus,
    CurrentForecast? currentForecast,
    Location? location,
    String? forecastJson,
    String? locationJson,
  }) = _AppState;
}
