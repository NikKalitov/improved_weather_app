import 'package:flutter/material.dart';
import '../../data/models/time_class.dart';
import '../../logic/converters/time_converter.dart';

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
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Column(
          children: [
            Text(
              '${timeClass.day} ${timeClass.month} ${timeClass.year} год',
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
