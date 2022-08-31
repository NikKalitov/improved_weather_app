import 'package:flutter/material.dart';
import '../../data/models/time_class.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({
    Key? key,
    required this.timeClass,
  }) : super(key: key);

  final TimeClass timeClass;
  final TextStyle textStyle = const TextStyle(
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            const Text('Прогноз обновлен:'),
            Text(
              '${timeClass.weekday}, ${timeClass.day} ${timeClass.month} ${timeClass.year} год',
              style: textStyle,
            ),
            Text(
              '${timeClass.hour}:${timeClass.minutes}',
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
