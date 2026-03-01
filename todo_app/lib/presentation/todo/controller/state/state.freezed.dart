// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddTodoState {
  TodoElem get title;
  TodoElem get note;
  ProcessState get addTodoState;

  /// Create a copy of AddTodoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddTodoStateCopyWith<AddTodoState> get copyWith =>
      _$AddTodoStateCopyWithImpl<AddTodoState>(
          this as AddTodoState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddTodoState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.addTodoState, addTodoState) ||
                other.addTodoState == addTodoState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, note, addTodoState);

  @override
  String toString() {
    return 'AddTodoState(title: $title, note: $note, addTodoState: $addTodoState)';
  }
}

/// @nodoc
abstract mixin class $AddTodoStateCopyWith<$Res> {
  factory $AddTodoStateCopyWith(
          AddTodoState value, $Res Function(AddTodoState) _then) =
      _$AddTodoStateCopyWithImpl;
  @useResult
  $Res call({TodoElem title, TodoElem note, ProcessState addTodoState});

  $ProcessStateCopyWith<$Res> get addTodoState;
}

/// @nodoc
class _$AddTodoStateCopyWithImpl<$Res> implements $AddTodoStateCopyWith<$Res> {
  _$AddTodoStateCopyWithImpl(this._self, this._then);

  final AddTodoState _self;
  final $Res Function(AddTodoState) _then;

  /// Create a copy of AddTodoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? note = null,
    Object? addTodoState = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as TodoElem,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as TodoElem,
      addTodoState: null == addTodoState
          ? _self.addTodoState
          : addTodoState // ignore: cast_nullable_to_non_nullable
              as ProcessState,
    ));
  }

  /// Create a copy of AddTodoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessStateCopyWith<$Res> get addTodoState {
    return $ProcessStateCopyWith<$Res>(_self.addTodoState, (value) {
      return _then(_self.copyWith(addTodoState: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AddTodoState].
extension AddTodoStatePatterns on AddTodoState {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AddTodoState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddTodoState() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AddTodoState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddTodoState():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AddTodoState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddTodoState() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TodoElem title, TodoElem note, ProcessState addTodoState)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddTodoState() when $default != null:
        return $default(_that.title, _that.note, _that.addTodoState);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TodoElem title, TodoElem note, ProcessState addTodoState)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddTodoState():
        return $default(_that.title, _that.note, _that.addTodoState);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TodoElem title, TodoElem note, ProcessState addTodoState)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddTodoState() when $default != null:
        return $default(_that.title, _that.note, _that.addTodoState);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AddTodoState extends AddTodoState {
  const _AddTodoState(
      {this.title = const TodoElem.pure(),
      this.note = const TodoElem.pure(),
      this.addTodoState = const ProcessState.initial()})
      : super._();

  @override
  @JsonKey()
  final TodoElem title;
  @override
  @JsonKey()
  final TodoElem note;
  @override
  @JsonKey()
  final ProcessState addTodoState;

  /// Create a copy of AddTodoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddTodoStateCopyWith<_AddTodoState> get copyWith =>
      __$AddTodoStateCopyWithImpl<_AddTodoState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddTodoState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.addTodoState, addTodoState) ||
                other.addTodoState == addTodoState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, note, addTodoState);

  @override
  String toString() {
    return 'AddTodoState(title: $title, note: $note, addTodoState: $addTodoState)';
  }
}

/// @nodoc
abstract mixin class _$AddTodoStateCopyWith<$Res>
    implements $AddTodoStateCopyWith<$Res> {
  factory _$AddTodoStateCopyWith(
          _AddTodoState value, $Res Function(_AddTodoState) _then) =
      __$AddTodoStateCopyWithImpl;
  @override
  @useResult
  $Res call({TodoElem title, TodoElem note, ProcessState addTodoState});

  @override
  $ProcessStateCopyWith<$Res> get addTodoState;
}

/// @nodoc
class __$AddTodoStateCopyWithImpl<$Res>
    implements _$AddTodoStateCopyWith<$Res> {
  __$AddTodoStateCopyWithImpl(this._self, this._then);

  final _AddTodoState _self;
  final $Res Function(_AddTodoState) _then;

  /// Create a copy of AddTodoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? note = null,
    Object? addTodoState = null,
  }) {
    return _then(_AddTodoState(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as TodoElem,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as TodoElem,
      addTodoState: null == addTodoState
          ? _self.addTodoState
          : addTodoState // ignore: cast_nullable_to_non_nullable
              as ProcessState,
    ));
  }

  /// Create a copy of AddTodoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessStateCopyWith<$Res> get addTodoState {
    return $ProcessStateCopyWith<$Res>(_self.addTodoState, (value) {
      return _then(_self.copyWith(addTodoState: value));
    });
  }
}

/// @nodoc
mixin _$TodoListState {
  bool get isLoading;
  List<TodoEntity> get todos;
  Object? get error;
  ProcessState get removeTodoProcessState;

  /// Create a copy of TodoListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TodoListStateCopyWith<TodoListState> get copyWith =>
      _$TodoListStateCopyWithImpl<TodoListState>(
          this as TodoListState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoListState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.todos, todos) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.removeTodoProcessState, removeTodoProcessState) ||
                other.removeTodoProcessState == removeTodoProcessState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(todos),
      const DeepCollectionEquality().hash(error),
      removeTodoProcessState);

  @override
  String toString() {
    return 'TodoListState(isLoading: $isLoading, todos: $todos, error: $error, removeTodoProcessState: $removeTodoProcessState)';
  }
}

/// @nodoc
abstract mixin class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) _then) =
      _$TodoListStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      List<TodoEntity> todos,
      Object? error,
      ProcessState removeTodoProcessState});

  $ProcessStateCopyWith<$Res> get removeTodoProcessState;
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._self, this._then);

  final TodoListState _self;
  final $Res Function(TodoListState) _then;

  /// Create a copy of TodoListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? todos = null,
    Object? error = freezed,
    Object? removeTodoProcessState = null,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      todos: null == todos
          ? _self.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
      error: freezed == error ? _self.error : error,
      removeTodoProcessState: null == removeTodoProcessState
          ? _self.removeTodoProcessState
          : removeTodoProcessState // ignore: cast_nullable_to_non_nullable
              as ProcessState,
    ));
  }

  /// Create a copy of TodoListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessStateCopyWith<$Res> get removeTodoProcessState {
    return $ProcessStateCopyWith<$Res>(_self.removeTodoProcessState, (value) {
      return _then(_self.copyWith(removeTodoProcessState: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TodoListState].
extension TodoListStatePatterns on TodoListState {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TodoListState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TodoListState() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TodoListState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TodoListState():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TodoListState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TodoListState() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isLoading, List<TodoEntity> todos, Object? error,
            ProcessState removeTodoProcessState)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TodoListState() when $default != null:
        return $default(_that.isLoading, _that.todos, _that.error,
            _that.removeTodoProcessState);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isLoading, List<TodoEntity> todos, Object? error,
            ProcessState removeTodoProcessState)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TodoListState():
        return $default(_that.isLoading, _that.todos, _that.error,
            _that.removeTodoProcessState);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool isLoading, List<TodoEntity> todos, Object? error,
            ProcessState removeTodoProcessState)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TodoListState() when $default != null:
        return $default(_that.isLoading, _that.todos, _that.error,
            _that.removeTodoProcessState);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TodoListState extends TodoListState {
  const _TodoListState(
      {this.isLoading = true,
      final List<TodoEntity> todos = const [],
      this.error = null,
      this.removeTodoProcessState = const ProcessState.initial()})
      : _todos = todos,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  final List<TodoEntity> _todos;
  @override
  @JsonKey()
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  @JsonKey()
  final Object? error;
  @override
  @JsonKey()
  final ProcessState removeTodoProcessState;

  /// Create a copy of TodoListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TodoListStateCopyWith<_TodoListState> get copyWith =>
      __$TodoListStateCopyWithImpl<_TodoListState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoListState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.removeTodoProcessState, removeTodoProcessState) ||
                other.removeTodoProcessState == removeTodoProcessState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(error),
      removeTodoProcessState);

  @override
  String toString() {
    return 'TodoListState(isLoading: $isLoading, todos: $todos, error: $error, removeTodoProcessState: $removeTodoProcessState)';
  }
}

/// @nodoc
abstract mixin class _$TodoListStateCopyWith<$Res>
    implements $TodoListStateCopyWith<$Res> {
  factory _$TodoListStateCopyWith(
          _TodoListState value, $Res Function(_TodoListState) _then) =
      __$TodoListStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<TodoEntity> todos,
      Object? error,
      ProcessState removeTodoProcessState});

  @override
  $ProcessStateCopyWith<$Res> get removeTodoProcessState;
}

/// @nodoc
class __$TodoListStateCopyWithImpl<$Res>
    implements _$TodoListStateCopyWith<$Res> {
  __$TodoListStateCopyWithImpl(this._self, this._then);

  final _TodoListState _self;
  final $Res Function(_TodoListState) _then;

  /// Create a copy of TodoListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? todos = null,
    Object? error = freezed,
    Object? removeTodoProcessState = null,
  }) {
    return _then(_TodoListState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      todos: null == todos
          ? _self._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
      error: freezed == error ? _self.error : error,
      removeTodoProcessState: null == removeTodoProcessState
          ? _self.removeTodoProcessState
          : removeTodoProcessState // ignore: cast_nullable_to_non_nullable
              as ProcessState,
    ));
  }

  /// Create a copy of TodoListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessStateCopyWith<$Res> get removeTodoProcessState {
    return $ProcessStateCopyWith<$Res>(_self.removeTodoProcessState, (value) {
      return _then(_self.copyWith(removeTodoProcessState: value));
    });
  }
}

/// @nodoc
mixin _$UpdateTodoState {
  String get todoId;
  bool get isLoading;
  TodoEntity? get todo;
  TodoElem get title;
  TodoElem get note;
  bool get isDone;
  ProcessState get updateTodoState;
  Object? get error;

  /// Create a copy of UpdateTodoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateTodoStateCopyWith<UpdateTodoState> get copyWith =>
      _$UpdateTodoStateCopyWithImpl<UpdateTodoState>(
          this as UpdateTodoState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateTodoState &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.updateTodoState, updateTodoState) ||
                other.updateTodoState == updateTodoState) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      todoId,
      isLoading,
      todo,
      title,
      note,
      isDone,
      updateTodoState,
      const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'UpdateTodoState(todoId: $todoId, isLoading: $isLoading, todo: $todo, title: $title, note: $note, isDone: $isDone, updateTodoState: $updateTodoState, error: $error)';
  }
}

/// @nodoc
abstract mixin class $UpdateTodoStateCopyWith<$Res> {
  factory $UpdateTodoStateCopyWith(
          UpdateTodoState value, $Res Function(UpdateTodoState) _then) =
      _$UpdateTodoStateCopyWithImpl;
  @useResult
  $Res call(
      {String todoId,
      bool isLoading,
      TodoEntity? todo,
      TodoElem title,
      TodoElem note,
      bool isDone,
      ProcessState updateTodoState,
      Object? error});

  $TodoEntityCopyWith<$Res>? get todo;
  $ProcessStateCopyWith<$Res> get updateTodoState;
}

/// @nodoc
class _$UpdateTodoStateCopyWithImpl<$Res>
    implements $UpdateTodoStateCopyWith<$Res> {
  _$UpdateTodoStateCopyWithImpl(this._self, this._then);

  final UpdateTodoState _self;
  final $Res Function(UpdateTodoState) _then;

  /// Create a copy of UpdateTodoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
    Object? isLoading = null,
    Object? todo = freezed,
    Object? title = null,
    Object? note = null,
    Object? isDone = null,
    Object? updateTodoState = null,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      todoId: null == todoId
          ? _self.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      todo: freezed == todo
          ? _self.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as TodoEntity?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as TodoElem,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as TodoElem,
      isDone: null == isDone
          ? _self.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      updateTodoState: null == updateTodoState
          ? _self.updateTodoState
          : updateTodoState // ignore: cast_nullable_to_non_nullable
              as ProcessState,
      error: freezed == error ? _self.error : error,
    ));
  }

  /// Create a copy of UpdateTodoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TodoEntityCopyWith<$Res>? get todo {
    if (_self.todo == null) {
      return null;
    }

    return $TodoEntityCopyWith<$Res>(_self.todo!, (value) {
      return _then(_self.copyWith(todo: value));
    });
  }

  /// Create a copy of UpdateTodoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessStateCopyWith<$Res> get updateTodoState {
    return $ProcessStateCopyWith<$Res>(_self.updateTodoState, (value) {
      return _then(_self.copyWith(updateTodoState: value));
    });
  }
}

/// Adds pattern-matching-related methods to [UpdateTodoState].
extension UpdateTodoStatePatterns on UpdateTodoState {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UpdateTodoState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateTodoState() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UpdateTodoState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateTodoState():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UpdateTodoState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateTodoState() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String todoId,
            bool isLoading,
            TodoEntity? todo,
            TodoElem title,
            TodoElem note,
            bool isDone,
            ProcessState updateTodoState,
            Object? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateTodoState() when $default != null:
        return $default(_that.todoId, _that.isLoading, _that.todo, _that.title,
            _that.note, _that.isDone, _that.updateTodoState, _that.error);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String todoId,
            bool isLoading,
            TodoEntity? todo,
            TodoElem title,
            TodoElem note,
            bool isDone,
            ProcessState updateTodoState,
            Object? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateTodoState():
        return $default(_that.todoId, _that.isLoading, _that.todo, _that.title,
            _that.note, _that.isDone, _that.updateTodoState, _that.error);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String todoId,
            bool isLoading,
            TodoEntity? todo,
            TodoElem title,
            TodoElem note,
            bool isDone,
            ProcessState updateTodoState,
            Object? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateTodoState() when $default != null:
        return $default(_that.todoId, _that.isLoading, _that.todo, _that.title,
            _that.note, _that.isDone, _that.updateTodoState, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UpdateTodoState extends UpdateTodoState {
  const _UpdateTodoState(
      {required this.todoId,
      this.isLoading = false,
      this.todo = null,
      this.title = const TodoElem.pure(),
      this.note = const TodoElem.pure(),
      this.isDone = false,
      this.updateTodoState = const ProcessState.initial(),
      this.error = null})
      : super._();

  @override
  final String todoId;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final TodoEntity? todo;
  @override
  @JsonKey()
  final TodoElem title;
  @override
  @JsonKey()
  final TodoElem note;
  @override
  @JsonKey()
  final bool isDone;
  @override
  @JsonKey()
  final ProcessState updateTodoState;
  @override
  @JsonKey()
  final Object? error;

  /// Create a copy of UpdateTodoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateTodoStateCopyWith<_UpdateTodoState> get copyWith =>
      __$UpdateTodoStateCopyWithImpl<_UpdateTodoState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateTodoState &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.updateTodoState, updateTodoState) ||
                other.updateTodoState == updateTodoState) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      todoId,
      isLoading,
      todo,
      title,
      note,
      isDone,
      updateTodoState,
      const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'UpdateTodoState(todoId: $todoId, isLoading: $isLoading, todo: $todo, title: $title, note: $note, isDone: $isDone, updateTodoState: $updateTodoState, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$UpdateTodoStateCopyWith<$Res>
    implements $UpdateTodoStateCopyWith<$Res> {
  factory _$UpdateTodoStateCopyWith(
          _UpdateTodoState value, $Res Function(_UpdateTodoState) _then) =
      __$UpdateTodoStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String todoId,
      bool isLoading,
      TodoEntity? todo,
      TodoElem title,
      TodoElem note,
      bool isDone,
      ProcessState updateTodoState,
      Object? error});

  @override
  $TodoEntityCopyWith<$Res>? get todo;
  @override
  $ProcessStateCopyWith<$Res> get updateTodoState;
}

/// @nodoc
class __$UpdateTodoStateCopyWithImpl<$Res>
    implements _$UpdateTodoStateCopyWith<$Res> {
  __$UpdateTodoStateCopyWithImpl(this._self, this._then);

  final _UpdateTodoState _self;
  final $Res Function(_UpdateTodoState) _then;

  /// Create a copy of UpdateTodoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? todoId = null,
    Object? isLoading = null,
    Object? todo = freezed,
    Object? title = null,
    Object? note = null,
    Object? isDone = null,
    Object? updateTodoState = null,
    Object? error = freezed,
  }) {
    return _then(_UpdateTodoState(
      todoId: null == todoId
          ? _self.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      todo: freezed == todo
          ? _self.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as TodoEntity?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as TodoElem,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as TodoElem,
      isDone: null == isDone
          ? _self.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      updateTodoState: null == updateTodoState
          ? _self.updateTodoState
          : updateTodoState // ignore: cast_nullable_to_non_nullable
              as ProcessState,
      error: freezed == error ? _self.error : error,
    ));
  }

  /// Create a copy of UpdateTodoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TodoEntityCopyWith<$Res>? get todo {
    if (_self.todo == null) {
      return null;
    }

    return $TodoEntityCopyWith<$Res>(_self.todo!, (value) {
      return _then(_self.copyWith(todo: value));
    });
  }

  /// Create a copy of UpdateTodoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessStateCopyWith<$Res> get updateTodoState {
    return $ProcessStateCopyWith<$Res>(_self.updateTodoState, (value) {
      return _then(_self.copyWith(updateTodoState: value));
    });
  }
}

// dart format on
