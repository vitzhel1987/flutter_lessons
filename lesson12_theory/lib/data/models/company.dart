part of 'models.dart';

@freezed
abstract class Company with _$Company {
  const factory Company({
    required String? name,
    required String? catchPhrase,
    required String? bs,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}