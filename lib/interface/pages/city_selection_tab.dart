import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/alert_dialog.dart';
import '../../logic/bloc/app_bloc.dart';

class CitySelectionTab extends StatelessWidget {
  CitySelectionTab({Key? key}) : super(key: key);

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey.shade400,
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return MyAlertDialog();
                    // return AlertDialog(
                    //   backgroundColor: Colors.grey.shade400,
                    //   title: const Center(
                    //     child: Text('Выберите город'),
                    //   ),
                    //   actionsAlignment: MainAxisAlignment.center,
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    //   actions: [
                    //     Column(
                    //       children: [
                    //         TextField(
                    //           controller: textEditingController,
                    //           textAlign: TextAlign.start,
                    //           textCapitalization: TextCapitalization.characters,
                    //           maxLines: 1,
                    //           decoration: const InputDecoration(
                    //             hintText: 'Введите название города',
                    //             icon: Icon(
                    //               Icons.location_city_outlined,
                    //               color: Colors.blueGrey,
                    //             ),
                    //           ),
                    //         ),
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: [
                    //             ElevatedButton(
                    //               style: ButtonStyle(
                    //                 backgroundColor: MaterialStateProperty.all(
                    //                   Colors.blueGrey,
                    //                 ),
                    //               ),
                    //               onPressed: () {
                    //                 Navigator.of(context).pop();
                    //               },
                    //               child: const Text('OK'),
                    //             ),
                    //             ElevatedButton(
                    //               style: ButtonStyle(
                    //                 backgroundColor: MaterialStateProperty.all(
                    //                   Colors.blueGrey,
                    //                 ),
                    //               ),
                    //               onPressed: () {
                    //                 Navigator.of(context).pop();
                    //               },
                    //               child: const Text('Отмена'),
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // );
                  },
                );
              },
              child: Text('Dialog'),
            ),
          ),

          // body: Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       const Text('Выберите город'),
          //       TextField(
          //         controller: textEditingController,
          //         textAlign: TextAlign.center,
          //         textCapitalization: TextCapitalization.characters,
          //         maxLines: 1,
          //         decoration: InputDecoration(
          //           hintText: 'Введите название города',
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          // body: SingleChildScrollView(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       SizedBox(height: 100),
          //       Text('Выберите город'),
          //       TextField(),
          //     ],
          //   ),
          // ),
        );
      },
    );
  }
}
