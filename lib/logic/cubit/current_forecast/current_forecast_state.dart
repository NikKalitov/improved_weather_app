part of 'current_forecast_cubit.dart';

@freezed
class CurrentForecastState with _$CurrentForecastState {
  const factory CurrentForecastState.initial({
    bool? isLoading,
    int? timeStamp,
    TimeClass? timeClass,
  }) = _Initial;
}
