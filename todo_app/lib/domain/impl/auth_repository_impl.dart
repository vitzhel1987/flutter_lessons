import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_app/data/mappers/auth_mapper.dart';
import 'package:todo_app/domain/auth_repository.dart';
import 'package:todo_app/domain/entity/entities.dart';

final class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final AuthMapper _authMapper;

  AuthRepositoryImpl({
    required AuthMapper authMapper,
    required FirebaseAuth firebaseAuth,
  })  : _authMapper = authMapper,
        _firebaseAuth = firebaseAuth;

  @override
  Stream<UserEntity?> get userStream {
    return _firebaseAuth.authStateChanges().map(
      (e) {
        return switch (e) {
          User() => _authMapper.toUserEntity(e),
          null => null,
        };
      },
    );
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<void> registerWithEmailAndPassword(
      String email, String password) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
