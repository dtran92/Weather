// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  int? get queryCost => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  List<CurrentConditions>? get days => throw _privateConstructorUsedError;
  CurrentConditions? get currentConditions =>
      throw _privateConstructorUsedError;

  /// Serializes this Weather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {int? queryCost,
      double? latitude,
      double? longitude,
      String? city,
      String? country,
      List<CurrentConditions>? days,
      CurrentConditions? currentConditions});

  $CurrentConditionsCopyWith<$Res>? get currentConditions;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryCost = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? days = freezed,
    Object? currentConditions = freezed,
  }) {
    return _then(_value.copyWith(
      queryCost: freezed == queryCost
          ? _value.queryCost
          : queryCost // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<CurrentConditions>?,
      currentConditions: freezed == currentConditions
          ? _value.currentConditions
          : currentConditions // ignore: cast_nullable_to_non_nullable
              as CurrentConditions?,
    ) as $Val);
  }

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentConditionsCopyWith<$Res>? get currentConditions {
    if (_value.currentConditions == null) {
      return null;
    }

    return $CurrentConditionsCopyWith<$Res>(_value.currentConditions!, (value) {
      return _then(_value.copyWith(currentConditions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? queryCost,
      double? latitude,
      double? longitude,
      String? city,
      String? country,
      List<CurrentConditions>? days,
      CurrentConditions? currentConditions});

  @override
  $CurrentConditionsCopyWith<$Res>? get currentConditions;
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryCost = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? days = freezed,
    Object? currentConditions = freezed,
  }) {
    return _then(_$WeatherImpl(
      queryCost: freezed == queryCost
          ? _value.queryCost
          : queryCost // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      days: freezed == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<CurrentConditions>?,
      currentConditions: freezed == currentConditions
          ? _value.currentConditions
          : currentConditions // ignore: cast_nullable_to_non_nullable
              as CurrentConditions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherImpl implements _Weather {
  _$WeatherImpl(
      {this.queryCost,
      this.latitude,
      this.longitude,
      this.city,
      this.country,
      final List<CurrentConditions>? days,
      this.currentConditions})
      : _days = days;

  factory _$WeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherImplFromJson(json);

  @override
  final int? queryCost;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? city;
  @override
  final String? country;
  final List<CurrentConditions>? _days;
  @override
  List<CurrentConditions>? get days {
    final value = _days;
    if (value == null) return null;
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CurrentConditions? currentConditions;

  @override
  String toString() {
    return 'Weather(queryCost: $queryCost, latitude: $latitude, longitude: $longitude, city: $city, country: $country, days: $days, currentConditions: $currentConditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.queryCost, queryCost) ||
                other.queryCost == queryCost) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.currentConditions, currentConditions) ||
                other.currentConditions == currentConditions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      queryCost,
      latitude,
      longitude,
      city,
      country,
      const DeepCollectionEquality().hash(_days),
      currentConditions);

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherImplToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  factory _Weather(
      {final int? queryCost,
      final double? latitude,
      final double? longitude,
      final String? city,
      final String? country,
      final List<CurrentConditions>? days,
      final CurrentConditions? currentConditions}) = _$WeatherImpl;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$WeatherImpl.fromJson;

  @override
  int? get queryCost;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get city;
  @override
  String? get country;
  @override
  List<CurrentConditions>? get days;
  @override
  CurrentConditions? get currentConditions;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentConditions _$CurrentConditionsFromJson(Map<String, dynamic> json) {
  return _CurrentConditions.fromJson(json);
}

/// @nodoc
mixin _$CurrentConditions {
  String? get datetime => throw _privateConstructorUsedError;
  double? get temp => throw _privateConstructorUsedError;
  double? get feelslike => throw _privateConstructorUsedError;
  double? get humidity => throw _privateConstructorUsedError;
  int? get uvindex => throw _privateConstructorUsedError;
  String? get conditions => throw _privateConstructorUsedError;
  double? get tempmax => throw _privateConstructorUsedError;
  double? get tempmin => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<CurrentConditions>? get hours => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this CurrentConditions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrentConditions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentConditionsCopyWith<CurrentConditions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentConditionsCopyWith<$Res> {
  factory $CurrentConditionsCopyWith(
          CurrentConditions value, $Res Function(CurrentConditions) then) =
      _$CurrentConditionsCopyWithImpl<$Res, CurrentConditions>;
  @useResult
  $Res call(
      {String? datetime,
      double? temp,
      double? feelslike,
      double? humidity,
      int? uvindex,
      String? conditions,
      double? tempmax,
      double? tempmin,
      String? description,
      List<CurrentConditions>? hours,
      String? icon});
}

/// @nodoc
class _$CurrentConditionsCopyWithImpl<$Res, $Val extends CurrentConditions>
    implements $CurrentConditionsCopyWith<$Res> {
  _$CurrentConditionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentConditions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetime = freezed,
    Object? temp = freezed,
    Object? feelslike = freezed,
    Object? humidity = freezed,
    Object? uvindex = freezed,
    Object? conditions = freezed,
    Object? tempmax = freezed,
    Object? tempmin = freezed,
    Object? description = freezed,
    Object? hours = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      datetime: freezed == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelslike: freezed == feelslike
          ? _value.feelslike
          : feelslike // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      uvindex: freezed == uvindex
          ? _value.uvindex
          : uvindex // ignore: cast_nullable_to_non_nullable
              as int?,
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as String?,
      tempmax: freezed == tempmax
          ? _value.tempmax
          : tempmax // ignore: cast_nullable_to_non_nullable
              as double?,
      tempmin: freezed == tempmin
          ? _value.tempmin
          : tempmin // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as List<CurrentConditions>?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentConditionsImplCopyWith<$Res>
    implements $CurrentConditionsCopyWith<$Res> {
  factory _$$CurrentConditionsImplCopyWith(_$CurrentConditionsImpl value,
          $Res Function(_$CurrentConditionsImpl) then) =
      __$$CurrentConditionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? datetime,
      double? temp,
      double? feelslike,
      double? humidity,
      int? uvindex,
      String? conditions,
      double? tempmax,
      double? tempmin,
      String? description,
      List<CurrentConditions>? hours,
      String? icon});
}

/// @nodoc
class __$$CurrentConditionsImplCopyWithImpl<$Res>
    extends _$CurrentConditionsCopyWithImpl<$Res, _$CurrentConditionsImpl>
    implements _$$CurrentConditionsImplCopyWith<$Res> {
  __$$CurrentConditionsImplCopyWithImpl(_$CurrentConditionsImpl _value,
      $Res Function(_$CurrentConditionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentConditions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetime = freezed,
    Object? temp = freezed,
    Object? feelslike = freezed,
    Object? humidity = freezed,
    Object? uvindex = freezed,
    Object? conditions = freezed,
    Object? tempmax = freezed,
    Object? tempmin = freezed,
    Object? description = freezed,
    Object? hours = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$CurrentConditionsImpl(
      datetime: freezed == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelslike: freezed == feelslike
          ? _value.feelslike
          : feelslike // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      uvindex: freezed == uvindex
          ? _value.uvindex
          : uvindex // ignore: cast_nullable_to_non_nullable
              as int?,
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as String?,
      tempmax: freezed == tempmax
          ? _value.tempmax
          : tempmax // ignore: cast_nullable_to_non_nullable
              as double?,
      tempmin: freezed == tempmin
          ? _value.tempmin
          : tempmin // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      hours: freezed == hours
          ? _value._hours
          : hours // ignore: cast_nullable_to_non_nullable
              as List<CurrentConditions>?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentConditionsImpl implements _CurrentConditions {
  _$CurrentConditionsImpl(
      {this.datetime,
      this.temp,
      this.feelslike,
      this.humidity,
      this.uvindex,
      this.conditions,
      this.tempmax,
      this.tempmin,
      this.description,
      final List<CurrentConditions>? hours,
      this.icon})
      : _hours = hours;

  factory _$CurrentConditionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentConditionsImplFromJson(json);

  @override
  final String? datetime;
  @override
  final double? temp;
  @override
  final double? feelslike;
  @override
  final double? humidity;
  @override
  final int? uvindex;
  @override
  final String? conditions;
  @override
  final double? tempmax;
  @override
  final double? tempmin;
  @override
  final String? description;
  final List<CurrentConditions>? _hours;
  @override
  List<CurrentConditions>? get hours {
    final value = _hours;
    if (value == null) return null;
    if (_hours is EqualUnmodifiableListView) return _hours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? icon;

  @override
  String toString() {
    return 'CurrentConditions(datetime: $datetime, temp: $temp, feelslike: $feelslike, humidity: $humidity, uvindex: $uvindex, conditions: $conditions, tempmax: $tempmax, tempmin: $tempmin, description: $description, hours: $hours, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentConditionsImpl &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelslike, feelslike) ||
                other.feelslike == feelslike) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.uvindex, uvindex) || other.uvindex == uvindex) &&
            (identical(other.conditions, conditions) ||
                other.conditions == conditions) &&
            (identical(other.tempmax, tempmax) || other.tempmax == tempmax) &&
            (identical(other.tempmin, tempmin) || other.tempmin == tempmin) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._hours, _hours) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      datetime,
      temp,
      feelslike,
      humidity,
      uvindex,
      conditions,
      tempmax,
      tempmin,
      description,
      const DeepCollectionEquality().hash(_hours),
      icon);

  /// Create a copy of CurrentConditions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentConditionsImplCopyWith<_$CurrentConditionsImpl> get copyWith =>
      __$$CurrentConditionsImplCopyWithImpl<_$CurrentConditionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentConditionsImplToJson(
      this,
    );
  }
}

abstract class _CurrentConditions implements CurrentConditions {
  factory _CurrentConditions(
      {final String? datetime,
      final double? temp,
      final double? feelslike,
      final double? humidity,
      final int? uvindex,
      final String? conditions,
      final double? tempmax,
      final double? tempmin,
      final String? description,
      final List<CurrentConditions>? hours,
      final String? icon}) = _$CurrentConditionsImpl;

  factory _CurrentConditions.fromJson(Map<String, dynamic> json) =
      _$CurrentConditionsImpl.fromJson;

  @override
  String? get datetime;
  @override
  double? get temp;
  @override
  double? get feelslike;
  @override
  double? get humidity;
  @override
  int? get uvindex;
  @override
  String? get conditions;
  @override
  double? get tempmax;
  @override
  double? get tempmin;
  @override
  String? get description;
  @override
  List<CurrentConditions>? get hours;
  @override
  String? get icon;

  /// Create a copy of CurrentConditions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentConditionsImplCopyWith<_$CurrentConditionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
