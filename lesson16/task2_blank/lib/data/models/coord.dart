part of 'models.dart';

@freezed
abstract class Coord with _$Coord {
  const factory Coord({
    required double? lon,
    required double? lat,
  }) = _Coord;

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}