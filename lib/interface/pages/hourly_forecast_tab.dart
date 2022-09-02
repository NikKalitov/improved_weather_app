import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/converters/time_converter.dart';
import '../widgets/hourly_forecast_tile.dart';

import '../../logic/bloc/app_bloc.dart';

class HourlyForecastTab extends StatelessWidget {
  const HourlyForecastTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey.shade400,
          body: Center(
            child: ListView.builder(
              itemCount: state.currentForecast!.listOfHourlyForecasts!.length,
              itemBuilder: (context, index) {
                return HourlyForecastListItem(
                  hourlyForecast:
                      state.currentForecast!.listOfHourlyForecasts![index],
                  timeClass: TimeConverter.getDate(
                    state.currentForecast!.listOfHourlyForecasts![index]
                        .dateTime!,
                  ),
                );
                // return DailyForecastListItem(
                //   //передаем прогноз для строки списка
                //   dailyForecast: state.currentForecast!.listOfForecasts![index],
                //   //передаем дату в конвертированном виде
                //   timeClass: TimeConverter.getDate(
                //     state.currentForecast!.listOfForecasts![index].dateTime!,
                //   ),
                // );
              },
            ),
          ),
        );
      },
    );
  }
}
