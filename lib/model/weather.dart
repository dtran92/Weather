import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  factory Weather({
    int? queryCost,
    double? latitude,
    double? longitude,
    String? city,
    String? country,
    List<CurrentConditions>? days,
    CurrentConditions? currentConditions,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
class CurrentConditions with _$CurrentConditions {
  factory CurrentConditions({
    String? datetime,
    double? temp,
    double? feelslike,
    double? humidity,
    int? uvindex,
    String? conditions,
    double? tempmax,
    double? tempmin,
    String? description,
    List<CurrentConditions>? hours,
    String? icon,
  }) = _CurrentConditions;

  factory CurrentConditions.fromJson(Map<String, dynamic> json) =>
      _$CurrentConditionsFromJson(json);
}
