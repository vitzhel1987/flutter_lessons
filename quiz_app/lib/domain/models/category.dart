part of 'models.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    required int id,
    required String name
  }) = _Category;


  factory Category.fromJson(Map<String, Object?> json) =>
      _$CategoryFromJson(json);
}
