import 'package:dio/dio.dart';

class AppDioException extends DioException {
  final String errMsg;

  AppDioException({required this.errMsg, required super.requestOptions});

  @override
  String toString() {
    return errMsg;
  }
}