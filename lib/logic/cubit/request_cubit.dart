import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/api/api_client.dart';

part 'request_state.dart';
part 'request_cubit.freezed.dart';

class RequestCubit extends Cubit<RequestState> {
  RequestCubit()
      : super(const RequestState.initial(
          isLoading: false,
          responseError: false,
        ));

  Future<void> checkResponse(String location) async {
    emit(state.copyWith(isLoading: true));
    bool responseError = false;
    String response = await ApiClient.getLocation(location);
    if (response == '[]') {
      responseError = true;
    }
    emit(state.copyWith(isLoading: false, responseError: responseError));
  }
}
