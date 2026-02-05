part of 'models.dart';

@freezed
abstract class Tag with _$Tag {
  const factory Tag({required String name}) = _Tag;

  factory Tag.fromJson(Map<String, Object?> json) => _$TagFromJson(json);
}
