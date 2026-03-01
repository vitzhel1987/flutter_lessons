part of 'state.dart';

@freezed
abstract class SignInState with _$SignInState {
  bool get canSignIn {
    return email.isValid && password.isValid && !signInState.inProcess;
  }

  bool get enableView {
    return !signInState.inProcess;
  }

  const SignInState._();

  const factory SignInState({
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(ProcessState.initial()) ProcessState signInState,
    @Default(true) bool obscurePassword,
    @Default(null) OneShot<SignInActionState>? actionState,
  }) = _SignInState;
}
