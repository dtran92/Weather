import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/data/api/weather_api.dart';
import 'package:weather/data/repository/firebase_repository.dart';
import 'package:weather/data/repository/location_repository.dart';
import 'package:weather/data/repository/weather_repository.dart';
import 'package:weather/misc/error_interceptor.dart';

import '../data/api/location_api.dart';

final sl = GetIt.I;

Future inject() async {
  sl.registerLazySingleton<ErrorInterceptor>(() => ErrorInterceptor());
  if (kDebugMode) {
    sl.registerLazySingleton<LogInterceptor>(() => LogInterceptor(
        responseBody: true, logPrint: (obj) => debugPrint(obj.toString())));
    sl.registerLazySingleton<Dio>(() => Dio()
      ..interceptors.add(sl.get<ErrorInterceptor>())
      ..interceptors.add(sl.get<LogInterceptor>()));
  } else {
    sl.registerLazySingleton<Dio>(
        () => Dio()..interceptors.add(sl.get<ErrorInterceptor>()));
  }
  sl.registerLazySingleton<WeatherApi>(() => WeatherApi(sl.get()));
  sl.registerLazySingleton<WeatherRepository>(
      () => WeatherRepositoryImpl(sl.get()));
  sl.registerLazySingleton<LocationApi>(() => LocationApi(sl.get()));
  sl.registerLazySingleton<LocationRepository>(
      () => LocationRepositoryImpl(sl.get()));
  sl.registerLazySingleton<FirebaseRepository>(() => FirebaseRepositoryImpl());
}
