part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.started() = _Loading;
  const factory AppEvent.refreshData() = _RefreshData;
  const factory AppEvent.locationChange() = _LocationChange;
}
