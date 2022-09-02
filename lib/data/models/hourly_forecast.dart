class HourlyForecast {
  String? iconId;
  int? dateTime;
  double? temp;
  double? tempFeelsLike;
  double? pressure;
  int? humidity;
  double? windSpeed;

  HourlyForecast.fromJsonOnResponse(Map<String, dynamic> json) {
    iconId = json['weather'][0]['icon'];
    dateTime = json['dt'];
    temp = json['temp'].toDouble();
    tempFeelsLike = json['feels_like'].toDouble();
    pressure = json['pressure'] / 1.33;
    humidity = json['humidity'];
    windSpeed = json['wind_speed'].toDouble();
  }
}
