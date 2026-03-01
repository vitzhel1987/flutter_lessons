part of 'entities.dart';

@freezed
abstract class TodoEntity with _$TodoEntity {
  const factory TodoEntity({
    required String? id,
    required String title,
    required String note,
    required bool isCompleted,
  }) = _TodoEntity;
}
