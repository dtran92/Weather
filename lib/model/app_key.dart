import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_key.freezed.dart';
part 'app_key.g.dart';

@freezed
class AppKey with _$AppKey {
  const factory AppKey({
    @JsonKey(name: "weather_key") String? weatherKey,
    @JsonKey(name: "location_key") String? locationKey,
  }) = _AppKey;

  factory AppKey.fromJson(Map<String, dynamic> json) => _$AppKeyFromJson(json);
}
