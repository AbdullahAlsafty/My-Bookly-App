import 'package:dio/dio.dart';

abstract class Faillurs {
  final String errorMessage;

  Faillurs({required this.errorMessage});
}

class ServerFaillur extends Faillurs {
  ServerFaillur({required super.errorMessage});

  factory ServerFaillur.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaillur(
            errorMessage: 'The Intenet Connection Timed out With Api server ');

      case DioExceptionType.sendTimeout:
        return ServerFaillur(errorMessage: ' Send Timed out With Api server');

      case DioExceptionType.receiveTimeout:
        return ServerFaillur(errorMessage: 'Send Timed out With Api server');
      case DioExceptionType.badCertificate:
        return ServerFaillur(
            errorMessage: ' the dio error type wad badCertificate');

      case DioExceptionType.badResponse:
        ServerFaillur.foromResponse(
            dioError.response!.statusCode!, dioError.response!);
      case DioExceptionType.cancel:
        return ServerFaillur(errorMessage: ' Was Canceled');
      case DioExceptionType.connectionError:
        if (dioError.message!.contains('SocketException')) {
          return ServerFaillur(errorMessage: 'No Internet Connection');
        }
      case DioExceptionType.unknown:
        return ServerFaillur(
            errorMessage: 'UnExcepected Error , Please Try again later 1111');
    }
    return ServerFaillur(
        errorMessage: 'UnExcepected Error , Please Try again later 22222222 ');
  }

  factory ServerFaillur.foromResponse(int statesCode, Response response) {
    if (statesCode == 400 || statesCode == 401 || statesCode == 403) {
      return ServerFaillur(
          errorMessage: response.data['error']['message'] ?? 'null  1111');
    } else if (statesCode == 404) {
      return ServerFaillur(errorMessage: 'Your Requst not Found ');
    } else if (statesCode == 500) {
      return ServerFaillur(
          errorMessage: 'internal Server Error , please Try again later ');
    } else {
      return ServerFaillur(
          errorMessage: 'oppes ther Was an Error , please Try again later ');
    }
  }
}
