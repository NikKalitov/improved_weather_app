import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/date_widget.dart';
import '../widgets/current_temperature_widget.dart';
import '../widgets/current_location_widget.dart';
import '../widgets/current_additional_info.dart';

import '../../logic/bloc/app_bloc.dart';
import '../../logic/cubit/current_forecast/current_forecast_cubit.dart';
import '../widgets/custom_icon.dart';

class CurrentForecastTab extends StatelessWidget {
  const CurrentForecastTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, blocState) {
        return Scaffold(
          backgroundColor: Colors.grey.shade400,
          body: Center(
            //кубит для вкладки с текущим прогнозом
            child: BlocBuilder<CurrentForecastCubit, CurrentForecastState>(
              builder: (context, cubitState) {
                //вызываем метод для получения времени запроса
                context
                    .read<CurrentForecastCubit>()
                    .getTimeClass(blocState.currentForecast!.time!);
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //виджет показывает данные о местонахождении
                      CurrentLocationWidget(
                        cityName: blocState.location!.locationName!,
                        countryName: blocState.location!.countryName!,
                      ),
                      //выводим время запроса с условием, что кубит загружен
                      !(context.read<CurrentForecastCubit>().state.isLoading!)
                          ? DateWidget(
                              timeClass: context
                                  .read<CurrentForecastCubit>()
                                  .state
                                  .timeClass!,
                            )
                          : const CircularProgressIndicator(),
                      //виджет с иконкой погоды
                      CustomIcon(
                        iconId: blocState.currentForecast!.iconID!,
                        scale: 0.65,
                      ),
                      //текущая температура
                      CurrentTemperatureWidget(
                        temperature:
                            blocState.currentForecast!.currentTemp.toString(),
                      ),
                      //разделитель
                      const Divider(thickness: 8.0),
                      //дополнительная информация
                      CurrentAdditionalInfo(
                        currentForecast: blocState.currentForecast!,
                      ),
                    ],
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
