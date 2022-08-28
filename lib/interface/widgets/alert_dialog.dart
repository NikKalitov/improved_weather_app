import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/request_cubit.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    return BlocBuilder<RequestCubit, RequestState>(
      builder: (context, state) {
        return AlertDialog(
          backgroundColor: Colors.grey.shade400,
          title: Center(
            child: state.isLoading == true
                ? const Text('Загрузка')
                : const Text('Выберите город'),
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
                if (state.responseError == true) const Text('Ошибка запроса'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.blueGrey,
                        ),
                      ),
                      onPressed: () async {
                        await context
                            .read<RequestCubit>()
                            .checkResponse(textEditingController.text);
                        if (state.responseError == false) {
                          Navigator.of(context).pop();
                        }
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
            )
          ],
        );
      },
    );
  }
}
