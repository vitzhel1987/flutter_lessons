part of 'models.dart';

@freezed
abstract class Geo with _$Geo {
  const factory Geo({
    required String? lat,
    required String? lng,
  }) = _Geo;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
}