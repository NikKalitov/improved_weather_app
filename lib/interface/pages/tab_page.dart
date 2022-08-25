import 'package:flutter/material.dart';
import './city_selection_tab.dart';
import './current_forecast_tab.dart';
import './daily_forecast_tab.dart';

class TabPage extends StatelessWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Firebase'),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.person_add),
              ),
              Tab(
                icon: Icon(Icons.list),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CitySelectionTab(),
            CurrentForecastTab(),
            DailyForecastTab()
          ],
        ),
      ),
    );
  }
}
