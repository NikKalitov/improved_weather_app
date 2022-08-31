// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:connectivity_plus/connectivity_plus.dart';

class ApiClient {
  static Future<bool> checkConnectivity() async {
    bool value = true;
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      value = false;
    }
    return value;
  }

  static Future<String> getCurrentForecast(
      double lat, double lon, String key) async {
    String returnValue = '';
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lon&exclude=alerts,hourly,minutely&appid=$key&units=metric'));
    final json = response.body;
    if (response.statusCode == 200) {
      returnValue = json;
    }
    return returnValue;
  }

  static Future<String> getLocation(String location) async {
    String returnValue = '';
    var response = await http.get(Uri.parse(
        'http://api.openweathermap.org/geo/1.0/direct?q=$location&limit=1&appid=b4e733eb5cecdff62ac9d5ee88c8830f'));
    var json = response.body;
    if (response.statusCode == 200) {
      returnValue = json;
    }
    return returnValue;
  }
}
