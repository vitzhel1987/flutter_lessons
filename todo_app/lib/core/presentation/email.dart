import 'package:formz/formz.dart';

enum EmailValidationError { empty, invalid, tooLong }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');

  const Email.dirty([super.value = '']): super.dirty();

  @override
  EmailValidationError? validator(String value) {
    if (value.isEmpty) {
      return EmailValidationError.empty;
    }

    if (value.length < 5 || !value.contains('@')) {
      return EmailValidationError.invalid;
    }

    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(value)) {
      return EmailValidationError.invalid;
    }

    if (value.length > 254) {
      return EmailValidationError.tooLong;
    }

    return null;
  }
}
