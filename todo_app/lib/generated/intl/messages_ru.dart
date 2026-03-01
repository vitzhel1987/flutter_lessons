// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(error) => "Ошибка ${error}";

  static String m1(error) => "Не удалось загрузить задачу ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "add": MessageLookupByLibrary.simpleMessage("Добавить"),
    "addTaskButton": MessageLookupByLibrary.simpleMessage("Добавить задачу"),
    "add_your_first_todo": MessageLookupByLibrary.simpleMessage(
      "Добавьте первую задачу!",
    ),
    "alreadyHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Уже есть аккаунт? Войти",
    ),
    "createAccount": MessageLookupByLibrary.simpleMessage("Создайте аккаунт"),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Нет аккаунта? Зарегистрироваться",
    ),
    "editTask": MessageLookupByLibrary.simpleMessage("Редактировать задачу"),
    "email": MessageLookupByLibrary.simpleMessage("Электронная почта"),
    "emailCannotBeEmpty": MessageLookupByLibrary.simpleMessage(
      "Электронная почта не может быть пустой",
    ),
    "emailTooLong": MessageLookupByLibrary.simpleMessage(
      "Электронная почта не может быть длиннее 255 символов",
    ),
    "emptyListSubtitle": MessageLookupByLibrary.simpleMessage(
      "Добавьте свою первую задачу",
    ),
    "emptyListTitle": MessageLookupByLibrary.simpleMessage("Список пуст"),
    "error": m0,
    "errorOccurred": MessageLookupByLibrary.simpleMessage("Произошла ошибка"),
    "failedToLoadTask": m1,
    "forgotPassword": MessageLookupByLibrary.simpleMessage("Забыли пароль?"),
    "invalidEmail": MessageLookupByLibrary.simpleMessage(
      "Неверный формат электронной почты",
    ),
    "my_todos": MessageLookupByLibrary.simpleMessage("Мои дела"),
    "noAccount": MessageLookupByLibrary.simpleMessage("Нет аккаунта?"),
    "not_todos_yet": MessageLookupByLibrary.simpleMessage("Пока дел нет"),
    "notes": MessageLookupByLibrary.simpleMessage("Заметки / детали"),
    "notesHint": MessageLookupByLibrary.simpleMessage(
      "Например: обезжиренное, 2 пакета",
    ),
    "notesLabel": MessageLookupByLibrary.simpleMessage("Заметка / описание"),
    "password": MessageLookupByLibrary.simpleMessage("Пароль"),
    "passwordCannotBeEmpty": MessageLookupByLibrary.simpleMessage(
      "Пароль не может быть пустым",
    ),
    "passwordMustContainDigit": MessageLookupByLibrary.simpleMessage(
      "Пароль должен содержать хотя бы одну цифру",
    ),
    "passwordMustContainLowercase": MessageLookupByLibrary.simpleMessage(
      "Пароль должен содержать хотя бы одну строчную букву",
    ),
    "passwordMustContainUppercase": MessageLookupByLibrary.simpleMessage(
      "Пароль должен содержать хотя бы одну заглавную букву",
    ),
    "passwordTooLong": MessageLookupByLibrary.simpleMessage(
      "Пароль не может быть длиннее 50 символов",
    ),
    "passwordTooShort": MessageLookupByLibrary.simpleMessage(
      "Пароль должен быть не менее 6 символов",
    ),
    "register": MessageLookupByLibrary.simpleMessage("Зарегистрироваться"),
    "registerPageTitle": MessageLookupByLibrary.simpleMessage("Регистрация"),
    "registrationSuccess": MessageLookupByLibrary.simpleMessage(
      "Регистрация прошла успешно!",
    ),
    "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
    "saving": MessageLookupByLibrary.simpleMessage("Сохранение..."),
    "signIn": MessageLookupByLibrary.simpleMessage("Авторизоваться"),
    "signInToContinue": MessageLookupByLibrary.simpleMessage(
      "Войдите, чтобы продолжить",
    ),
    "signOut": MessageLookupByLibrary.simpleMessage("Выйти"),
    "signUp": MessageLookupByLibrary.simpleMessage("Зарегистрироваться"),
    "signUpToGetStarted": MessageLookupByLibrary.simpleMessage(
      "Зарегистрируйтесь, чтобы начать работу",
    ),
    "something_went_wrong": MessageLookupByLibrary.simpleMessage(
      "Что-то пошло не так...",
    ),
    "taskCompleted": MessageLookupByLibrary.simpleMessage("Задача выполнена"),
    "taskCreationHint": MessageLookupByLibrary.simpleMessage(
      "Укажите чётко, что нужно сделать.\nЗаметки помогут не забыть важные детали.",
    ),
    "taskRemoved": MessageLookupByLibrary.simpleMessage("Задача удалена"),
    "taskRequired": MessageLookupByLibrary.simpleMessage(
      "Введите название задачи",
    ),
    "taskTitle": MessageLookupByLibrary.simpleMessage("Название задачи"),
    "taskTooLong": MessageLookupByLibrary.simpleMessage(
      "Максимум 100 символов",
    ),
    "taskTooShort": MessageLookupByLibrary.simpleMessage("Минимум 2 символа"),
    "taskUpdateHint": MessageLookupByLibrary.simpleMessage(
      "Вы можете изменить название и заметки задачи.\nНе забудьте сохранить изменения!",
    ),
    "taskUpdated": MessageLookupByLibrary.simpleMessage("Задача обновлена"),
    "tryAgain": MessageLookupByLibrary.simpleMessage("Повторить"),
    "try_again": MessageLookupByLibrary.simpleMessage("Попробовать снова"),
    "welcomeBack": MessageLookupByLibrary.simpleMessage("С возвращением!"),
    "whatToDo": MessageLookupByLibrary.simpleMessage("Что нужно сделать?"),
    "whatToDoHint": MessageLookupByLibrary.simpleMessage(
      "Купить молоко, позвонить маме...",
    ),
  };
}
