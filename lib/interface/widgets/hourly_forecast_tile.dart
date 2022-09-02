import 'package:flutter/material.dart';

import '../../data/models/hourly_forecast.dart';
import '../../data/models/time_class.dart';
import './custom_icon.dart';

class HourlyForecastListItem extends StatelessWidget {
  const HourlyForecastListItem({
    Key? key,
    required this.hourlyForecast,
    required this.timeClass,
  }) : super(key: key);

  final HourlyForecast hourlyForecast;
  final TimeClass timeClass;

  final TextStyle leftColumn = const TextStyle(
      fontWeight: FontWeight.w600, fontSize: 16.0, fontStyle: FontStyle.italic);
  final TextStyle rightColumn = const TextStyle(
      fontWeight: FontWeight.w400, fontSize: 16.0, color: Colors.black);
  final TextStyle dateStyle = const TextStyle(
      fontWeight: FontWeight.w400, fontSize: 20.0, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  '${timeClass.weekday}, ${timeClass.day} ${timeClass.month} ${timeClass.year} год',
                  style: const TextStyle(
                    fontSize: 23.0,
                  ),
                ),
                Text(
                  '${timeClass.hour}:${timeClass.minutes}',
                  style: const TextStyle(
                    fontSize: 23.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            CustomIcon(
              iconId: hourlyForecast.iconId!,
              scale: 1.5,
            ),
            //Icon(Icons.ac_unit),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Температура',
                  style: leftColumn,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text('Ощущение', style: leftColumn),
                const SizedBox(
                  height: 5.0,
                ),
                Text('Ветер', style: leftColumn),
                const SizedBox(
                  height: 5.0,
                ),
                Text('Давление', style: leftColumn),
                const SizedBox(
                  height: 5.0,
                ),
                Text('Влажность', style: leftColumn),
                //SizedBox(height: 5.0,),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${hourlyForecast.temp}°C',
                  style: rightColumn,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  '${hourlyForecast.tempFeelsLike}°C',
                  style: rightColumn,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  '${hourlyForecast.windSpeed} м/с',
                  style: rightColumn,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  '${hourlyForecast.pressure!.floor()} мм',
                  style: rightColumn,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  '${hourlyForecast.humidity}%',
                  style: rightColumn,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
