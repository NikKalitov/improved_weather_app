import './daily_forecast.dart';
import './hourly_forecast.dart';

class CurrentForecast {
  String? iconID;
  List<dynamic>? listJsonDaily = [];
  List<DailyForecast>? listOfDailyForecasts = [];
  List<dynamic>? listJsonHourly = [];
  List<HourlyForecast>? listOfHourlyForecasts = [];
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
    this.listJsonDaily,
    this.listOfDailyForecasts,
    this.listJsonHourly,
    this.listOfHourlyForecasts,
    this.time,
  });

  CurrentForecast.fromJsonOnResponse(Map<String, dynamic> json) {
    currentTemp = json['current']['temp'].toDouble();
    currentWind = json['current']['wind_speed'].toDouble();
    currentPressure = json['current']['pressure'] / 1.33;
    currentHumidity = json['current']['humidity'];
    feelsLike = json['current']['feels_like'].toDouble();
    iconID = json['current']['weather'][0]['icon'];
    listJsonDaily = json['daily'];
    listJsonHourly = json['hourly'];
    for (int i = 0; i < listJsonDaily!.length; i++) {
      DailyForecast forecast =
          DailyForecast.fromJsonOnResponse(listJsonDaily![i]);
      listOfDailyForecasts!.add(forecast);
    }
    for (int i = 0; i < listJsonHourly!.length; i++) {
      HourlyForecast forecast =
          HourlyForecast.fromJsonOnResponse(listJsonHourly![i]);
      listOfHourlyForecasts!.add(forecast);
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
