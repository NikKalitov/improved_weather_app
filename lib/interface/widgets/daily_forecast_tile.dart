import 'package:flutter/material.dart';

import '../../data/models/daily_forecast.dart';
import '../../data/models/time_class.dart';
import './custom_icon.dart';

class DailyForecastListItem extends StatelessWidget {
  const DailyForecastListItem({
    Key? key,
    required this.dailyForecast,
    required this.timeClass,
  }) : super(key: key);

  final DailyForecast dailyForecast;
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
            Text(
              '${timeClass.weekday}, ${timeClass.day} ${timeClass.month} ${timeClass.year} год',
              style: const TextStyle(
                fontSize: 23.0,
              ),
            ),
            CustomIcon(
              iconId: dailyForecast.iconId!,
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
                  '${dailyForecast.dayTemp}°C / ${dailyForecast.nightTemp}°C',
                  style: rightColumn,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  '${dailyForecast.dayTempFeelsLike}°C / ${dailyForecast.nightTempFeelsLike}°C',
                  style: rightColumn,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  '${dailyForecast.windSpeed} м/с',
                  style: rightColumn,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  '${dailyForecast.pressure!.floor()} мм',
                  style: rightColumn,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  '${dailyForecast.humidity}%',
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
