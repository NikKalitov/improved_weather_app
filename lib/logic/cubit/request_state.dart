part of 'request_cubit.dart';

@freezed
class RequestState with _$RequestState {
  const factory RequestState.initial({
    bool? responseError,
    bool? isLoading,
  }) = _Initial;
}
