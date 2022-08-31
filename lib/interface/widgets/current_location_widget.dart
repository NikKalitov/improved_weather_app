import 'package:flutter/material.dart';

class CurrentLocationWidget extends StatelessWidget {
  const CurrentLocationWidget({
    Key? key,
    required this.cityName,
    required this.countryName,
  }) : super(key: key);

  final String cityName;
  final String countryName;
  final TextStyle textStyle = const TextStyle(
    fontSize: 30,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        '$cityName, $countryName',
        style: textStyle,
      ),
    );
  }
}
