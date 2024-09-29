import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:weather/model/location.dart';

part 'location_api.g.dart';

@RestApi(baseUrl: "https://api.locationiq.com/v1/")
abstract class LocationApi {
  factory LocationApi(Dio dio, {String? baseUrl}) = _LocationApi;

  @GET("/reverse")
  Future<Location> getLocationFromLatLong(@Query("lat") String latitude,
      @Query("lon") String longitude, @Query("key") String key,
      {@Query("format") String format = "json",
      @Query("zoom") String zoom = "10",
      @Query("normalizeaddress") String normalizeAddress = "1"});
}
