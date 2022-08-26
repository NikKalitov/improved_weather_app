class Location {
  double? lat;
  double? lon;
  String? locationName;
  String? countryName;

  Location({this.lat, this.lon, this.locationName, this.countryName});

  Location.fromJsonOnResponse(List<dynamic> json) {
    lat = json[0]['lat'];
    lon = json[0]['lon'];
    locationName = json[0]['local_names']['ru'];
    countryName = json[0]['country'];
  }

  // Location.fromJson(Map<String, dynamic> json) {
  //   lat = json['lat'];
  //   lon = json['lon'];
  //   locationName = json['locationName'];
  //   countryName = json['countryName'];
  // }

  // static String toJson(Location location) {
  //   String json = '''{
  //     'lat': ${location.lat},
  //     'lon': ${location.lon},
  //     'locationName': ${location.locationName},
  //     'countryName': ${location.countryName}
  //   }''';
  //   return json;
  // }
}
