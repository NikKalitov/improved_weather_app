import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/city_selection_button.dart';
import '../../logic/bloc/app_bloc.dart';
import '../widgets/refresh_button.dart';
import './current_forecast_tab.dart';
import './daily_forecast_tab.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Погода'),
          leading: const RefreshButton(),
          actions: const [CitySelectionButton()],
          centerTitle: true,
          bottom: TabBar(
            controller: _controller,
            indicatorColor: Colors.white,
            tabs: const [
              Tab(
                icon: Icon(Icons.cloud),
              ),
              Tab(
                icon: Icon(Icons.list),
              ),
            ],
          ),
        ),
        body: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            context.read<AppBloc>().add(const AppEvent.started());
            return state.appStatus == AppStatus.loaded
                ? TabBarView(
                    controller: _controller,
                    children: [
                      CurrentForecastTab(),
                      DailyForecastTab(),
                    ],
                  )
                : const Center(
                    child: Text('Загрузка...'),
                  );
          },
        ),
      ),
    );
  }
}
