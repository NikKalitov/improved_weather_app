import 'package:flutter/material.dart';
import '../../data/models/current_forecast.dart';

class CurrentAdditionalInfo extends StatelessWidget {
  const CurrentAdditionalInfo({
    Key? key,
    required this.currentForecast,
  }) : super(key: key);

  final CurrentForecast currentForecast;

  final TextStyle titleFont = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 15.0,
    fontStyle: FontStyle.italic,
  );

  final TextStyle infoFont = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15.0,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Ветер',
                    style: titleFont,
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    'Давление',
                    style: titleFont,
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '${currentForecast.currentWind.toString()} м/с',
                    style: infoFont,
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    '${currentForecast.currentPressure!.floor().toString()} мм',
                    style: infoFont,
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Влажность',
                    style: titleFont,
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    'Ощущение',
                    style: titleFont,
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '${currentForecast.currentHumidity!.toString()} %',
                    style: infoFont,
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    '${currentForecast.feelsLike!.toString()} °C',
                    style: infoFont,
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
