import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/presentation/email.dart';
import 'package:todo_app/core/presentation/one_shot.dart';
import 'package:todo_app/core/presentation/password.dart';
import 'package:todo_app/core/presentation/process_state.dart';
import 'package:todo_app/presentation/auth/controller/state/state.dart';

typedef SignInWithEmailAndPassword = Future<void> Function(
    String email, String password);

class SignInCubit extends Cubit<SignInState> {
  final SignInWithEmailAndPassword _signInWithEmailAndPassword;

  SignInCubit({
    required SignInWithEmailAndPassword signInWithEmailAndPassword,
  })  : _signInWithEmailAndPassword = signInWithEmailAndPassword,
        super(const SignInState());

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

  void updateSignInState(ProcessState signInState) {
    emit(state.copyWith(
      signInState: signInState,
    ));
  }

  Future<void> signIn() async {
    try {
      final canSignIn = state.canSignIn;
      if (!canSignIn) return;

      final email = state.email.value;
      final password = state.password.value;

      updateSignInState(const ProcessState.inProcess());

      await _signInWithEmailAndPassword(email, password);

      updateSignInState(const ProcessState.success());
    } catch (e) {
      updateSignInState(ProcessState.error(error: e));
    }
  }

  void updateObscurePassword(bool value) {
    emit(state.copyWith(obscurePassword: value));
  }

  void updateActionState(SignInActionState? actionState) {
    final newState = state.copyWith(
      actionState: OneShot(actionState),
    );

    emit(newState);
  }
}
