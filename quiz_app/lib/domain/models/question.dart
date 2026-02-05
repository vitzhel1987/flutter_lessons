part of 'models.dart';

@freezed
abstract class Question with _$Question {
  const factory Question({
    required int id,
    required String question,
    required String? description,
    required Answers answers,
    @JsonKey(name: "multiple_correct_answers")
    required String? multipleCorrectAnswers,

    @JsonKey(name: "correct_answers") required CorrectAnswers correctAnswers,
    required String? explanation,
    required String? tip,
    required List<Tag> tags,
    required String? category,
    required String? difficulty,
  }) = _Question;

  factory Question.fromJson(Map<String, Object?> json) =>
      _$QuestionFromJson(json);
}
