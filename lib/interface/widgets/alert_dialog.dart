import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/bloc/app_bloc.dart';
import '../../logic/cubit/request_cubit/request_cubit.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    return BlocBuilder<AppBloc, AppState>(
      builder: (context, blocState) {
        return BlocBuilder<RequestCubit, RequestState>(
          builder: (context, cubitState) {
            return AlertDialog(
              backgroundColor: Colors.grey.shade400,
              title: Center(
                child: cubitState.isLoading == true
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
                    if (cubitState.responseError == true)
                      const Text('Ошибка запроса'),
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
                            //используем cubit для проверки введенных данных
                            await context
                                .read<RequestCubit>()
                                .checkResponse(textEditingController.text)
                                .then((result) {
                              if (result == false) {
                                //если всё нормально, то вызываем event обновления локации
                                context.read<AppBloc>().add(
                                      AppEvent.locationChange(
                                        newLocation: textEditingController.text,
                                      ),
                                    );
                                //и закрываем диалоговое окно
                                Navigator.of(context).pop();
                              } else {
                                null;
                              }
                            });
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
      },
    );
  }
}
