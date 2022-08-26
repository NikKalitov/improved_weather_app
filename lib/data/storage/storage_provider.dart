import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefProvider {
  static Future<void> saveForecast(String forecastJson) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('forecastJson', forecastJson);
  }

  static Future<void> saveLocation(String locationJson) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('locationJson', locationJson);
  }

  static Future<void> saveKey() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('key', 'b4e733eb5cecdff62ac9d5ee88c8830f');
  }

  static Future<String> getForecast() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String json = '';
    if (sharedPreferences.containsKey('forecastJson')) {
      json = sharedPreferences.getString('forecastJson')!;
    } else {
      json =
          '''{"lat":54.3083,"lon":48.3823,"timezone":"Europe/Ulyanovsk","timezone_offset":14400,"current":{"dt":1661522339,"sunrise":1661478174,"sunset":1661529257,"temp":29.49,"feels_like":28.83,"pressure":1022,"humidity":37,"dew_point":13.28,"uvi":0.47,"clouds":7,"visibility":10000,"wind_speed":2.65,"wind_deg":46,"wind_gust":2.88,"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}]},"daily":[{"dt":1661500800,"sunrise":1661478174,"sunset":1661529257,"moonrise":1661471520,"moonset":1661530140,"moon_phase":0.97,"temp":{"day":24.33,"min":18.68,"max":29.49,"night":22.25,"eve":29.49,"morn":18.68},"feels_like":{"day":23.99,"night":21.76,"eve":28.83,"morn":18.12},"pressure":1024,"humidity":45,"dew_point":11.27,"wind_speed":2.69,"wind_deg":45,"wind_gust":2.98,"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":7,"pop":0,"uvi":4.8},{"dt":1661587200,"sunrise":1661564683,"sunset":1661615514,"moonrise":1661562600,"moonset":1661617320,"moon_phase":0,"temp":{"day":25.22,"min":20.43,"max":26.37,"night":21.21,"eve":26.37,"morn":20.53},"feels_like":{"day":24.87,"night":20.67,"eve":26.37,"morn":19.97},"pressure":1024,"humidity":41,"dew_point":10.67,"wind_speed":3.67,"wind_deg":48,"wind_gust":6.07,"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":45,"pop":0,"uvi":4.79},{"dt":1661673600,"sunrise":1661651192,"sunset":1661701771,"moonrise":1661653680,"moonset":1661704380,"moon_phase":0.03,"temp":{"day":26.05,"min":19.14,"max":28.03,"night":23.68,"eve":27.22,"morn":19.14},"feels_like":{"day":26.05,"night":23.12,"eve":26.73,"morn":18.42},"pressure":1021,"humidity":37,"dew_point":9.81,"wind_speed":2.81,"wind_deg":132,"wind_gust":3.78,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":100,"pop":0,"uvi":4.07},{"dt":1661760000,"sunrise":1661737700,"sunset":1661788027,"moonrise":1661744760,"moonset":1661791320,"moon_phase":0.06,"temp":{"day":27.52,"min":22.04,"max":29.38,"night":24.36,"eve":26.69,"morn":22.07},"feels_like":{"day":26.85,"night":23.82,"eve":26.39,"morn":21.38},"pressure":1018,"humidity":32,"dew_point":8.72,"wind_speed":4.87,"wind_deg":136,"wind_gust":8.38,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":100,"pop":0,"uvi":3.17},{"dt":1661846400,"sunrise":1661824209,"sunset":1661874282,"moonrise":1661835840,"moonset":1661878260,"moon_phase":0.1,"temp":{"day":28.06,"min":22.92,"max":29.93,"night":22.92,"eve":27.03,"morn":26.19},"feels_like":{"day":27.14,"night":22.63,"eve":26.79,"morn":26.19},"pressure":1009,"humidity":30,"dew_point":8.47,"wind_speed":8.1,"wind_deg":218,"wind_gust":12.2,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":98,"pop":0.01,"uvi":2.98},{"dt":1661932800,"sunrise":1661910717,"sunset":1661960537,"moonrise":1661927040,"moonset":1661965320,"moon_phase":0.13,"temp":{"day":26.58,"min":20.25,"max":26.89,"night":20.59,"eve":24.75,"morn":20.25},"feels_like":{"day":26.58,"night":20.3,"eve":24.4,"morn":19.92},"pressure":1006,"humidity":37,"dew_point":10.45,"wind_speed":6.84,"wind_deg":261,"wind_gust":10.09,"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":26,"pop":0.12,"uvi":3},{"dt":1662019200,"sunrise":1661997225,"sunset":1662046791,"moonrise":1662018480,"moonset":1662052440,"moon_phase":0.17,"temp":{"day":23.95,"min":16.02,"max":24.77,"night":17.4,"eve":18.79,"morn":16.15},"feels_like":{"day":23.52,"night":17.26,"eve":18.66,"morn":15.83},"pressure":1007,"humidity":43,"dew_point":10.22,"wind_speed":8.12,"wind_deg":211,"wind_gust":13.97,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":100,"pop":0.21,"uvi":3},{"dt":1662105600,"sunrise":1662083734,"sunset":1662133044,"moonrise":1662110100,"moonset":1662139860,"moon_phase":0.2,"temp":{"day":14.29,"min":10.52,"max":17.02,"night":10.52,"eve":14.05,"morn":15.71},"feels_like":{"day":13,"night":9.01,"eve":12.58,"morn":15.63},"pressure":1006,"humidity":47,"dew_point":3.26,"wind_speed":9.38,"wind_deg":278,"wind_gust":12.61,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":46,"pop":0.72,"rain":2.73,"uvi":3}]}''';
    }
    return json;
  }

  static Future<String> getLocation() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String json = '';
    if (sharedPreferences.containsKey('locationJson')) {
      json = sharedPreferences.getString('locationJson')!;
    } else {
      json =
          '''[{"name":"Ulyanovsk","local_names":{"ro":"Ulianovsk","ru":"Ульяновск","ascii":"Ul'yanovsk","ko":"울리야놉스크","es":"Uliánovsk","ka":"ულიანოვსკი","sk":"Ulianovsk","cv":"Чӗмпӗр","pl":"Uljanowsk","ja":"ウリヤノフスク","uk":"Ульяновськ","hy":"Ուլյանովսկ","feature_name":"Ul'yanovsk","ca":"Uliànovsk","be":"Ульянаўск","fi":"Uljanovsk","el":"Ουλιάνοφσκ","lt":"Uljanovskas","ar":"أوليانوفسك","de":"Uljanowsk","tt":"Сембер","hr":"Uljanovsk","en":"Ulyanovsk","fr":"Oulianovsk","et":"Uljanovsk","cu":"Оулиꙗновьскъ"},"lat":54.3107593,"lon":48.3642771,"country":"RU","state":"Ulyanovsk Oblast"}]''';
    }
    return json;
  }

  static Future<String> getKey() async {
    // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String key = '60dacc2590f38d9b2eac630a37d74e5e';
    // if (sharedPreferences.containsKey('key')) {
    //   key = sharedPreferences.getString('key')!;
    // } else {
    //   key = 'b4e733eb5cecdff62ac9d5ee88c8830f';
    // }
    return key;
  }
}
