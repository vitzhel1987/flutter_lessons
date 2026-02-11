// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryItem {

 int get value;
/// Create a copy of HistoryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryItemCopyWith<HistoryItem> get copyWith => _$HistoryItemCopyWithImpl<HistoryItem>(this as HistoryItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryItem&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'HistoryItem(value: $value)';
}


}

/// @nodoc
abstract mixin class $HistoryItemCopyWith<$Res>  {
  factory $HistoryItemCopyWith(HistoryItem value, $Res Function(HistoryItem) _then) = _$HistoryItemCopyWithImpl;
@useResult
$Res call({
 int value
});




}
/// @nodoc
class _$HistoryItemCopyWithImpl<$Res>
    implements $HistoryItemCopyWith<$Res> {
  _$HistoryItemCopyWithImpl(this._self, this._then);

  final HistoryItem _self;
  final $Res Function(HistoryItem) _then;

/// Create a copy of HistoryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HistoryItem].
extension HistoryItemPatterns on HistoryItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _HistoryItemIncrement value)?  increment,TResult Function( _HistoryItemDecrement value)?  decrement,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoryItemIncrement() when increment != null:
return increment(_that);case _HistoryItemDecrement() when decrement != null:
return decrement(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _HistoryItemIncrement value)  increment,required TResult Function( _HistoryItemDecrement value)  decrement,}){
final _that = this;
switch (_that) {
case _HistoryItemIncrement():
return increment(_that);case _HistoryItemDecrement():
return decrement(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _HistoryItemIncrement value)?  increment,TResult? Function( _HistoryItemDecrement value)?  decrement,}){
final _that = this;
switch (_that) {
case _HistoryItemIncrement() when increment != null:
return increment(_that);case _HistoryItemDecrement() when decrement != null:
return decrement(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int value)?  increment,TResult Function( int value)?  decrement,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoryItemIncrement() when increment != null:
return increment(_that.value);case _HistoryItemDecrement() when decrement != null:
return decrement(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int value)  increment,required TResult Function( int value)  decrement,}) {final _that = this;
switch (_that) {
case _HistoryItemIncrement():
return increment(_that.value);case _HistoryItemDecrement():
return decrement(_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int value)?  increment,TResult? Function( int value)?  decrement,}) {final _that = this;
switch (_that) {
case _HistoryItemIncrement() when increment != null:
return increment(_that.value);case _HistoryItemDecrement() when decrement != null:
return decrement(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _HistoryItemIncrement implements HistoryItem {
  const _HistoryItemIncrement(this.value);
  

@override final  int value;

/// Create a copy of HistoryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryItemIncrementCopyWith<_HistoryItemIncrement> get copyWith => __$HistoryItemIncrementCopyWithImpl<_HistoryItemIncrement>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryItemIncrement&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'HistoryItem.increment(value: $value)';
}


}

/// @nodoc
abstract mixin class _$HistoryItemIncrementCopyWith<$Res> implements $HistoryItemCopyWith<$Res> {
  factory _$HistoryItemIncrementCopyWith(_HistoryItemIncrement value, $Res Function(_HistoryItemIncrement) _then) = __$HistoryItemIncrementCopyWithImpl;
@override @useResult
$Res call({
 int value
});




}
/// @nodoc
class __$HistoryItemIncrementCopyWithImpl<$Res>
    implements _$HistoryItemIncrementCopyWith<$Res> {
  __$HistoryItemIncrementCopyWithImpl(this._self, this._then);

  final _HistoryItemIncrement _self;
  final $Res Function(_HistoryItemIncrement) _then;

/// Create a copy of HistoryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_HistoryItemIncrement(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _HistoryItemDecrement implements HistoryItem {
  const _HistoryItemDecrement(this.value);
  

@override final  int value;

/// Create a copy of HistoryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryItemDecrementCopyWith<_HistoryItemDecrement> get copyWith => __$HistoryItemDecrementCopyWithImpl<_HistoryItemDecrement>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryItemDecrement&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'HistoryItem.decrement(value: $value)';
}


}

/// @nodoc
abstract mixin class _$HistoryItemDecrementCopyWith<$Res> implements $HistoryItemCopyWith<$Res> {
  factory _$HistoryItemDecrementCopyWith(_HistoryItemDecrement value, $Res Function(_HistoryItemDecrement) _then) = __$HistoryItemDecrementCopyWithImpl;
@override @useResult
$Res call({
 int value
});




}
/// @nodoc
class __$HistoryItemDecrementCopyWithImpl<$Res>
    implements _$HistoryItemDecrementCopyWith<$Res> {
  __$HistoryItemDecrementCopyWithImpl(this._self, this._then);

  final _HistoryItemDecrement _self;
  final $Res Function(_HistoryItemDecrement) _then;

/// Create a copy of HistoryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_HistoryItemDecrement(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
