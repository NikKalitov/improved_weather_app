import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/api/api_client.dart';

part 'request_state.dart';
part 'request_cubit.freezed.dart';

class RequestCubit extends Cubit<RequestState> {
  RequestCubit()
      : super(const RequestState.initial(
          isLoading: false,
          responseError: false,
        ));

  Future<bool> checkResponse(String location) async {
    emit(state.copyWith(isLoading: true));
    bool responseError = true;
    bool hasConnection = await ApiClient.checkConnectivity();
    //если запрос не пустой
    if (location.isNotEmpty) {
      //если нет подключения, то ошибка
      if (!hasConnection) {
        responseError = true;
      } else if (hasConnection) {
        //если подключение есть, запрашиваем
        String response = await ApiClient.getLocation(location);
        //если ответ пришел не пустой, то ошибки нет
        if (response != '[]') {
          responseError = false;
        }
      }
    }
    emit(state.copyWith(isLoading: false, responseError: responseError));
    return responseError;
  }
}
