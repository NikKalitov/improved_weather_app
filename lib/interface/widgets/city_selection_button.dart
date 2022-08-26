import 'package:flutter/material.dart';

import 'alert_dialog.dart';

class CitySelectionButton extends StatelessWidget {
  const CitySelectionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return MyAlertDialog();
          },
        );
      },
      icon: const Icon(Icons.location_on_sharp),
    );
  }
}
