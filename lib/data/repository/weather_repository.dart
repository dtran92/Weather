import 'package:weather/model/weather.dart';

import '../api/weather_api.dart';

abstract class WeatherRepository {
  Future<Weather> getWeather(String location, String key);
}

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApi weatherApi;

  WeatherRepositoryImpl(this.weatherApi);

  @override
  Future<Weather> getWeather(String location, String key) {
    return weatherApi.getWeather(location, key);
  }
}
