import './daily_forecast.dart';

class CurrentForecast {
  String? iconID;
  List<dynamic>? listJson = [];
  List<DailyForecast>? listOfForecasts = [];
  double? currentTemp;
  double? currentWind;
  int? currentHumidity;
  double? feelsLike;
  double? currentPressure;
  int? time;

  CurrentForecast({
    this.currentTemp,
    this.currentWind,
    this.currentHumidity,
    this.feelsLike,
    this.currentPressure,
    this.iconID,
    this.listJson,
    this.listOfForecasts,
    this.time,
  });

  CurrentForecast.fromJsonOnResponse(Map<String, dynamic> json) {
    currentTemp = json['current']['temp'].toDouble();
    currentWind = json['current']['wind_speed'].toDouble();
    currentPressure = json['current']['pressure'] / 1.33;
    currentHumidity = json['current']['humidity'];
    feelsLike = json['current']['feels_like'].toDouble();
    iconID = json['current']['weather'][0]['icon'];
    listJson = json['daily'];
    for (int i = 0; i < listJson!.length; i++) {
      DailyForecast forecast = DailyForecast.fromJsonOnResponse(listJson![i]);
      listOfForecasts!.add(forecast);
    }
    time = json['current']['dt'];
  }

  // static String toJson(CurrentForecast forecast) {
  //   String json = '''{
  //     'iconID': ${forecast.iconID},
  //     'currentTemp': ${forecast.currentTemp},
  //     'currentWind': ${forecast.currentWind},
  //     'currentHumidity': ${forecast.currentHumidity},
  //     'feelsLike': ${forecast.feelsLike},
  //     'currentPressure': ${forecast.currentPressure}
  //   }''';
  //   return json;
  // }
}
