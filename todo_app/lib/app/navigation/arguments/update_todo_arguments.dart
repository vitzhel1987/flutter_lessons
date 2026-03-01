part of 'arguments.dart';

@freezed
abstract class UpdateTodoArguments with _$UpdateTodoArguments {
  const factory UpdateTodoArguments({
    required String todoId,
  }) = _UpdateTodoArguments;

  factory UpdateTodoArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateTodoArgumentsFromJson(json);
}
