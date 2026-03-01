part of 'state.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required bool isAuthenticated,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(isAuthenticated: false);
}