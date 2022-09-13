import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/city_selection_button.dart';
import '../../logic/bloc/app_bloc.dart';
import '../widgets/refresh_button.dart';
import './hourly_forecast_tab.dart';
import './current_forecast_tab.dart';
import './daily_forecast_tab.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  late TabController _controller;

  final List<Tab> listOfTabs = [
    Tab(
      icon: Icon(Icons.access_time_outlined),
    ),
    Tab(
      icon: Icon(Icons.cloud),
    ),
    Tab(
      icon: Icon(Icons.list),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: listOfTabs.length,
      vsync: this,
      initialIndex: 1,
      animationDuration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        context.read<AppBloc>().add(const AppEvent.started());
        return DefaultTabController(
          length: _controller.length,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                tabs: listOfTabs,
              ),
            ),
            body: state.appStatus == AppStatus.loaded
                //если приложение загружено, отображаем две вкладки
                ? TabBarView(
                    controller: _controller,
                    children: const [
                      HourlyForecastTab(),
                      CurrentForecastTab(),
                      DailyForecastTab(),
                    ],
                  )
                //иначе пишем, что загружается
                : const Center(
                    child: Text('Загрузка...'),
                  ),
          ),
        );
      },
    );
  }
}
