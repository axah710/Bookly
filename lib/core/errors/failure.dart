import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
// Failure Class: This is an abstract class with a constructor that takes
// an error message string.
//It serves as a base class for different types of failures.

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout');
// connectionTimeout, sendTimeout, receiveTimeout:
// These are related to timeouts in the connection,
// sending, or receiving phases of the HTTP request.

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate');
// badCertificate: This occurs when there is a problem with the SSL certificate.

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode,
          dioException.response!.data,
        );
// badResponse: This is used when the server responds,
//but the response is not as expected (e.g., wrong format or data).

      case DioExceptionType.cancel:
        return ServerFailure('Request cancelled');
// cancel: This happens when the request is cancelled.

      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error');
// connectionError: General connection errors not covered by the other types.

      case DioExceptionType.unknown:
        if (dioException.message!.contains(
          'SocketException',
        )) {
          return ServerFailure('No Internet Connection');
        }
        // unknown: This is a fallback for any other type of error
        //not explicitly handled. It also checks if the error
        //message contains 'SocketException' to determine
        // if it's a connectivity issue.
        return ServerFailure('Unexpected Error, Please try again!');

      default:
        return ServerFailure('Opps There was an Error, Please try again later');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, Please try later');
    } else {
      return ServerFailure('Opps there was an error, Please try again');
    }
  }
  // ServerFailure.fromResponse factory constructor handles errors based
  //on HTTP status codes. It provides specific messages for common HTTP
  //errors like 400 (Bad Request), 401 (Unauthorized), 403 (Forbidden),
  // 404 (Not Found), and 500 (Internal Server Error). For other status
  //codes, a generic error message is returned.
}
