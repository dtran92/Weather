import 'package:weather/model/location.dart';

import '../api/location_api.dart';

abstract class LocationRepository {
  Future<Location> getLocationFromLatLong(
      String latitude, String longitude, String key);
}

class LocationRepositoryImpl implements LocationRepository {
  final LocationApi locationApi;

  LocationRepositoryImpl(this.locationApi);

  @override
  Future<Location> getLocationFromLatLong(
      String latitude, String longitude, String key) {
    return locationApi.getLocationFromLatLong(latitude, longitude, key);
  }
}
