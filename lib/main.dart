import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './interface/pages/tab_page.dart';

import './logic/bloc/app_bloc.dart';
import '../../logic/cubit/request_cubit/request_cubit.dart';
import './logic/cubit/current_forecast/current_forecast_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (context) => AppBloc(),
        ),
        BlocProvider<RequestCubit>(
          create: (context) => RequestCubit(),
        ),
        BlocProvider<CurrentForecastCubit>(
          create: (context) => CurrentForecastCubit(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TabPage(),
      ),
    );
  }
}

///https://api.openweathermap.org/data/2.5/weather?lat=54.308298&lon=48.382344&appid=b4e733eb5cecdff62ac9d5ee88c8830f
///https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}
///https://api.openweathermap.org/data/2.5/onecall?lat=54.308298&lon=48.382344&exclude=alerts,hourly,minutely&appid=b4e733eb5cecdff62ac9d5ee88c8830f&units=metric
///https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lon&exclude=alerts,hourly,minutely&appid=b4e733eb5cecdff62ac9d5ee88c8830f&units=metric
///54.308298
///48.382344
///b4e733eb5cecdff62ac9d5ee88c8830f


///http://api.openweathermap.org/geo/1.0/direct?q=$location&limit=1&appid=b4e733eb5cecdff62ac9d5ee88c8830f
///http://api.openweathermap.org/geo/1.0/direct?q=$Ульяновск&limit=1&appid=b4e733eb5cecdff62ac9d5ee88c8830f

