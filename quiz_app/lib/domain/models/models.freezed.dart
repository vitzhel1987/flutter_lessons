// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Category {

 int get id; String get name;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Category(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.id,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Category implements Category {
  const _Category({required this.id, required this.name});
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Category(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_Category(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Question {

 int get id; String get question; String? get description; Answers get answers;@JsonKey(name: "multiple_correct_answers") String? get multipleCorrectAnswers;@JsonKey(name: "correct_answers") CorrectAnswers get correctAnswers; String? get explanation; String? get tip; List<Tag> get tags; String? get category; String? get difficulty;
/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionCopyWith<Question> get copyWith => _$QuestionCopyWithImpl<Question>(this as Question, _$identity);

  /// Serializes this Question to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Question&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.description, description) || other.description == description)&&(identical(other.answers, answers) || other.answers == answers)&&(identical(other.multipleCorrectAnswers, multipleCorrectAnswers) || other.multipleCorrectAnswers == multipleCorrectAnswers)&&(identical(other.correctAnswers, correctAnswers) || other.correctAnswers == correctAnswers)&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.tip, tip) || other.tip == tip)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.category, category) || other.category == category)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,description,answers,multipleCorrectAnswers,correctAnswers,explanation,tip,const DeepCollectionEquality().hash(tags),category,difficulty);

@override
String toString() {
  return 'Question(id: $id, question: $question, description: $description, answers: $answers, multipleCorrectAnswers: $multipleCorrectAnswers, correctAnswers: $correctAnswers, explanation: $explanation, tip: $tip, tags: $tags, category: $category, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class $QuestionCopyWith<$Res>  {
  factory $QuestionCopyWith(Question value, $Res Function(Question) _then) = _$QuestionCopyWithImpl;
@useResult
$Res call({
 int id, String question, String? description, Answers answers,@JsonKey(name: "multiple_correct_answers") String? multipleCorrectAnswers,@JsonKey(name: "correct_answers") CorrectAnswers correctAnswers, String? explanation, String? tip, List<Tag> tags, String? category, String? difficulty
});


$AnswersCopyWith<$Res> get answers;$CorrectAnswersCopyWith<$Res> get correctAnswers;

}
/// @nodoc
class _$QuestionCopyWithImpl<$Res>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._self, this._then);

  final Question _self;
  final $Res Function(Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? question = null,Object? description = freezed,Object? answers = null,Object? multipleCorrectAnswers = freezed,Object? correctAnswers = null,Object? explanation = freezed,Object? tip = freezed,Object? tags = null,Object? category = freezed,Object? difficulty = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Answers,multipleCorrectAnswers: freezed == multipleCorrectAnswers ? _self.multipleCorrectAnswers : multipleCorrectAnswers // ignore: cast_nullable_to_non_nullable
as String?,correctAnswers: null == correctAnswers ? _self.correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as CorrectAnswers,explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String?,tip: freezed == tip ? _self.tip : tip // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnswersCopyWith<$Res> get answers {
  
  return $AnswersCopyWith<$Res>(_self.answers, (value) {
    return _then(_self.copyWith(answers: value));
  });
}/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CorrectAnswersCopyWith<$Res> get correctAnswers {
  
  return $CorrectAnswersCopyWith<$Res>(_self.correctAnswers, (value) {
    return _then(_self.copyWith(correctAnswers: value));
  });
}
}


/// Adds pattern-matching-related methods to [Question].
extension QuestionPatterns on Question {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Question value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Question value)  $default,){
final _that = this;
switch (_that) {
case _Question():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Question value)?  $default,){
final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String question,  String? description,  Answers answers, @JsonKey(name: "multiple_correct_answers")  String? multipleCorrectAnswers, @JsonKey(name: "correct_answers")  CorrectAnswers correctAnswers,  String? explanation,  String? tip,  List<Tag> tags,  String? category,  String? difficulty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.id,_that.question,_that.description,_that.answers,_that.multipleCorrectAnswers,_that.correctAnswers,_that.explanation,_that.tip,_that.tags,_that.category,_that.difficulty);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String question,  String? description,  Answers answers, @JsonKey(name: "multiple_correct_answers")  String? multipleCorrectAnswers, @JsonKey(name: "correct_answers")  CorrectAnswers correctAnswers,  String? explanation,  String? tip,  List<Tag> tags,  String? category,  String? difficulty)  $default,) {final _that = this;
switch (_that) {
case _Question():
return $default(_that.id,_that.question,_that.description,_that.answers,_that.multipleCorrectAnswers,_that.correctAnswers,_that.explanation,_that.tip,_that.tags,_that.category,_that.difficulty);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String question,  String? description,  Answers answers, @JsonKey(name: "multiple_correct_answers")  String? multipleCorrectAnswers, @JsonKey(name: "correct_answers")  CorrectAnswers correctAnswers,  String? explanation,  String? tip,  List<Tag> tags,  String? category,  String? difficulty)?  $default,) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.id,_that.question,_that.description,_that.answers,_that.multipleCorrectAnswers,_that.correctAnswers,_that.explanation,_that.tip,_that.tags,_that.category,_that.difficulty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Question implements Question {
  const _Question({required this.id, required this.question, required this.description, required this.answers, @JsonKey(name: "multiple_correct_answers") required this.multipleCorrectAnswers, @JsonKey(name: "correct_answers") required this.correctAnswers, required this.explanation, required this.tip, required final  List<Tag> tags, required this.category, required this.difficulty}): _tags = tags;
  factory _Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);

@override final  int id;
@override final  String question;
@override final  String? description;
@override final  Answers answers;
@override@JsonKey(name: "multiple_correct_answers") final  String? multipleCorrectAnswers;
@override@JsonKey(name: "correct_answers") final  CorrectAnswers correctAnswers;
@override final  String? explanation;
@override final  String? tip;
 final  List<Tag> _tags;
@override List<Tag> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  String? category;
@override final  String? difficulty;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionCopyWith<_Question> get copyWith => __$QuestionCopyWithImpl<_Question>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Question&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.description, description) || other.description == description)&&(identical(other.answers, answers) || other.answers == answers)&&(identical(other.multipleCorrectAnswers, multipleCorrectAnswers) || other.multipleCorrectAnswers == multipleCorrectAnswers)&&(identical(other.correctAnswers, correctAnswers) || other.correctAnswers == correctAnswers)&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.tip, tip) || other.tip == tip)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.category, category) || other.category == category)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,description,answers,multipleCorrectAnswers,correctAnswers,explanation,tip,const DeepCollectionEquality().hash(_tags),category,difficulty);

@override
String toString() {
  return 'Question(id: $id, question: $question, description: $description, answers: $answers, multipleCorrectAnswers: $multipleCorrectAnswers, correctAnswers: $correctAnswers, explanation: $explanation, tip: $tip, tags: $tags, category: $category, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) _then) = __$QuestionCopyWithImpl;
@override @useResult
$Res call({
 int id, String question, String? description, Answers answers,@JsonKey(name: "multiple_correct_answers") String? multipleCorrectAnswers,@JsonKey(name: "correct_answers") CorrectAnswers correctAnswers, String? explanation, String? tip, List<Tag> tags, String? category, String? difficulty
});


@override $AnswersCopyWith<$Res> get answers;@override $CorrectAnswersCopyWith<$Res> get correctAnswers;

}
/// @nodoc
class __$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(this._self, this._then);

  final _Question _self;
  final $Res Function(_Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? question = null,Object? description = freezed,Object? answers = null,Object? multipleCorrectAnswers = freezed,Object? correctAnswers = null,Object? explanation = freezed,Object? tip = freezed,Object? tags = null,Object? category = freezed,Object? difficulty = freezed,}) {
  return _then(_Question(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Answers,multipleCorrectAnswers: freezed == multipleCorrectAnswers ? _self.multipleCorrectAnswers : multipleCorrectAnswers // ignore: cast_nullable_to_non_nullable
as String?,correctAnswers: null == correctAnswers ? _self.correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as CorrectAnswers,explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String?,tip: freezed == tip ? _self.tip : tip // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnswersCopyWith<$Res> get answers {
  
  return $AnswersCopyWith<$Res>(_self.answers, (value) {
    return _then(_self.copyWith(answers: value));
  });
}/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CorrectAnswersCopyWith<$Res> get correctAnswers {
  
  return $CorrectAnswersCopyWith<$Res>(_self.correctAnswers, (value) {
    return _then(_self.copyWith(correctAnswers: value));
  });
}
}


/// @nodoc
mixin _$Answers {

@JsonKey(name: "answer_a") String? get answerA;@JsonKey(name: "answer_b") String? get answerB;@JsonKey(name: "answer_c") String? get answerC;@JsonKey(name: "answer_d") String? get answerD;@JsonKey(name: "answer_e") String? get answerE;@JsonKey(name: "answer_f") String? get answerF;
/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswersCopyWith<Answers> get copyWith => _$AnswersCopyWithImpl<Answers>(this as Answers, _$identity);

  /// Serializes this Answers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Answers&&(identical(other.answerA, answerA) || other.answerA == answerA)&&(identical(other.answerB, answerB) || other.answerB == answerB)&&(identical(other.answerC, answerC) || other.answerC == answerC)&&(identical(other.answerD, answerD) || other.answerD == answerD)&&(identical(other.answerE, answerE) || other.answerE == answerE)&&(identical(other.answerF, answerF) || other.answerF == answerF));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerA,answerB,answerC,answerD,answerE,answerF);

@override
String toString() {
  return 'Answers(answerA: $answerA, answerB: $answerB, answerC: $answerC, answerD: $answerD, answerE: $answerE, answerF: $answerF)';
}


}

/// @nodoc
abstract mixin class $AnswersCopyWith<$Res>  {
  factory $AnswersCopyWith(Answers value, $Res Function(Answers) _then) = _$AnswersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "answer_a") String? answerA,@JsonKey(name: "answer_b") String? answerB,@JsonKey(name: "answer_c") String? answerC,@JsonKey(name: "answer_d") String? answerD,@JsonKey(name: "answer_e") String? answerE,@JsonKey(name: "answer_f") String? answerF
});




}
/// @nodoc
class _$AnswersCopyWithImpl<$Res>
    implements $AnswersCopyWith<$Res> {
  _$AnswersCopyWithImpl(this._self, this._then);

  final Answers _self;
  final $Res Function(Answers) _then;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answerA = freezed,Object? answerB = freezed,Object? answerC = freezed,Object? answerD = freezed,Object? answerE = freezed,Object? answerF = freezed,}) {
  return _then(_self.copyWith(
answerA: freezed == answerA ? _self.answerA : answerA // ignore: cast_nullable_to_non_nullable
as String?,answerB: freezed == answerB ? _self.answerB : answerB // ignore: cast_nullable_to_non_nullable
as String?,answerC: freezed == answerC ? _self.answerC : answerC // ignore: cast_nullable_to_non_nullable
as String?,answerD: freezed == answerD ? _self.answerD : answerD // ignore: cast_nullable_to_non_nullable
as String?,answerE: freezed == answerE ? _self.answerE : answerE // ignore: cast_nullable_to_non_nullable
as String?,answerF: freezed == answerF ? _self.answerF : answerF // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Answers].
extension AnswersPatterns on Answers {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Answers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Answers() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Answers value)  $default,){
final _that = this;
switch (_that) {
case _Answers():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Answers value)?  $default,){
final _that = this;
switch (_that) {
case _Answers() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "answer_a")  String? answerA, @JsonKey(name: "answer_b")  String? answerB, @JsonKey(name: "answer_c")  String? answerC, @JsonKey(name: "answer_d")  String? answerD, @JsonKey(name: "answer_e")  String? answerE, @JsonKey(name: "answer_f")  String? answerF)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Answers() when $default != null:
return $default(_that.answerA,_that.answerB,_that.answerC,_that.answerD,_that.answerE,_that.answerF);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "answer_a")  String? answerA, @JsonKey(name: "answer_b")  String? answerB, @JsonKey(name: "answer_c")  String? answerC, @JsonKey(name: "answer_d")  String? answerD, @JsonKey(name: "answer_e")  String? answerE, @JsonKey(name: "answer_f")  String? answerF)  $default,) {final _that = this;
switch (_that) {
case _Answers():
return $default(_that.answerA,_that.answerB,_that.answerC,_that.answerD,_that.answerE,_that.answerF);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "answer_a")  String? answerA, @JsonKey(name: "answer_b")  String? answerB, @JsonKey(name: "answer_c")  String? answerC, @JsonKey(name: "answer_d")  String? answerD, @JsonKey(name: "answer_e")  String? answerE, @JsonKey(name: "answer_f")  String? answerF)?  $default,) {final _that = this;
switch (_that) {
case _Answers() when $default != null:
return $default(_that.answerA,_that.answerB,_that.answerC,_that.answerD,_that.answerE,_that.answerF);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Answers implements Answers {
  const _Answers({@JsonKey(name: "answer_a") required this.answerA, @JsonKey(name: "answer_b") required this.answerB, @JsonKey(name: "answer_c") required this.answerC, @JsonKey(name: "answer_d") required this.answerD, @JsonKey(name: "answer_e") required this.answerE, @JsonKey(name: "answer_f") required this.answerF});
  factory _Answers.fromJson(Map<String, dynamic> json) => _$AnswersFromJson(json);

@override@JsonKey(name: "answer_a") final  String? answerA;
@override@JsonKey(name: "answer_b") final  String? answerB;
@override@JsonKey(name: "answer_c") final  String? answerC;
@override@JsonKey(name: "answer_d") final  String? answerD;
@override@JsonKey(name: "answer_e") final  String? answerE;
@override@JsonKey(name: "answer_f") final  String? answerF;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswersCopyWith<_Answers> get copyWith => __$AnswersCopyWithImpl<_Answers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnswersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Answers&&(identical(other.answerA, answerA) || other.answerA == answerA)&&(identical(other.answerB, answerB) || other.answerB == answerB)&&(identical(other.answerC, answerC) || other.answerC == answerC)&&(identical(other.answerD, answerD) || other.answerD == answerD)&&(identical(other.answerE, answerE) || other.answerE == answerE)&&(identical(other.answerF, answerF) || other.answerF == answerF));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerA,answerB,answerC,answerD,answerE,answerF);

@override
String toString() {
  return 'Answers(answerA: $answerA, answerB: $answerB, answerC: $answerC, answerD: $answerD, answerE: $answerE, answerF: $answerF)';
}


}

/// @nodoc
abstract mixin class _$AnswersCopyWith<$Res> implements $AnswersCopyWith<$Res> {
  factory _$AnswersCopyWith(_Answers value, $Res Function(_Answers) _then) = __$AnswersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "answer_a") String? answerA,@JsonKey(name: "answer_b") String? answerB,@JsonKey(name: "answer_c") String? answerC,@JsonKey(name: "answer_d") String? answerD,@JsonKey(name: "answer_e") String? answerE,@JsonKey(name: "answer_f") String? answerF
});




}
/// @nodoc
class __$AnswersCopyWithImpl<$Res>
    implements _$AnswersCopyWith<$Res> {
  __$AnswersCopyWithImpl(this._self, this._then);

  final _Answers _self;
  final $Res Function(_Answers) _then;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answerA = freezed,Object? answerB = freezed,Object? answerC = freezed,Object? answerD = freezed,Object? answerE = freezed,Object? answerF = freezed,}) {
  return _then(_Answers(
answerA: freezed == answerA ? _self.answerA : answerA // ignore: cast_nullable_to_non_nullable
as String?,answerB: freezed == answerB ? _self.answerB : answerB // ignore: cast_nullable_to_non_nullable
as String?,answerC: freezed == answerC ? _self.answerC : answerC // ignore: cast_nullable_to_non_nullable
as String?,answerD: freezed == answerD ? _self.answerD : answerD // ignore: cast_nullable_to_non_nullable
as String?,answerE: freezed == answerE ? _self.answerE : answerE // ignore: cast_nullable_to_non_nullable
as String?,answerF: freezed == answerF ? _self.answerF : answerF // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CorrectAnswers {

@JsonKey(name: "answer_a_correct") String? get answerACorrect;@JsonKey(name: "answer_b_correct") String? get answerBCorrect;@JsonKey(name: "answer_c_correct") String? get answerCCorrect;@JsonKey(name: "answer_d_correct") String? get answerDCorrect;@JsonKey(name: "answer_e_correct") String? get answerECorrect;@JsonKey(name: "answer_f_correct") String? get answerFCorrect;
/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CorrectAnswersCopyWith<CorrectAnswers> get copyWith => _$CorrectAnswersCopyWithImpl<CorrectAnswers>(this as CorrectAnswers, _$identity);

  /// Serializes this CorrectAnswers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CorrectAnswers&&(identical(other.answerACorrect, answerACorrect) || other.answerACorrect == answerACorrect)&&(identical(other.answerBCorrect, answerBCorrect) || other.answerBCorrect == answerBCorrect)&&(identical(other.answerCCorrect, answerCCorrect) || other.answerCCorrect == answerCCorrect)&&(identical(other.answerDCorrect, answerDCorrect) || other.answerDCorrect == answerDCorrect)&&(identical(other.answerECorrect, answerECorrect) || other.answerECorrect == answerECorrect)&&(identical(other.answerFCorrect, answerFCorrect) || other.answerFCorrect == answerFCorrect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerACorrect,answerBCorrect,answerCCorrect,answerDCorrect,answerECorrect,answerFCorrect);

@override
String toString() {
  return 'CorrectAnswers(answerACorrect: $answerACorrect, answerBCorrect: $answerBCorrect, answerCCorrect: $answerCCorrect, answerDCorrect: $answerDCorrect, answerECorrect: $answerECorrect, answerFCorrect: $answerFCorrect)';
}


}

/// @nodoc
abstract mixin class $CorrectAnswersCopyWith<$Res>  {
  factory $CorrectAnswersCopyWith(CorrectAnswers value, $Res Function(CorrectAnswers) _then) = _$CorrectAnswersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "answer_a_correct") String? answerACorrect,@JsonKey(name: "answer_b_correct") String? answerBCorrect,@JsonKey(name: "answer_c_correct") String? answerCCorrect,@JsonKey(name: "answer_d_correct") String? answerDCorrect,@JsonKey(name: "answer_e_correct") String? answerECorrect,@JsonKey(name: "answer_f_correct") String? answerFCorrect
});




}
/// @nodoc
class _$CorrectAnswersCopyWithImpl<$Res>
    implements $CorrectAnswersCopyWith<$Res> {
  _$CorrectAnswersCopyWithImpl(this._self, this._then);

  final CorrectAnswers _self;
  final $Res Function(CorrectAnswers) _then;

/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answerACorrect = freezed,Object? answerBCorrect = freezed,Object? answerCCorrect = freezed,Object? answerDCorrect = freezed,Object? answerECorrect = freezed,Object? answerFCorrect = freezed,}) {
  return _then(_self.copyWith(
answerACorrect: freezed == answerACorrect ? _self.answerACorrect : answerACorrect // ignore: cast_nullable_to_non_nullable
as String?,answerBCorrect: freezed == answerBCorrect ? _self.answerBCorrect : answerBCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerCCorrect: freezed == answerCCorrect ? _self.answerCCorrect : answerCCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerDCorrect: freezed == answerDCorrect ? _self.answerDCorrect : answerDCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerECorrect: freezed == answerECorrect ? _self.answerECorrect : answerECorrect // ignore: cast_nullable_to_non_nullable
as String?,answerFCorrect: freezed == answerFCorrect ? _self.answerFCorrect : answerFCorrect // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CorrectAnswers].
extension CorrectAnswersPatterns on CorrectAnswers {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CorrectAnswers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CorrectAnswers() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CorrectAnswers value)  $default,){
final _that = this;
switch (_that) {
case _CorrectAnswers():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CorrectAnswers value)?  $default,){
final _that = this;
switch (_that) {
case _CorrectAnswers() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "answer_a_correct")  String? answerACorrect, @JsonKey(name: "answer_b_correct")  String? answerBCorrect, @JsonKey(name: "answer_c_correct")  String? answerCCorrect, @JsonKey(name: "answer_d_correct")  String? answerDCorrect, @JsonKey(name: "answer_e_correct")  String? answerECorrect, @JsonKey(name: "answer_f_correct")  String? answerFCorrect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CorrectAnswers() when $default != null:
return $default(_that.answerACorrect,_that.answerBCorrect,_that.answerCCorrect,_that.answerDCorrect,_that.answerECorrect,_that.answerFCorrect);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "answer_a_correct")  String? answerACorrect, @JsonKey(name: "answer_b_correct")  String? answerBCorrect, @JsonKey(name: "answer_c_correct")  String? answerCCorrect, @JsonKey(name: "answer_d_correct")  String? answerDCorrect, @JsonKey(name: "answer_e_correct")  String? answerECorrect, @JsonKey(name: "answer_f_correct")  String? answerFCorrect)  $default,) {final _that = this;
switch (_that) {
case _CorrectAnswers():
return $default(_that.answerACorrect,_that.answerBCorrect,_that.answerCCorrect,_that.answerDCorrect,_that.answerECorrect,_that.answerFCorrect);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "answer_a_correct")  String? answerACorrect, @JsonKey(name: "answer_b_correct")  String? answerBCorrect, @JsonKey(name: "answer_c_correct")  String? answerCCorrect, @JsonKey(name: "answer_d_correct")  String? answerDCorrect, @JsonKey(name: "answer_e_correct")  String? answerECorrect, @JsonKey(name: "answer_f_correct")  String? answerFCorrect)?  $default,) {final _that = this;
switch (_that) {
case _CorrectAnswers() when $default != null:
return $default(_that.answerACorrect,_that.answerBCorrect,_that.answerCCorrect,_that.answerDCorrect,_that.answerECorrect,_that.answerFCorrect);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CorrectAnswers implements CorrectAnswers {
  const _CorrectAnswers({@JsonKey(name: "answer_a_correct") required this.answerACorrect, @JsonKey(name: "answer_b_correct") required this.answerBCorrect, @JsonKey(name: "answer_c_correct") required this.answerCCorrect, @JsonKey(name: "answer_d_correct") required this.answerDCorrect, @JsonKey(name: "answer_e_correct") required this.answerECorrect, @JsonKey(name: "answer_f_correct") required this.answerFCorrect});
  factory _CorrectAnswers.fromJson(Map<String, dynamic> json) => _$CorrectAnswersFromJson(json);

@override@JsonKey(name: "answer_a_correct") final  String? answerACorrect;
@override@JsonKey(name: "answer_b_correct") final  String? answerBCorrect;
@override@JsonKey(name: "answer_c_correct") final  String? answerCCorrect;
@override@JsonKey(name: "answer_d_correct") final  String? answerDCorrect;
@override@JsonKey(name: "answer_e_correct") final  String? answerECorrect;
@override@JsonKey(name: "answer_f_correct") final  String? answerFCorrect;

/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CorrectAnswersCopyWith<_CorrectAnswers> get copyWith => __$CorrectAnswersCopyWithImpl<_CorrectAnswers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CorrectAnswersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CorrectAnswers&&(identical(other.answerACorrect, answerACorrect) || other.answerACorrect == answerACorrect)&&(identical(other.answerBCorrect, answerBCorrect) || other.answerBCorrect == answerBCorrect)&&(identical(other.answerCCorrect, answerCCorrect) || other.answerCCorrect == answerCCorrect)&&(identical(other.answerDCorrect, answerDCorrect) || other.answerDCorrect == answerDCorrect)&&(identical(other.answerECorrect, answerECorrect) || other.answerECorrect == answerECorrect)&&(identical(other.answerFCorrect, answerFCorrect) || other.answerFCorrect == answerFCorrect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerACorrect,answerBCorrect,answerCCorrect,answerDCorrect,answerECorrect,answerFCorrect);

@override
String toString() {
  return 'CorrectAnswers(answerACorrect: $answerACorrect, answerBCorrect: $answerBCorrect, answerCCorrect: $answerCCorrect, answerDCorrect: $answerDCorrect, answerECorrect: $answerECorrect, answerFCorrect: $answerFCorrect)';
}


}

/// @nodoc
abstract mixin class _$CorrectAnswersCopyWith<$Res> implements $CorrectAnswersCopyWith<$Res> {
  factory _$CorrectAnswersCopyWith(_CorrectAnswers value, $Res Function(_CorrectAnswers) _then) = __$CorrectAnswersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "answer_a_correct") String? answerACorrect,@JsonKey(name: "answer_b_correct") String? answerBCorrect,@JsonKey(name: "answer_c_correct") String? answerCCorrect,@JsonKey(name: "answer_d_correct") String? answerDCorrect,@JsonKey(name: "answer_e_correct") String? answerECorrect,@JsonKey(name: "answer_f_correct") String? answerFCorrect
});




}
/// @nodoc
class __$CorrectAnswersCopyWithImpl<$Res>
    implements _$CorrectAnswersCopyWith<$Res> {
  __$CorrectAnswersCopyWithImpl(this._self, this._then);

  final _CorrectAnswers _self;
  final $Res Function(_CorrectAnswers) _then;

/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answerACorrect = freezed,Object? answerBCorrect = freezed,Object? answerCCorrect = freezed,Object? answerDCorrect = freezed,Object? answerECorrect = freezed,Object? answerFCorrect = freezed,}) {
  return _then(_CorrectAnswers(
answerACorrect: freezed == answerACorrect ? _self.answerACorrect : answerACorrect // ignore: cast_nullable_to_non_nullable
as String?,answerBCorrect: freezed == answerBCorrect ? _self.answerBCorrect : answerBCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerCCorrect: freezed == answerCCorrect ? _self.answerCCorrect : answerCCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerDCorrect: freezed == answerDCorrect ? _self.answerDCorrect : answerDCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerECorrect: freezed == answerECorrect ? _self.answerECorrect : answerECorrect // ignore: cast_nullable_to_non_nullable
as String?,answerFCorrect: freezed == answerFCorrect ? _self.answerFCorrect : answerFCorrect // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$QuizResult {

@JsonKey(name: "category_name") String get categoryName;@JsonKey(name: "questions_count") int get questionsCount;@JsonKey(name: "correct_answers_count") int get correctAnswersCount;
/// Create a copy of QuizResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizResultCopyWith<QuizResult> get copyWith => _$QuizResultCopyWithImpl<QuizResult>(this as QuizResult, _$identity);

  /// Serializes this QuizResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizResult&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.questionsCount, questionsCount) || other.questionsCount == questionsCount)&&(identical(other.correctAnswersCount, correctAnswersCount) || other.correctAnswersCount == correctAnswersCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryName,questionsCount,correctAnswersCount);

@override
String toString() {
  return 'QuizResult(categoryName: $categoryName, questionsCount: $questionsCount, correctAnswersCount: $correctAnswersCount)';
}


}

/// @nodoc
abstract mixin class $QuizResultCopyWith<$Res>  {
  factory $QuizResultCopyWith(QuizResult value, $Res Function(QuizResult) _then) = _$QuizResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "category_name") String categoryName,@JsonKey(name: "questions_count") int questionsCount,@JsonKey(name: "correct_answers_count") int correctAnswersCount
});




}
/// @nodoc
class _$QuizResultCopyWithImpl<$Res>
    implements $QuizResultCopyWith<$Res> {
  _$QuizResultCopyWithImpl(this._self, this._then);

  final QuizResult _self;
  final $Res Function(QuizResult) _then;

/// Create a copy of QuizResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryName = null,Object? questionsCount = null,Object? correctAnswersCount = null,}) {
  return _then(_self.copyWith(
categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,questionsCount: null == questionsCount ? _self.questionsCount : questionsCount // ignore: cast_nullable_to_non_nullable
as int,correctAnswersCount: null == correctAnswersCount ? _self.correctAnswersCount : correctAnswersCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizResult].
extension QuizResultPatterns on QuizResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizResult value)  $default,){
final _that = this;
switch (_that) {
case _QuizResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizResult value)?  $default,){
final _that = this;
switch (_that) {
case _QuizResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "category_name")  String categoryName, @JsonKey(name: "questions_count")  int questionsCount, @JsonKey(name: "correct_answers_count")  int correctAnswersCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizResult() when $default != null:
return $default(_that.categoryName,_that.questionsCount,_that.correctAnswersCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "category_name")  String categoryName, @JsonKey(name: "questions_count")  int questionsCount, @JsonKey(name: "correct_answers_count")  int correctAnswersCount)  $default,) {final _that = this;
switch (_that) {
case _QuizResult():
return $default(_that.categoryName,_that.questionsCount,_that.correctAnswersCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "category_name")  String categoryName, @JsonKey(name: "questions_count")  int questionsCount, @JsonKey(name: "correct_answers_count")  int correctAnswersCount)?  $default,) {final _that = this;
switch (_that) {
case _QuizResult() when $default != null:
return $default(_that.categoryName,_that.questionsCount,_that.correctAnswersCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizResult implements QuizResult {
  const _QuizResult({@JsonKey(name: "category_name") required this.categoryName, @JsonKey(name: "questions_count") required this.questionsCount, @JsonKey(name: "correct_answers_count") required this.correctAnswersCount});
  factory _QuizResult.fromJson(Map<String, dynamic> json) => _$QuizResultFromJson(json);

@override@JsonKey(name: "category_name") final  String categoryName;
@override@JsonKey(name: "questions_count") final  int questionsCount;
@override@JsonKey(name: "correct_answers_count") final  int correctAnswersCount;

/// Create a copy of QuizResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizResultCopyWith<_QuizResult> get copyWith => __$QuizResultCopyWithImpl<_QuizResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizResult&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.questionsCount, questionsCount) || other.questionsCount == questionsCount)&&(identical(other.correctAnswersCount, correctAnswersCount) || other.correctAnswersCount == correctAnswersCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryName,questionsCount,correctAnswersCount);

@override
String toString() {
  return 'QuizResult(categoryName: $categoryName, questionsCount: $questionsCount, correctAnswersCount: $correctAnswersCount)';
}


}

/// @nodoc
abstract mixin class _$QuizResultCopyWith<$Res> implements $QuizResultCopyWith<$Res> {
  factory _$QuizResultCopyWith(_QuizResult value, $Res Function(_QuizResult) _then) = __$QuizResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "category_name") String categoryName,@JsonKey(name: "questions_count") int questionsCount,@JsonKey(name: "correct_answers_count") int correctAnswersCount
});




}
/// @nodoc
class __$QuizResultCopyWithImpl<$Res>
    implements _$QuizResultCopyWith<$Res> {
  __$QuizResultCopyWithImpl(this._self, this._then);

  final _QuizResult _self;
  final $Res Function(_QuizResult) _then;

/// Create a copy of QuizResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryName = null,Object? questionsCount = null,Object? correctAnswersCount = null,}) {
  return _then(_QuizResult(
categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,questionsCount: null == questionsCount ? _self.questionsCount : questionsCount // ignore: cast_nullable_to_non_nullable
as int,correctAnswersCount: null == correctAnswersCount ? _self.correctAnswersCount : correctAnswersCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Tag {

 String get name;
/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagCopyWith<Tag> get copyWith => _$TagCopyWithImpl<Tag>(this as Tag, _$identity);

  /// Serializes this Tag to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tag&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'Tag(name: $name)';
}


}

/// @nodoc
abstract mixin class $TagCopyWith<$Res>  {
  factory $TagCopyWith(Tag value, $Res Function(Tag) _then) = _$TagCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$TagCopyWithImpl<$Res>
    implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._self, this._then);

  final Tag _self;
  final $Res Function(Tag) _then;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Tag].
extension TagPatterns on Tag {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Tag value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Tag() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Tag value)  $default,){
final _that = this;
switch (_that) {
case _Tag():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Tag value)?  $default,){
final _that = this;
switch (_that) {
case _Tag() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Tag() when $default != null:
return $default(_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _Tag():
return $default(_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _Tag() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Tag implements Tag {
  const _Tag({required this.name});
  factory _Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

@override final  String name;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagCopyWith<_Tag> get copyWith => __$TagCopyWithImpl<_Tag>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TagToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tag&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'Tag(name: $name)';
}


}

/// @nodoc
abstract mixin class _$TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$TagCopyWith(_Tag value, $Res Function(_Tag) _then) = __$TagCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$TagCopyWithImpl<$Res>
    implements _$TagCopyWith<$Res> {
  __$TagCopyWithImpl(this._self, this._then);

  final _Tag _self;
  final $Res Function(_Tag) _then;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_Tag(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserScore {

@JsonKey(name: "category_name") String get categoryName;@JsonKey(name: "questions_count") int get questionsCount;@JsonKey(name: "correct_answers_count") int get correctAnswersCount;@JsonKey(name: "user_id") String get userId;
/// Create a copy of UserScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserScoreCopyWith<UserScore> get copyWith => _$UserScoreCopyWithImpl<UserScore>(this as UserScore, _$identity);

  /// Serializes this UserScore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserScore&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.questionsCount, questionsCount) || other.questionsCount == questionsCount)&&(identical(other.correctAnswersCount, correctAnswersCount) || other.correctAnswersCount == correctAnswersCount)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryName,questionsCount,correctAnswersCount,userId);

@override
String toString() {
  return 'UserScore(categoryName: $categoryName, questionsCount: $questionsCount, correctAnswersCount: $correctAnswersCount, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $UserScoreCopyWith<$Res>  {
  factory $UserScoreCopyWith(UserScore value, $Res Function(UserScore) _then) = _$UserScoreCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "category_name") String categoryName,@JsonKey(name: "questions_count") int questionsCount,@JsonKey(name: "correct_answers_count") int correctAnswersCount,@JsonKey(name: "user_id") String userId
});




}
/// @nodoc
class _$UserScoreCopyWithImpl<$Res>
    implements $UserScoreCopyWith<$Res> {
  _$UserScoreCopyWithImpl(this._self, this._then);

  final UserScore _self;
  final $Res Function(UserScore) _then;

/// Create a copy of UserScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryName = null,Object? questionsCount = null,Object? correctAnswersCount = null,Object? userId = null,}) {
  return _then(_self.copyWith(
categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,questionsCount: null == questionsCount ? _self.questionsCount : questionsCount // ignore: cast_nullable_to_non_nullable
as int,correctAnswersCount: null == correctAnswersCount ? _self.correctAnswersCount : correctAnswersCount // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserScore].
extension UserScorePatterns on UserScore {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserScore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserScore() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserScore value)  $default,){
final _that = this;
switch (_that) {
case _UserScore():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserScore value)?  $default,){
final _that = this;
switch (_that) {
case _UserScore() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "category_name")  String categoryName, @JsonKey(name: "questions_count")  int questionsCount, @JsonKey(name: "correct_answers_count")  int correctAnswersCount, @JsonKey(name: "user_id")  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserScore() when $default != null:
return $default(_that.categoryName,_that.questionsCount,_that.correctAnswersCount,_that.userId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "category_name")  String categoryName, @JsonKey(name: "questions_count")  int questionsCount, @JsonKey(name: "correct_answers_count")  int correctAnswersCount, @JsonKey(name: "user_id")  String userId)  $default,) {final _that = this;
switch (_that) {
case _UserScore():
return $default(_that.categoryName,_that.questionsCount,_that.correctAnswersCount,_that.userId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "category_name")  String categoryName, @JsonKey(name: "questions_count")  int questionsCount, @JsonKey(name: "correct_answers_count")  int correctAnswersCount, @JsonKey(name: "user_id")  String userId)?  $default,) {final _that = this;
switch (_that) {
case _UserScore() when $default != null:
return $default(_that.categoryName,_that.questionsCount,_that.correctAnswersCount,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserScore implements UserScore {
  const _UserScore({@JsonKey(name: "category_name") required this.categoryName, @JsonKey(name: "questions_count") required this.questionsCount, @JsonKey(name: "correct_answers_count") required this.correctAnswersCount, @JsonKey(name: "user_id") required this.userId});
  factory _UserScore.fromJson(Map<String, dynamic> json) => _$UserScoreFromJson(json);

@override@JsonKey(name: "category_name") final  String categoryName;
@override@JsonKey(name: "questions_count") final  int questionsCount;
@override@JsonKey(name: "correct_answers_count") final  int correctAnswersCount;
@override@JsonKey(name: "user_id") final  String userId;

/// Create a copy of UserScore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserScoreCopyWith<_UserScore> get copyWith => __$UserScoreCopyWithImpl<_UserScore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserScoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserScore&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.questionsCount, questionsCount) || other.questionsCount == questionsCount)&&(identical(other.correctAnswersCount, correctAnswersCount) || other.correctAnswersCount == correctAnswersCount)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryName,questionsCount,correctAnswersCount,userId);

@override
String toString() {
  return 'UserScore(categoryName: $categoryName, questionsCount: $questionsCount, correctAnswersCount: $correctAnswersCount, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$UserScoreCopyWith<$Res> implements $UserScoreCopyWith<$Res> {
  factory _$UserScoreCopyWith(_UserScore value, $Res Function(_UserScore) _then) = __$UserScoreCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "category_name") String categoryName,@JsonKey(name: "questions_count") int questionsCount,@JsonKey(name: "correct_answers_count") int correctAnswersCount,@JsonKey(name: "user_id") String userId
});




}
/// @nodoc
class __$UserScoreCopyWithImpl<$Res>
    implements _$UserScoreCopyWith<$Res> {
  __$UserScoreCopyWithImpl(this._self, this._then);

  final _UserScore _self;
  final $Res Function(_UserScore) _then;

/// Create a copy of UserScore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryName = null,Object? questionsCount = null,Object? correctAnswersCount = null,Object? userId = null,}) {
  return _then(_UserScore(
categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,questionsCount: null == questionsCount ? _self.questionsCount : questionsCount // ignore: cast_nullable_to_non_nullable
as int,correctAnswersCount: null == correctAnswersCount ? _self.correctAnswersCount : correctAnswersCount // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
