import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/presentation/email.dart';
import 'package:todo_app/core/presentation/one_shot.dart';
import 'package:todo_app/core/presentation/password.dart';
import 'package:todo_app/core/presentation/process_state.dart';
import 'package:todo_app/presentation/auth/controller/state/state.dart';

typedef RegisterWithEmailAndPassword = Future<void> Function(
    String email, String password);

class RegisterCubit extends Cubit<RegisterState> { 
  final RegisterWithEmailAndPassword _registerWithEmailAndPassword;

  RegisterCubit({
    required RegisterWithEmailAndPassword registerWithEmailAndPassword,
  })  : _registerWithEmailAndPassword = registerWithEmailAndPassword,
        super(const RegisterState());

   void updateEmail(String value) {
    final email = Email.dirty(value);

    final newState = state.copyWith(
      email: email,
    );

    emit(newState);
  }

  void updatePassword(String value) {
    final password = Password.dirty(value);

    final newState = state.copyWith(
      password: password,
    );

    emit(newState);
  }

  void updateRegisterState(ProcessState registerState) {
    emit(state.copyWith(
      registerState: registerState,
    ));
  }

  Future<void> register() async {
    try {
      final canRegister = state.canRegister;
      if (!canRegister) return;

      final email = state.email.value;
      final password = state.password.value;

      updateRegisterState(const ProcessState.inProcess());

      await _registerWithEmailAndPassword(email, password);

      updateRegisterState(const ProcessState.success());
    } catch (e) {
      updateRegisterState(ProcessState.error(error: e));
    }
  }

  void updateObscurePassword(bool value) {
    emit(state.copyWith(obscurePassword: value));
  }

  void updateActionState(RegisterActionState? actionState) {
    final newState = state.copyWith(
      actionState: OneShot(actionState),
    );

    emit(newState);
  }
}