part of 'models.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required int? id,
    required String? name,
    required String? username,
    required String? email,
    required Address? address,
    required String? phone,
    required String? website,
    required Company? company,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}