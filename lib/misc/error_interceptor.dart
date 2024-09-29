import 'package:dio/dio.dart';

import 'app_exception.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final statusCode = err.response?.statusCode;
    if (statusCode != null) {
      throw AppDioException(
          errMsg: "$statusCode", requestOptions: err.requestOptions);
    } else {
      switch (err.type) {
        case DioExceptionType.connectionTimeout ||
              DioExceptionType.sendTimeout ||
              DioExceptionType.receiveTimeout:
          throw AppDioException(
              errMsg: "Time out", requestOptions: err.requestOptions);
        case DioExceptionType.badCertificate:
          throw AppDioException(
              errMsg: "Bad Certificate", requestOptions: err.requestOptions);
        case DioExceptionType.badResponse:
          throw AppDioException(
              errMsg: "Bad Response", requestOptions: err.requestOptions);
        case DioExceptionType.cancel:
          throw AppDioException(
              errMsg: "Cancel", requestOptions: err.requestOptions);
        case DioExceptionType.connectionError:
          throw AppDioException(
              errMsg: "Connection Error", requestOptions: err.requestOptions);
        case DioExceptionType.unknown:
          throw AppDioException(
              errMsg: "Unknown", requestOptions: err.requestOptions);
      }
    }
  }
}
