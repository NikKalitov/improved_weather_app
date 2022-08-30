import 'package:flutter/material.dart';

import 'alert_dialog.dart';

class CitySelectionButton extends StatelessWidget {
  const CitySelectionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //кнопка вызывает диалоговое окно с выбором города
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return const MyAlertDialog();
          },
        );
      },
      icon: const Icon(Icons.location_on_sharp),
    );
  }
}
