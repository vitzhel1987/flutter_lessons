part of 'models.dart';

@freezed
abstract class Wind with _$Wind {
  const factory Wind({
    required double? speed,
    required int? deg,
    required double? gust,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}