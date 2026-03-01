import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_app/domain/entity/entities.dart';

abstract interface class AuthMapper {
  UserEntity toUserEntity(User user);
}

final class AuthMapperImpl implements AuthMapper {
  @override
  UserEntity toUserEntity(User user) {
    return UserEntity(
      uid: user.uid,
      displayName: user.displayName,
      email: user.email,
      phone: user.phoneNumber,
    );
  }
}
