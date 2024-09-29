// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      queryCost: (json['queryCost'] as num?)?.toInt(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      city: json['city'] as String?,
      country: json['country'] as String?,
      days: (json['days'] as List<dynamic>?)
          ?.map((e) => CurrentConditions.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentConditions: json['currentConditions'] == null
          ? null
          : CurrentConditions.fromJson(
              json['currentConditions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'queryCost': instance.queryCost,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'city': instance.city,
      'country': instance.country,
      'days': instance.days,
      'currentConditions': instance.currentConditions,
    };

_$CurrentConditionsImpl _$$CurrentConditionsImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentConditionsImpl(
      datetime: json['datetime'] as String?,
      temp: (json['temp'] as num?)?.toDouble(),
      feelslike: (json['feelslike'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      uvindex: (json['uvindex'] as num?)?.toInt(),
      conditions: json['conditions'] as String?,
      tempmax: (json['tempmax'] as num?)?.toDouble(),
      tempmin: (json['tempmin'] as num?)?.toDouble(),
      description: json['description'] as String?,
      hours: (json['hours'] as List<dynamic>?)
          ?.map((e) => CurrentConditions.fromJson(e as Map<String, dynamic>))
          .toList(),
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$CurrentConditionsImplToJson(
        _$CurrentConditionsImpl instance) =>
    <String, dynamic>{
      'datetime': instance.datetime,
      'temp': instance.temp,
      'feelslike': instance.feelslike,
      'humidity': instance.humidity,
      'uvindex': instance.uvindex,
      'conditions': instance.conditions,
      'tempmax': instance.tempmax,
      'tempmin': instance.tempmin,
      'description': instance.description,
      'hours': instance.hours,
      'icon': instance.icon,
    };
