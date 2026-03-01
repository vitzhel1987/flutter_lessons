part of 'state.dart';

@freezed
abstract class RegisterActionState with _$RegisterActionState {
  const factory RegisterActionState.back() = _RegisterBackActionState;
}
