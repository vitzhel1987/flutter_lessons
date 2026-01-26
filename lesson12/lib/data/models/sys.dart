part of 'models.dart';

@freezed
abstract class Sys with _$Sys {
  const factory Sys({
    required int? type,
    required int? id,
    required String? country,
    required int? sunrise,
    required int? sunset,
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}