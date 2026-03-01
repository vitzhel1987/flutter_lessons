part of 'state.dart';

@freezed
class SignInActionState with _$SignInActionState {
  const factory SignInActionState.register() = _SignInRegisterActionState;
}
