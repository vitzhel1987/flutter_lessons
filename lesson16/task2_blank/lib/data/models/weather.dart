part of 'models.dart';

@freezed
abstract class Weather with _$Weather {
  const factory Weather({
    required int? id,
    required String? main,
    required String? description,
    required String? icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}