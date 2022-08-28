import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../data/models/current_forecast.dart';
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
            String location = 'Уновск';
            String response = await ApiClient.getLocation(location);
            // var response = await http.get(Uri.parse(
            //     // 'http://api.openweathermap.org/geo/1.0/direct?q=$location&limit=1&appid=b4e733eb5cecdff62ac9d5ee88c8830f'));
            //     'http://api.openweathermap.org/geo/1.0/direct?q=$location&limit=1&appid=b4e733eb5cecdff62ac9d5ee88c8830f'));
            print(response == '[]');
            // final forecastJson =
            //     await ApiClient.getCurrentForecast(lat, lon, accessKey);
            // final forecast =
            //     CurrentForecast.fromJsonOnResponse(jsonDecode(forecastJson));
            // print(forecast.listOfForecasts![0].humidity);
          },
          child: Text('Test'),
        ),
      ),
    );
  }
}
