import 'package:todo_app/domain/entity/entities.dart';

abstract class AuthRepository {
  Stream<UserEntity?> get userStream;

  Future<void> signInWithEmailAndPassword(String email, String password);

  Future<void> registerWithEmailAndPassword(String email, String password);

  Future<void> signOut();
}
