part of 'models.dart';

@freezed
abstract class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    required Coord? coord,
    required List<Weather>? weather,
    required String? base,
    required Main? main,
    required int? visibility,
    required Wind? wind,
    required Clouds? clouds,
    required int? dt,
    required Sys? sys,
    required int? timezone,
    required int? id,
    required String? name,
    required int? cod,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}