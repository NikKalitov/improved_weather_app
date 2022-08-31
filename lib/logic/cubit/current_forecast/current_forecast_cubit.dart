import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inproved_weather_app/logic/converters/time_converter.dart';
import '../../../data/models/time_class.dart';

part 'current_forecast_state.dart';
part 'current_forecast_cubit.freezed.dart';

class CurrentForecastCubit extends Cubit<CurrentForecastState> {
  CurrentForecastCubit()
      : super(const CurrentForecastState.initial(
          isLoading: true,
        ));

  void getTimeClass(int timeStamp) {
    TimeClass timeClass = TimeConverter.getDate(timeStamp);
    emit(state.copyWith(
      isLoading: false,
      timeClass: timeClass,
      timeStamp: timeStamp,
    ));
  }
}
