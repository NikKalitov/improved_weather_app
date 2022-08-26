class DailyForecast {
  String? iconId;
  int? dateTime;
  double? dayTemp;
  double? nightTemp;
  double? dayTempFeelsLike;
  double? nightTempFeelsLike;
  double? pressure;
  int? humidity;
  double? windSpeed;

  DailyForecast.fromJsonOnResponse(Map<String, dynamic> json) {
    iconId = json['weather'][0]['icon'];
    dateTime = json['dt'];
    dayTemp = json['temp']['day'].toDouble();
    nightTemp = json['temp']['night'].toDouble();
    dayTempFeelsLike = json['feels_like']['day'].toDouble();
    nightTempFeelsLike = json['feels_like']['night'].toDouble();
    pressure = json['pressure'] / 1.33;
    humidity = json['humidity'];
    windSpeed = json['wind_speed'].toDouble();
  }

  // DailyForecast.fromJson(Map<String, dynamic> json) {
  //   iconId = json['iconId'];
  //   dateTime = json['dateTime'];
  //   dayTemp = json['dayTemp'];
  //   nightTemp = json['nightTemp'];
  //   dayTempFeelsLike = json['dayTempFeelsLike'];
  //   nightTempFeelsLike = json['nightTempFeelsLike'];
  //   pressure = json['pressure'];
  //   humidity = json['humidity'];
  //   windSpeed = json['windSpeed'];
  // }

  // static String toJson(DailyForecast forecast) {
  //   String json = '''{
  //     'iconId': ${forecast.iconId},
  //     'dateTime': ${forecast.dateTime},
  //     'dayTemp': ${forecast.dayTemp},
  //     'nightTemp': ${forecast.nightTemp},
  //     'dayTempFeelsLike': ${forecast.dayTempFeelsLike},
  //     'nightTempFeelsLike': ${forecast.nightTempFeelsLike},
  //     'pressure': ${forecast.pressure},
  //     'humidity': ${forecast.humidity},
  //     'windSpeed': ${forecast.windSpeed}
  //   }''';
  //   return json;
  // }
}
