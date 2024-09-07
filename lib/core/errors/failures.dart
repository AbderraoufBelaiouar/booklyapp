import 'package:dio/dio.dart';

abstract class Failure {
  String errMessage;
  Failure(
    this.errMessage,
  );
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection Timeout with the server');

      case DioExceptionType.sendTimeout:
        return ServerFailure('send Timeout with the server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive Timeout with the server');

      case DioExceptionType.badCertificate:
        return ServerFailure('bad Certificate with the server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException);

      case DioExceptionType.cancel:
        return ServerFailure(' request with api service was cancelled');

      case DioExceptionType.connectionError:
        return ServerFailure('connection Error with the server');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(' No internet  Connection');
        } else {
          return ServerFailure(' Unexcpected error , try again');
        }
      default:
        return ServerFailure(' Unexcpected error , try again');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 402) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request  not found , Please try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internel server error , Please try later');
    } else {
      return ServerFailure('Oops there is an error , Please try later');
    }
  }
}
