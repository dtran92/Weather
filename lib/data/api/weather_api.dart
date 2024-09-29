import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:weather/model/weather.dart';

part 'weather_api.g.dart';

@RestApi(
    baseUrl:
        "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/")
abstract class WeatherApi {
  factory WeatherApi(Dio dio, {String? baseUrl}) = _WeatherApi;

  @GET("/timeline/{location}")
  Future<Weather> getWeather(String location, @Query("key") String key,
      {@Query("unitGroup") String unitGroup = "metric",
      @Query("include") String include = "hours,current",
      @Query("contentType") String contentType = "json"});
}
