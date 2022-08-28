import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/bloc/app_bloc.dart';

class RefreshButton extends StatelessWidget {
  const RefreshButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return IconButton(
          onPressed: () {
            context.read<AppBloc>().add(const AppEvent.refreshData());
          },
          icon: const Icon(Icons.refresh),
        );
      },
    );
  }
}
