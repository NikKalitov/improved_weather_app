import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/bloc/app_bloc.dart';

class CurrentForecastTab extends StatelessWidget {
  const CurrentForecastTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey.shade400,
          body: Container(),
        );
      },
    );
  }
}
