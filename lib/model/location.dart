import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    @JsonKey(name: "lat")
    String? lat,
    @JsonKey(name: "lon")
    String? lon,
    @JsonKey(name: "address")
    Address? address,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    String? city,
    String? country
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}
