import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    return AlertDialog(
      backgroundColor: Colors.grey.shade400,
      title: const Center(
        child: Text('Выберите город'),
      ),
      actionsAlignment: MainAxisAlignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      actions: [
        Column(
          children: [
            TextField(
              controller: textEditingController,
              textAlign: TextAlign.start,
              textCapitalization: TextCapitalization.characters,
              maxLines: 1,
              decoration: const InputDecoration(
                hintText: 'Введите название города',
                icon: Icon(
                  Icons.location_city_outlined,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blueGrey,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blueGrey,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Отмена'),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
