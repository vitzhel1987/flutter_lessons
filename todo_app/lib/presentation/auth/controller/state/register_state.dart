part of 'state.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  bool get canRegister {
    return email.isValid && password.isValid && !registerState.inProcess;
  }

  bool get inProccess {
    return registerState.inProcess;
  }

  bool get enableView {
    return !registerState.inProcess;
  }

  const RegisterState._();

  const factory RegisterState({
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(ProcessState.initial()) ProcessState registerState,
    @Default(true) bool obscurePassword,
    @Default(null) OneShot<RegisterActionState>? actionState,
  }) = _RegisterState;

}
