import 'package:formz/formz.dart';

enum TodoElemValidationError {
  empty('Название задачи не может быть пустым'),
  tooShort('Слишком короткое название (минимум 3 символа)');

  final String message;
  const TodoElemValidationError(this.message);
}

class TodoElem extends FormzInput<String, TodoElemValidationError> {
  const TodoElem.pure() : super.pure('');

  const TodoElem.dirty([super.value = '']) : super.dirty();

  static const int minLength = 3;

  @override
  TodoElemValidationError? validator(String? value) {
    final trimmed = value?.trim() ?? '';

    if (trimmed.isEmpty) {
      return TodoElemValidationError.empty;
    }

    if (trimmed.length < minLength) {
      return TodoElemValidationError.tooShort;
    }

    return null;
  }
}
