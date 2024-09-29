import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/data/repository/firebase_repository.dart';
import 'package:weather/data/repository/location_repository.dart';
import 'package:weather/data/repository/weather_repository.dart';
import 'package:weather/model/weather.dart';

import '../../misc/app_exception.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState(result: Result.initial));
  final weatherRepository = GetIt.I.get<WeatherRepository>();
  final locationRepository = GetIt.I.get<LocationRepository>();
  final firebaseRepository = GetIt.I.get<FirebaseRepository>();

  Future<void> _fetchWeather() async {
    emit(state.copyWith(result: Result.loading));
    try {
      final appKey = await firebaseRepository.getApiKey();
      if (appKey == null) {
        emit(state.copyWith(
            result: Result.error, errorMessage: "Something went wrong"));
      } else {
        final currentLocation = await Geolocator.getCurrentPosition();
        final weather = await weatherRepository.getWeather(
            "${currentLocation.latitude},${currentLocation.longitude}",
            appKey.weatherKey ?? "");
        final location = await locationRepository.getLocationFromLatLong(
            "${currentLocation.latitude}",
            "${currentLocation.longitude}",
            appKey.locationKey ?? "");
        final result = weather.copyWith(
            city: location.address?.city, country: location.address?.country);
        emit(state.copyWith(result: Result.success, weather: result));
      }
    } on AppDioException catch (ex) {
      emit(state.copyWith(result: Result.error, errorMessage: ex.errMsg));
    } on FirebaseException catch (ex) {
      emit(state.copyWith(result: Result.error, errorMessage: ex.message));
    } on Exception catch (ex) {
      emit(state.copyWith(result: Result.error, errorMessage: ex.toString()));
    }
  }

  Future<void> checkLocationPermission() async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      emit(state.copyWith(
          result: Result.error, errorMessage: "Location Service Required"));
    } else {
      var status = await Geolocator.checkPermission();
      switch (status) {
        case LocationPermission.denied:
          Geolocator.requestPermission().then((newStatus) async {
            switch (newStatus) {
              case LocationPermission.denied ||
                    LocationPermission.deniedForever ||
                    LocationPermission.unableToDetermine:
                emit(state.copyWith(
                    result: Result.error,
                    errorMessage: "Location Permission Required"));
              case LocationPermission.whileInUse || LocationPermission.always:
                await _fetchWeather();
            }
          });
        case LocationPermission.deniedForever ||
              LocationPermission.unableToDetermine:
          emit(state.copyWith(
              result: Result.error,
              errorMessage: "Location Permission Required"));
        case LocationPermission.whileInUse || LocationPermission.always:
          await _fetchWeather();
      }
    }
  }

  void resetState() {
    emit(state.copyWith(result: Result.initial));
  }
}
