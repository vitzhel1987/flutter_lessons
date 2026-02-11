part of 'models.dart';

@freezed
abstract class Clouds with _$Clouds {
  const factory Clouds({
    required int? all,
  }) = _Clouds;

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}