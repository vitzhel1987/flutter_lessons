part of 'arguments.dart';

@freezed
abstract class QuestionsArguments with _$QuestionsArguments {
  const QuestionsArguments._();

  const factory QuestionsArguments({
    required String category,
  }) = _QuestionsArguments;


  factory QuestionsArguments.fromJson(Map<String, dynamic> json) =>
      _$QuestionsArgumentsFromJson(json);
}
