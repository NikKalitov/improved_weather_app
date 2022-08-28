import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/api/api_client.dart';
import '../../data/models/location.dart';
import '../../data/models/current_forecast.dart';
import '../../data/storage/storage_provider.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc()
      : super(_AppState(
          appStatus: AppStatus.initializing,
          connectionStatus: ConnectionStatus.unknown,
          currentForecast: CurrentForecast(),
          forecastJson: '',
          location: Location(),
          locationJson: '',
          hasError: false,
        )) {
    on<_Loading>(_onLoading);
    on<_RefreshData>(_onRefreshData);
    on<_LocationChange>(_onLocationChange);
  }

  Future<void> _onLoading(_Loading event, Emitter<AppState> emit) async {
    //всё ниже происходит только в случае, когда AppStatus == initializing
    if (state.appStatus == AppStatus.initializing) {
      bool hasConnection = await ApiClient.checkConnectivity();
      late ConnectionStatus connectionStatus;
      late String locationJson;
      late String key;
      late Location location;
      late String forecastJson;
      late CurrentForecast currentForecast;
      late AppStatus appStatus;
      if (hasConnection) {
        //ставим онлайн статус
        connectionStatus = ConnectionStatus.online;
        //из памяти берем json с локацией
        locationJson = await SharedPrefProvider.getLocation();
        //получаем ключ для запроса прогноза
        key = await SharedPrefProvider.getKey();
        //получаем объект location, используя json из памяти
        location = Location.fromJsonOnResponse(jsonDecode(locationJson));
        //используя location и ключ, получаем json прогноза погоды
        forecastJson = await ApiClient.getCurrentForecast(
            location.lat!, location.lon!, key);
        //перезаписываем данные в память
        await rewriteSharedPref(locationJson, forecastJson, key);
        //создаем объект прогноза погоды из json
        currentForecast =
            CurrentForecast.fromJsonOnResponse(jsonDecode(forecastJson));
        //приложение загрузилось
        appStatus = AppStatus.loaded;
      } else if (!hasConnection) {
        //ставим статус offline
        connectionStatus = ConnectionStatus.offline;
        //загружаем json из памяти
        forecastJson = await SharedPrefProvider.getForecast();
        locationJson = await SharedPrefProvider.getLocation();
        //создаем объекты из загруженных json
        currentForecast =
            CurrentForecast.fromJsonOnResponse(jsonDecode(forecastJson));
        location = Location.fromJsonOnResponse(jsonDecode(locationJson));
        //приложение загрузилось
        appStatus = AppStatus.loaded;
      }
      //вызываем state с новыми параметрами
      emit(state.copyWith(
        appStatus: appStatus,
        connectionStatus: connectionStatus,
        currentForecast: currentForecast,
        location: location,
        forecastJson: forecastJson,
        locationJson: locationJson,
      ));
    }
  }

  Future<void> _onRefreshData(
      _RefreshData event, Emitter<AppState> emit) async {
    //сообщаем, что приложение грузится
    emit(state.copyWith(appStatus: AppStatus.loading));
    //проверяем, есть ли подключение
    bool hasConnection = await ApiClient.checkConnectivity();
    if (hasConnection) {
      //если есть, те же действия, что и при загрузки
      ConnectionStatus connectionStatus = ConnectionStatus.online;
      //из памяти берем json с локацией
      String locationJson = await SharedPrefProvider.getLocation();
      //получаем ключ для запроса прогноза
      String key = await SharedPrefProvider.getKey();
      //получаем объект location, используя json из памяти
      Location location = Location.fromJsonOnResponse(jsonDecode(locationJson));
      //используя location и ключ, получаем json прогноза погоды
      String forecastJson =
          await ApiClient.getCurrentForecast(location.lat!, location.lon!, key);
      //перезаписываем данные в память
      await rewriteSharedPref(locationJson, forecastJson, key);
      //создаем объект прогноза погоды из json
      CurrentForecast currentForecast =
          CurrentForecast.fromJsonOnResponse(jsonDecode(forecastJson));
      //приложение загрузилось
      AppStatus appStatus = AppStatus.loaded;
      bool hasError = false;
      emit(state.copyWith(
        appStatus: appStatus,
        connectionStatus: connectionStatus,
        currentForecast: currentForecast,
        forecastJson: forecastJson,
        location: location,
        locationJson: locationJson,
        //ошибки не произошло
        hasError: hasError,
      ));
    } else if (!hasConnection) {
      //если нет подключения, то оставляем данные без изменений, но сообщаем,
      //что произошла ошибка
      emit(state.copyWith(
        appStatus: AppStatus.loaded,
        hasError: true,
      ));
    }
  }

  Future<void> _onLocationChange(
      _LocationChange event, Emitter<AppState> emit) async {
    //сообщаем, что приложение грузится
    emit(state.copyWith(appStatus: AppStatus.loading));
    //проверяем, есть ли подключение
    bool hasConnection = await ApiClient.checkConnectivity();
    if (hasConnection) {
      //статус приложения онлайн
      ConnectionStatus connectionStatus = ConnectionStatus.online;
      //запрашиваем данные по локации, основываясь на введенных в поле данных
      String locationJson = await ApiClient.getLocation(event.newLocation);
      //получаем ключ для запроса прогноза
      String key = await SharedPrefProvider.getKey();
      //получаем объект location, используя json из памяти
      Location location = Location.fromJsonOnResponse(jsonDecode(locationJson));
      //используя location и ключ, получаем json прогноза погоды
      String forecastJson =
          await ApiClient.getCurrentForecast(location.lat!, location.lon!, key);
      //перезаписываем данные в память
      await rewriteSharedPref(locationJson, forecastJson, key);
      //создаем объект прогноза погоды из json
      CurrentForecast currentForecast =
          CurrentForecast.fromJsonOnResponse(jsonDecode(forecastJson));
      //приложение загрузилось
      AppStatus appStatus = AppStatus.loaded;
      bool hasError = false;
      emit(state.copyWith(
        appStatus: appStatus,
        connectionStatus: connectionStatus,
        currentForecast: currentForecast,
        forecastJson: forecastJson,
        location: location,
        locationJson: locationJson,
        //ошибки не произошло
        hasError: hasError,
      ));
    } else if (!hasConnection) {
      //если нет подключения, то оставляем данные без изменений, но сообщаем,
      //что произошла ошибка
      emit(state.copyWith(
        appStatus: AppStatus.loaded,
        hasError: true,
      ));
    }
  }

  Future<void> rewriteSharedPref(
      String locationJson, String forecastJson, String key) async {
    await SharedPrefProvider.saveForecast(forecastJson);
    await SharedPrefProvider.saveKey();
    await SharedPrefProvider.saveLocation(locationJson);
  }
}
