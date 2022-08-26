import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:inproved_weather_app/data/models/current_forecast.dart';
import '../../data/api/api_client.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  final double lat = 54.308298;
  final double lon = 48.382344;
  final String accessKey = 'b4e733eb5cecdff62ac9d5ee88c8830f';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final forecastJson =
                await ApiClient.getCurrentForecast(lat, lon, accessKey);
            final forecast =
                CurrentForecast.fromJsonOnResponse(jsonDecode(forecastJson));
            print(forecast.listOfForecasts![0].humidity);
          },
          child: Text('Test'),
        ),
      ),
    );
  }
}
