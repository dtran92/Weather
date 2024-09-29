// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppKey _$AppKeyFromJson(Map<String, dynamic> json) {
  return _AppKey.fromJson(json);
}

/// @nodoc
mixin _$AppKey {
  @JsonKey(name: "weather_key")
  String? get weatherKey => throw _privateConstructorUsedError;
  @JsonKey(name: "location_key")
  String? get locationKey => throw _privateConstructorUsedError;

  /// Serializes this AppKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppKeyCopyWith<AppKey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppKeyCopyWith<$Res> {
  factory $AppKeyCopyWith(AppKey value, $Res Function(AppKey) then) =
      _$AppKeyCopyWithImpl<$Res, AppKey>;
  @useResult
  $Res call(
      {@JsonKey(name: "weather_key") String? weatherKey,
      @JsonKey(name: "location_key") String? locationKey});
}

/// @nodoc
class _$AppKeyCopyWithImpl<$Res, $Val extends AppKey>
    implements $AppKeyCopyWith<$Res> {
  _$AppKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherKey = freezed,
    Object? locationKey = freezed,
  }) {
    return _then(_value.copyWith(
      weatherKey: freezed == weatherKey
          ? _value.weatherKey
          : weatherKey // ignore: cast_nullable_to_non_nullable
              as String?,
      locationKey: freezed == locationKey
          ? _value.locationKey
          : locationKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppKeyImplCopyWith<$Res> implements $AppKeyCopyWith<$Res> {
  factory _$$AppKeyImplCopyWith(
          _$AppKeyImpl value, $Res Function(_$AppKeyImpl) then) =
      __$$AppKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "weather_key") String? weatherKey,
      @JsonKey(name: "location_key") String? locationKey});
}

/// @nodoc
class __$$AppKeyImplCopyWithImpl<$Res>
    extends _$AppKeyCopyWithImpl<$Res, _$AppKeyImpl>
    implements _$$AppKeyImplCopyWith<$Res> {
  __$$AppKeyImplCopyWithImpl(
      _$AppKeyImpl _value, $Res Function(_$AppKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherKey = freezed,
    Object? locationKey = freezed,
  }) {
    return _then(_$AppKeyImpl(
      weatherKey: freezed == weatherKey
          ? _value.weatherKey
          : weatherKey // ignore: cast_nullable_to_non_nullable
              as String?,
      locationKey: freezed == locationKey
          ? _value.locationKey
          : locationKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppKeyImpl implements _AppKey {
  const _$AppKeyImpl(
      {@JsonKey(name: "weather_key") this.weatherKey,
      @JsonKey(name: "location_key") this.locationKey});

  factory _$AppKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppKeyImplFromJson(json);

  @override
  @JsonKey(name: "weather_key")
  final String? weatherKey;
  @override
  @JsonKey(name: "location_key")
  final String? locationKey;

  @override
  String toString() {
    return 'AppKey(weatherKey: $weatherKey, locationKey: $locationKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppKeyImpl &&
            (identical(other.weatherKey, weatherKey) ||
                other.weatherKey == weatherKey) &&
            (identical(other.locationKey, locationKey) ||
                other.locationKey == locationKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, weatherKey, locationKey);

  /// Create a copy of AppKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppKeyImplCopyWith<_$AppKeyImpl> get copyWith =>
      __$$AppKeyImplCopyWithImpl<_$AppKeyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppKeyImplToJson(
      this,
    );
  }
}

abstract class _AppKey implements AppKey {
  const factory _AppKey(
      {@JsonKey(name: "weather_key") final String? weatherKey,
      @JsonKey(name: "location_key") final String? locationKey}) = _$AppKeyImpl;

  factory _AppKey.fromJson(Map<String, dynamic> json) = _$AppKeyImpl.fromJson;

  @override
  @JsonKey(name: "weather_key")
  String? get weatherKey;
  @override
  @JsonKey(name: "location_key")
  String? get locationKey;

  /// Create a copy of AppKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppKeyImplCopyWith<_$AppKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
