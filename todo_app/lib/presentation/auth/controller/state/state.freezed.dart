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
mixin _$RegisterActionState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterActionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterActionState()';
  }
}

/// @nodoc
class $RegisterActionStateCopyWith<$Res> {
  $RegisterActionStateCopyWith(
      RegisterActionState _, $Res Function(RegisterActionState) __);
}

/// Adds pattern-matching-related methods to [RegisterActionState].
extension RegisterActionStatePatterns on RegisterActionState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterBackActionState value)? back,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterBackActionState() when back != null:
        return back(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterBackActionState value) back,
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterBackActionState():
        return back(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterBackActionState value)? back,
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterBackActionState() when back != null:
        return back(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? back,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterBackActionState() when back != null:
        return back();
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
  TResult when<TResult extends Object?>({
    required TResult Function() back,
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterBackActionState():
        return back();
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? back,
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterBackActionState() when back != null:
        return back();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RegisterBackActionState implements RegisterActionState {
  const _RegisterBackActionState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RegisterBackActionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterActionState.back()';
  }
}

/// @nodoc
mixin _$RegisterState {
  Email get email;
  Password get password;
  ProcessState get registerState;
  bool get obscurePassword;
  OneShot<RegisterActionState>? get actionState;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      _$RegisterStateCopyWithImpl<RegisterState>(
          this as RegisterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.registerState, registerState) ||
                other.registerState == registerState) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.actionState, actionState) ||
                other.actionState == actionState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, registerState,
      obscurePassword, actionState);

  @override
  String toString() {
    return 'RegisterState(email: $email, password: $password, registerState: $registerState, obscurePassword: $obscurePassword, actionState: $actionState)';
  }
}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) _then) =
      _$RegisterStateCopyWithImpl;
  @useResult
  $Res call(
      {Email email,
      Password password,
      ProcessState registerState,
      bool obscurePassword,
      OneShot<RegisterActionState>? actionState});

  $ProcessStateCopyWith<$Res> get registerState;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? registerState = null,
    Object? obscurePassword = null,
    Object? actionState = freezed,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      registerState: null == registerState
          ? _self.registerState
          : registerState // ignore: cast_nullable_to_non_nullable
              as ProcessState,
      obscurePassword: null == obscurePassword
          ? _self.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      actionState: freezed == actionState
          ? _self.actionState
          : actionState // ignore: cast_nullable_to_non_nullable
              as OneShot<RegisterActionState>?,
    ));
  }

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessStateCopyWith<$Res> get registerState {
    return $ProcessStateCopyWith<$Res>(_self.registerState, (value) {
      return _then(_self.copyWith(registerState: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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
    TResult Function(_RegisterState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterState() when $default != null:
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
    TResult Function(_RegisterState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterState():
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
    TResult? Function(_RegisterState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterState() when $default != null:
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
    TResult Function(Email email, Password password, ProcessState registerState,
            bool obscurePassword, OneShot<RegisterActionState>? actionState)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterState() when $default != null:
        return $default(_that.email, _that.password, _that.registerState,
            _that.obscurePassword, _that.actionState);
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
    TResult Function(Email email, Password password, ProcessState registerState,
            bool obscurePassword, OneShot<RegisterActionState>? actionState)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterState():
        return $default(_that.email, _that.password, _that.registerState,
            _that.obscurePassword, _that.actionState);
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
            Email email,
            Password password,
            ProcessState registerState,
            bool obscurePassword,
            OneShot<RegisterActionState>? actionState)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterState() when $default != null:
        return $default(_that.email, _that.password, _that.registerState,
            _that.obscurePassword, _that.actionState);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RegisterState extends RegisterState {
  const _RegisterState(
      {this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.registerState = const ProcessState.initial(),
      this.obscurePassword = true,
      this.actionState = null})
      : super._();

  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final ProcessState registerState;
  @override
  @JsonKey()
  final bool obscurePassword;
  @override
  @JsonKey()
  final OneShot<RegisterActionState>? actionState;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.registerState, registerState) ||
                other.registerState == registerState) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.actionState, actionState) ||
                other.actionState == actionState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, registerState,
      obscurePassword, actionState);

  @override
  String toString() {
    return 'RegisterState(email: $email, password: $password, registerState: $registerState, obscurePassword: $obscurePassword, actionState: $actionState)';
  }
}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) _then) =
      __$RegisterStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Email email,
      Password password,
      ProcessState registerState,
      bool obscurePassword,
      OneShot<RegisterActionState>? actionState});

  @override
  $ProcessStateCopyWith<$Res> get registerState;
}

/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(this._self, this._then);

  final _RegisterState _self;
  final $Res Function(_RegisterState) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? registerState = null,
    Object? obscurePassword = null,
    Object? actionState = freezed,
  }) {
    return _then(_RegisterState(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      registerState: null == registerState
          ? _self.registerState
          : registerState // ignore: cast_nullable_to_non_nullable
              as ProcessState,
      obscurePassword: null == obscurePassword
          ? _self.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      actionState: freezed == actionState
          ? _self.actionState
          : actionState // ignore: cast_nullable_to_non_nullable
              as OneShot<RegisterActionState>?,
    ));
  }

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessStateCopyWith<$Res> get registerState {
    return $ProcessStateCopyWith<$Res>(_self.registerState, (value) {
      return _then(_self.copyWith(registerState: value));
    });
  }
}

/// @nodoc
mixin _$SignInState {
  Email get email;
  Password get password;
  ProcessState get signInState;
  bool get obscurePassword;
  OneShot<SignInActionState>? get actionState;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignInStateCopyWith<SignInState> get copyWith =>
      _$SignInStateCopyWithImpl<SignInState>(this as SignInState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.signInState, signInState) ||
                other.signInState == signInState) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.actionState, actionState) ||
                other.actionState == actionState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, signInState, obscurePassword, actionState);

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, signInState: $signInState, obscurePassword: $obscurePassword, actionState: $actionState)';
  }
}

/// @nodoc
abstract mixin class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) _then) =
      _$SignInStateCopyWithImpl;
  @useResult
  $Res call(
      {Email email,
      Password password,
      ProcessState signInState,
      bool obscurePassword,
      OneShot<SignInActionState>? actionState});

  $ProcessStateCopyWith<$Res> get signInState;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._self, this._then);

  final SignInState _self;
  final $Res Function(SignInState) _then;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? signInState = null,
    Object? obscurePassword = null,
    Object? actionState = freezed,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      signInState: null == signInState
          ? _self.signInState
          : signInState // ignore: cast_nullable_to_non_nullable
              as ProcessState,
      obscurePassword: null == obscurePassword
          ? _self.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      actionState: freezed == actionState
          ? _self.actionState
          : actionState // ignore: cast_nullable_to_non_nullable
              as OneShot<SignInActionState>?,
    ));
  }

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessStateCopyWith<$Res> get signInState {
    return $ProcessStateCopyWith<$Res>(_self.signInState, (value) {
      return _then(_self.copyWith(signInState: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SignInState].
extension SignInStatePatterns on SignInState {
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
    TResult Function(_SignInState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignInState() when $default != null:
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
    TResult Function(_SignInState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInState():
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
    TResult? Function(_SignInState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInState() when $default != null:
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
    TResult Function(Email email, Password password, ProcessState signInState,
            bool obscurePassword, OneShot<SignInActionState>? actionState)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignInState() when $default != null:
        return $default(_that.email, _that.password, _that.signInState,
            _that.obscurePassword, _that.actionState);
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
    TResult Function(Email email, Password password, ProcessState signInState,
            bool obscurePassword, OneShot<SignInActionState>? actionState)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInState():
        return $default(_that.email, _that.password, _that.signInState,
            _that.obscurePassword, _that.actionState);
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
    TResult? Function(Email email, Password password, ProcessState signInState,
            bool obscurePassword, OneShot<SignInActionState>? actionState)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInState() when $default != null:
        return $default(_that.email, _that.password, _that.signInState,
            _that.obscurePassword, _that.actionState);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SignInState extends SignInState {
  const _SignInState(
      {this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.signInState = const ProcessState.initial(),
      this.obscurePassword = true,
      this.actionState = null})
      : super._();

  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final ProcessState signInState;
  @override
  @JsonKey()
  final bool obscurePassword;
  @override
  @JsonKey()
  final OneShot<SignInActionState>? actionState;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.signInState, signInState) ||
                other.signInState == signInState) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.actionState, actionState) ||
                other.actionState == actionState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, signInState, obscurePassword, actionState);

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, signInState: $signInState, obscurePassword: $obscurePassword, actionState: $actionState)';
  }
}

/// @nodoc
abstract mixin class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) _then) =
      __$SignInStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Email email,
      Password password,
      ProcessState signInState,
      bool obscurePassword,
      OneShot<SignInActionState>? actionState});

  @override
  $ProcessStateCopyWith<$Res> get signInState;
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(this._self, this._then);

  final _SignInState _self;
  final $Res Function(_SignInState) _then;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? signInState = null,
    Object? obscurePassword = null,
    Object? actionState = freezed,
  }) {
    return _then(_SignInState(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      signInState: null == signInState
          ? _self.signInState
          : signInState // ignore: cast_nullable_to_non_nullable
              as ProcessState,
      obscurePassword: null == obscurePassword
          ? _self.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      actionState: freezed == actionState
          ? _self.actionState
          : actionState // ignore: cast_nullable_to_non_nullable
              as OneShot<SignInActionState>?,
    ));
  }

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessStateCopyWith<$Res> get signInState {
    return $ProcessStateCopyWith<$Res>(_self.signInState, (value) {
      return _then(_self.copyWith(signInState: value));
    });
  }
}

/// @nodoc
mixin _$SignInActionState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInActionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignInActionState()';
  }
}

/// @nodoc
class $SignInActionStateCopyWith<$Res> {
  $SignInActionStateCopyWith(
      SignInActionState _, $Res Function(SignInActionState) __);
}

/// Adds pattern-matching-related methods to [SignInActionState].
extension SignInActionStatePatterns on SignInActionState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInRegisterActionState value)? register,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignInRegisterActionState() when register != null:
        return register(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInRegisterActionState value) register,
  }) {
    final _that = this;
    switch (_that) {
      case _SignInRegisterActionState():
        return register(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInRegisterActionState value)? register,
  }) {
    final _that = this;
    switch (_that) {
      case _SignInRegisterActionState() when register != null:
        return register(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignInRegisterActionState() when register != null:
        return register();
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
  TResult when<TResult extends Object?>({
    required TResult Function() register,
  }) {
    final _that = this;
    switch (_that) {
      case _SignInRegisterActionState():
        return register();
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
  }) {
    final _that = this;
    switch (_that) {
      case _SignInRegisterActionState() when register != null:
        return register();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SignInRegisterActionState implements SignInActionState {
  const _SignInRegisterActionState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInRegisterActionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignInActionState.register()';
  }
}

// dart format on
