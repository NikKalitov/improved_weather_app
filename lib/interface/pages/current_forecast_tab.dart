import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inproved_weather_app/interface/widgets/date_widget.dart';

import '../../logic/bloc/app_bloc.dart';
import '../../logic/cubit/current_forecast/current_forecast_cubit.dart';

class CurrentForecastTab extends StatelessWidget {
  const CurrentForecastTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, blocState) {
        return BlocBuilder<CurrentForecastCubit, CurrentForecastState>(
          builder: (context, cubitState) {
            context
                .read<CurrentForecastCubit>()
                .getTimeClass(blocState.currentForecast!.time!);
            // print(blocState.currentForecast!.time!);
            if (cubitState.isLoading! == false) {
              print(cubitState.timeClass!.day);
            }
            return Scaffold(
              backgroundColor: Colors.grey.shade400,
              body: Center(
                child: cubitState.isLoading! == true
                    ? const CircularProgressIndicator()
                    : DateWidget(timeClass: cubitState.timeClass!),
              ),
            );
          },
        );
      },
    );
  }
}
