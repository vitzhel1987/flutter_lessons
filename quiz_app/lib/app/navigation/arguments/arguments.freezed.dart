// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestionsArguments {

 String get category;
/// Create a copy of QuestionsArguments
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionsArgumentsCopyWith<QuestionsArguments> get copyWith => _$QuestionsArgumentsCopyWithImpl<QuestionsArguments>(this as QuestionsArguments, _$identity);

  /// Serializes this QuestionsArguments to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionsArguments&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'QuestionsArguments(category: $category)';
}


}

/// @nodoc
abstract mixin class $QuestionsArgumentsCopyWith<$Res>  {
  factory $QuestionsArgumentsCopyWith(QuestionsArguments value, $Res Function(QuestionsArguments) _then) = _$QuestionsArgumentsCopyWithImpl;
@useResult
$Res call({
 String category
});




}
/// @nodoc
class _$QuestionsArgumentsCopyWithImpl<$Res>
    implements $QuestionsArgumentsCopyWith<$Res> {
  _$QuestionsArgumentsCopyWithImpl(this._self, this._then);

  final QuestionsArguments _self;
  final $Res Function(QuestionsArguments) _then;

/// Create a copy of QuestionsArguments
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionsArguments].
extension QuestionsArgumentsPatterns on QuestionsArguments {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionsArguments value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionsArguments() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionsArguments value)  $default,){
final _that = this;
switch (_that) {
case _QuestionsArguments():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionsArguments value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionsArguments() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionsArguments() when $default != null:
return $default(_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String category)  $default,) {final _that = this;
switch (_that) {
case _QuestionsArguments():
return $default(_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String category)?  $default,) {final _that = this;
switch (_that) {
case _QuestionsArguments() when $default != null:
return $default(_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionsArguments extends QuestionsArguments {
  const _QuestionsArguments({required this.category}): super._();
  factory _QuestionsArguments.fromJson(Map<String, dynamic> json) => _$QuestionsArgumentsFromJson(json);

@override final  String category;

/// Create a copy of QuestionsArguments
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionsArgumentsCopyWith<_QuestionsArguments> get copyWith => __$QuestionsArgumentsCopyWithImpl<_QuestionsArguments>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionsArgumentsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionsArguments&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'QuestionsArguments(category: $category)';
}


}

/// @nodoc
abstract mixin class _$QuestionsArgumentsCopyWith<$Res> implements $QuestionsArgumentsCopyWith<$Res> {
  factory _$QuestionsArgumentsCopyWith(_QuestionsArguments value, $Res Function(_QuestionsArguments) _then) = __$QuestionsArgumentsCopyWithImpl;
@override @useResult
$Res call({
 String category
});




}
/// @nodoc
class __$QuestionsArgumentsCopyWithImpl<$Res>
    implements _$QuestionsArgumentsCopyWith<$Res> {
  __$QuestionsArgumentsCopyWithImpl(this._self, this._then);

  final _QuestionsArguments _self;
  final $Res Function(_QuestionsArguments) _then;

/// Create a copy of QuestionsArguments
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(_QuestionsArguments(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
