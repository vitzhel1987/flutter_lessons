// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) =>
    _Category(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

_Question _$QuestionFromJson(Map<String, dynamic> json) => _Question(
  id: (json['id'] as num).toInt(),
  question: json['question'] as String,
  description: json['description'] as String?,
  answers: Answers.fromJson(json['answers'] as Map<String, dynamic>),
  multipleCorrectAnswers: json['multiple_correct_answers'] as String?,
  correctAnswers: CorrectAnswers.fromJson(
    json['correct_answers'] as Map<String, dynamic>,
  ),
  explanation: json['explanation'] as String?,
  tip: json['tip'] as String?,
  tags: (json['tags'] as List<dynamic>)
      .map((e) => Tag.fromJson(e as Map<String, dynamic>))
      .toList(),
  category: json['category'] as String?,
  difficulty: json['difficulty'] as String?,
);

Map<String, dynamic> _$QuestionToJson(_Question instance) => <String, dynamic>{
  'id': instance.id,
  'question': instance.question,
  'description': instance.description,
  'answers': instance.answers,
  'multiple_correct_answers': instance.multipleCorrectAnswers,
  'correct_answers': instance.correctAnswers,
  'explanation': instance.explanation,
  'tip': instance.tip,
  'tags': instance.tags,
  'category': instance.category,
  'difficulty': instance.difficulty,
};

_Answers _$AnswersFromJson(Map<String, dynamic> json) => _Answers(
  answerA: json['answer_a'] as String?,
  answerB: json['answer_b'] as String?,
  answerC: json['answer_c'] as String?,
  answerD: json['answer_d'] as String?,
  answerE: json['answer_e'] as String?,
  answerF: json['answer_f'] as String?,
);

Map<String, dynamic> _$AnswersToJson(_Answers instance) => <String, dynamic>{
  'answer_a': instance.answerA,
  'answer_b': instance.answerB,
  'answer_c': instance.answerC,
  'answer_d': instance.answerD,
  'answer_e': instance.answerE,
  'answer_f': instance.answerF,
};

_CorrectAnswers _$CorrectAnswersFromJson(Map<String, dynamic> json) =>
    _CorrectAnswers(
      answerACorrect: json['answer_a_correct'] as String?,
      answerBCorrect: json['answer_b_correct'] as String?,
      answerCCorrect: json['answer_c_correct'] as String?,
      answerDCorrect: json['answer_d_correct'] as String?,
      answerECorrect: json['answer_e_correct'] as String?,
      answerFCorrect: json['answer_f_correct'] as String?,
    );

Map<String, dynamic> _$CorrectAnswersToJson(_CorrectAnswers instance) =>
    <String, dynamic>{
      'answer_a_correct': instance.answerACorrect,
      'answer_b_correct': instance.answerBCorrect,
      'answer_c_correct': instance.answerCCorrect,
      'answer_d_correct': instance.answerDCorrect,
      'answer_e_correct': instance.answerECorrect,
      'answer_f_correct': instance.answerFCorrect,
    };

_QuizResult _$QuizResultFromJson(Map<String, dynamic> json) => _QuizResult(
  categoryName: json['category_name'] as String,
  questionsCount: (json['questions_count'] as num).toInt(),
  correctAnswersCount: (json['correct_answers_count'] as num).toInt(),
);

Map<String, dynamic> _$QuizResultToJson(_QuizResult instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'questions_count': instance.questionsCount,
      'correct_answers_count': instance.correctAnswersCount,
    };

_Tag _$TagFromJson(Map<String, dynamic> json) =>
    _Tag(name: json['name'] as String);

Map<String, dynamic> _$TagToJson(_Tag instance) => <String, dynamic>{
  'name': instance.name,
};

_UserScore _$UserScoreFromJson(Map<String, dynamic> json) => _UserScore(
  categoryName: json['category_name'] as String,
  questionsCount: (json['questions_count'] as num).toInt(),
  correctAnswersCount: (json['correct_answers_count'] as num).toInt(),
  userId: json['user_id'] as String,
);

Map<String, dynamic> _$UserScoreToJson(_UserScore instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'questions_count': instance.questionsCount,
      'correct_answers_count': instance.correctAnswersCount,
      'user_id': instance.userId,
    };
