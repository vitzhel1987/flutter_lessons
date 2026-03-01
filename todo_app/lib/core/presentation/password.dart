import 'package:formz/formz.dart';

enum PasswordValidationError { tooShort, noUppercase, noLowercase, noDigit, empty }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');

  const Password.dirty([super.value = '']): super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return PasswordValidationError.empty;
    }

    final password = value.trim();

    if (password.length < 8) {
      return PasswordValidationError.tooShort;
    }

    if (!RegExp(r'[A-Z]').hasMatch(password)) {
      return PasswordValidationError.noUppercase;
    }

    if (!RegExp(r'[a-z]').hasMatch(password)) {
      return PasswordValidationError.noLowercase;
    }

    if (!RegExp(r'[0-9]').hasMatch(password)) {
      return PasswordValidationError.noDigit;
    }

    return null;
  }

}
