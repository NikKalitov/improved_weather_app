import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/daily_forecast_tile.dart';
import '../../logic/converters/time_converter.dart';

import '../../logic/bloc/app_bloc.dart';

class DailyForecastTab extends StatelessWidget {
  const DailyForecastTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey.shade400,
          body: Center(
            child: ListView.builder(
              itemCount: state.currentForecast!.listOfDailyForecasts!.length,
              itemBuilder: (context, index) {
                return DailyForecastListItem(
                  //передаем прогноз для строки списка
                  dailyForecast:
                      state.currentForecast!.listOfDailyForecasts![index],
                  //передаем дату в конвертированном виде
                  timeClass: TimeConverter.getDate(
                    state.currentForecast!.listOfDailyForecasts![index]
                        .dateTime!,
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
