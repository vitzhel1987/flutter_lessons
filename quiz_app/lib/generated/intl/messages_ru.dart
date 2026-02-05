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

  static String m0(value) => "ID: ${value}";

  static String m1(value1, value2) =>
      "Правильных ответов: ${value1} из ${value2}";

  static String m2(value) => "Количество правильных ответов: ${value}";

  static String m3(value) => "Ошибка: ${value}";

  static String m4(value) => "Ваша эл.пеочта верифицирована: ${value}";

  static String m5(value) => "Количество вопросов: ${value}";

  static String m6(value1, value2) => "Вопрос ${value1} из ${value2}";

  static String m7(value) => "Тема тестирования: ${value}";

  static String m8(value) => "Ваша эл.почта: ${value}";

  static String m9(value) => "Ваш id: ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "ID": m0,
    "authorization_title": MessageLookupByLibrary.simpleMessage("Авторизация"),
    "autorization_page": MessageLookupByLibrary.simpleMessage(
      "Страница авторизации",
    ),
    "bad_email_message_1": MessageLookupByLibrary.simpleMessage(
      "Введите пожалуйста электронную почту",
    ),
    "bad_email_message_2": MessageLookupByLibrary.simpleMessage(
      "Введите корректную электронную почту",
    ),
    "bad_password_message_1": MessageLookupByLibrary.simpleMessage(
      "Введите пароль",
    ),
    "bad_password_message_2": MessageLookupByLibrary.simpleMessage(
      "Пароль должен иметь минимум 6 символов",
    ),
    "category": MessageLookupByLibrary.simpleMessage("Категории"),
    "category_is_empty": MessageLookupByLibrary.simpleMessage(
      "Список категорий пуст..",
    ),
    "correct_answers": m1,
    "correct_answers_count": m2,
    "email_field": MessageLookupByLibrary.simpleMessage("Эл.Почта"),
    "enter_text": MessageLookupByLibrary.simpleMessage("Войти"),
    "enter_text_line_1": MessageLookupByLibrary.simpleMessage(
      "Для авторизации введите электронную почту и пароль",
    ),
    "error": m3,
    "go_menu": MessageLookupByLibrary.simpleMessage("Перейти в меню"),
    "hello": MessageLookupByLibrary.simpleMessage("Привет мир (App Quiz (my))"),
    "is_email_verified": m4,
    "loading": MessageLookupByLibrary.simpleMessage("Загрузка.."),
    "login_button": MessageLookupByLibrary.simpleMessage("Войти"),
    "logout_button": MessageLookupByLibrary.simpleMessage("Выйти"),
    "main_page_title": MessageLookupByLibrary.simpleMessage("Главный экран"),
    "no": MessageLookupByLibrary.simpleMessage("Нет"),
    "password_field": MessageLookupByLibrary.simpleMessage("Пароль"),
    "profile_button": MessageLookupByLibrary.simpleMessage("Профиль"),
    "profile_title": MessageLookupByLibrary.simpleMessage(
      "Профиль пользователя",
    ),
    "question_count": m5,
    "questions": m6,
    "questions_is_empty": MessageLookupByLibrary.simpleMessage(
      "Список вопросов пуст..",
    ),
    "quiz": MessageLookupByLibrary.simpleMessage("Викторина"),
    "quiz_app": MessageLookupByLibrary.simpleMessage("QuizApp"),
    "quiz_theme": m7,
    "records": MessageLookupByLibrary.simpleMessage("Рекорды"),
    "records_button": MessageLookupByLibrary.simpleMessage("Рекорды"),
    "records_is_empty": MessageLookupByLibrary.simpleMessage(
      "Рекорды не установлены :)",
    ),
    "register_text_line_1": MessageLookupByLibrary.simpleMessage(
      "Для регистрации введите коректную электронную почту и пароль",
    ),
    "register_title": MessageLookupByLibrary.simpleMessage("Регистрация"),
    "registr_button": MessageLookupByLibrary.simpleMessage(
      "Зарегестрироваться",
    ),
    "saving": MessageLookupByLibrary.simpleMessage("Сохранение.."),
    "start_button": MessageLookupByLibrary.simpleMessage("Начать"),
    "unknown_error": MessageLookupByLibrary.simpleMessage("Неизвестная ошибка"),
    "yes": MessageLookupByLibrary.simpleMessage("Да"),
    "you_passed_quiz": MessageLookupByLibrary.simpleMessage(
      "Вы ответили на все вопросы!",
    ),
    "your_email": m8,
    "your_id": m9,
  };
}
