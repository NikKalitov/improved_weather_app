import 'package:flutter/material.dart';

class CurrentTemperatureWidget extends StatelessWidget {
  const CurrentTemperatureWidget({
    Key? key,
    required this.temperature,
  }) : super(key: key);

  final String temperature;
  final TextStyle textStyle = const TextStyle(
    fontSize: 45,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Text(
        '$temperature °C',
        style: textStyle,
      ),
    );
  }
}
