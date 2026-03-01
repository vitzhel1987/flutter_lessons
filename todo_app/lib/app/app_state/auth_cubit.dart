import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/app_state/state/state.dart' show AuthState;
import 'package:todo_app/domain/auth_repository.dart';
import 'package:todo_app/domain/entity/entities.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;

  late final StreamSubscription<UserEntity?> _authStateChangesSubscription;

  Stream<bool> get authStateChanges => stream.map((e) => e.isAuthenticated);

  AuthCubit({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(AuthState.initial()) {
    _authStateChangesSubscription = _authRepository.userStream.listen((user) {
      if (isClosed) return;
      emit(AuthState(isAuthenticated: user != null));
    });
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _authRepository.signInWithEmailAndPassword(email, password);
  }

  Future<void> registerWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _authRepository.registerWithEmailAndPassword(email, password);
  }

  Future<void> signOut() async {
    await _authRepository.signOut();
  }

  @override
  Future<void> close() {
    _authStateChangesSubscription.cancel();

    return super.close();
  }
}
