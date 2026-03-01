part of 'entities.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String uid,
    required String? displayName,
    required String? email,
    required String? phone,
  }) = _UserEntity;
}
