// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Привет мир (App Quiz (my))`
  String get hello {
    return Intl.message(
      'Привет мир (App Quiz (my))',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Страница авторизации`
  String get autorization_page {
    return Intl.message(
      'Страница авторизации',
      name: 'autorization_page',
      desc: '',
      args: [],
    );
  }

  /// `Авторизация`
  String get authorization_title {
    return Intl.message(
      'Авторизация',
      name: 'authorization_title',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get login_button {
    return Intl.message('Войти', name: 'login_button', desc: '', args: []);
  }

  /// `Зарегестрироваться`
  String get registr_button {
    return Intl.message(
      'Зарегестрироваться',
      name: 'registr_button',
      desc: '',
      args: [],
    );
  }

  /// `Эл.Почта`
  String get email_field {
    return Intl.message('Эл.Почта', name: 'email_field', desc: '', args: []);
  }

  /// `Пароль`
  String get password_field {
    return Intl.message('Пароль', name: 'password_field', desc: '', args: []);
  }

  /// `Войти`
  String get enter_text {
    return Intl.message('Войти', name: 'enter_text', desc: '', args: []);
  }

  /// `Для авторизации введите электронную почту и пароль`
  String get enter_text_line_1 {
    return Intl.message(
      'Для авторизации введите электронную почту и пароль',
      name: 'enter_text_line_1',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация`
  String get register_title {
    return Intl.message(
      'Регистрация',
      name: 'register_title',
      desc: '',
      args: [],
    );
  }

  /// `Введите пожалуйста электронную почту`
  String get bad_email_message_1 {
    return Intl.message(
      'Введите пожалуйста электронную почту',
      name: 'bad_email_message_1',
      desc: '',
      args: [],
    );
  }

  /// `Введите корректную электронную почту`
  String get bad_email_message_2 {
    return Intl.message(
      'Введите корректную электронную почту',
      name: 'bad_email_message_2',
      desc: '',
      args: [],
    );
  }

  /// `Введите пароль`
  String get bad_password_message_1 {
    return Intl.message(
      'Введите пароль',
      name: 'bad_password_message_1',
      desc: '',
      args: [],
    );
  }

  /// `Пароль должен иметь минимум 6 символов`
  String get bad_password_message_2 {
    return Intl.message(
      'Пароль должен иметь минимум 6 символов',
      name: 'bad_password_message_2',
      desc: '',
      args: [],
    );
  }

  /// `Для регистрации введите коректную электронную почту и пароль`
  String get register_text_line_1 {
    return Intl.message(
      'Для регистрации введите коректную электронную почту и пароль',
      name: 'register_text_line_1',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get logout_button {
    return Intl.message('Выйти', name: 'logout_button', desc: '', args: []);
  }

  /// `Главный экран`
  String get main_page_title {
    return Intl.message(
      'Главный экран',
      name: 'main_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Начать`
  String get start_button {
    return Intl.message('Начать', name: 'start_button', desc: '', args: []);
  }

  /// `Профиль`
  String get profile_button {
    return Intl.message('Профиль', name: 'profile_button', desc: '', args: []);
  }

  /// `Профиль пользователя`
  String get profile_title {
    return Intl.message(
      'Профиль пользователя',
      name: 'profile_title',
      desc: '',
      args: [],
    );
  }

  /// `Ваш id: {value}`
  String your_id(Object value) {
    return Intl.message(
      'Ваш id: $value',
      name: 'your_id',
      desc: '',
      args: [value],
    );
  }

  /// `Ваша эл.почта: {value}`
  String your_email(Object value) {
    return Intl.message(
      'Ваша эл.почта: $value',
      name: 'your_email',
      desc: '',
      args: [value],
    );
  }

  /// `Ваша эл.пеочта верифицирована: {value}`
  String is_email_verified(Object value) {
    return Intl.message(
      'Ваша эл.пеочта верифицирована: $value',
      name: 'is_email_verified',
      desc: '',
      args: [value],
    );
  }

  /// `Да`
  String get yes {
    return Intl.message('Да', name: 'yes', desc: '', args: []);
  }

  /// `Нет`
  String get no {
    return Intl.message('Нет', name: 'no', desc: '', args: []);
  }

  /// `Список категорий пуст..`
  String get category_is_empty {
    return Intl.message(
      'Список категорий пуст..',
      name: 'category_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `Категории`
  String get category {
    return Intl.message('Категории', name: 'category', desc: '', args: []);
  }

  /// `QuizApp`
  String get quiz_app {
    return Intl.message('QuizApp', name: 'quiz_app', desc: '', args: []);
  }

  /// `Викторина`
  String get quiz {
    return Intl.message('Викторина', name: 'quiz', desc: '', args: []);
  }

  /// `Список вопросов пуст..`
  String get questions_is_empty {
    return Intl.message(
      'Список вопросов пуст..',
      name: 'questions_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка: {value}`
  String error(Object value) {
    return Intl.message(
      'Ошибка: $value',
      name: 'error',
      desc: '',
      args: [value],
    );
  }

  /// `Неизвестная ошибка`
  String get unknown_error {
    return Intl.message(
      'Неизвестная ошибка',
      name: 'unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `Загрузка..`
  String get loading {
    return Intl.message('Загрузка..', name: 'loading', desc: '', args: []);
  }

  /// `Вопрос {value1} из {value2}`
  String questions(Object value1, Object value2) {
    return Intl.message(
      'Вопрос $value1 из $value2',
      name: 'questions',
      desc: '',
      args: [value1, value2],
    );
  }

  /// `Вы ответили на все вопросы!`
  String get you_passed_quiz {
    return Intl.message(
      'Вы ответили на все вопросы!',
      name: 'you_passed_quiz',
      desc: '',
      args: [],
    );
  }

  /// `Тема тестирования: {value}`
  String quiz_theme(Object value) {
    return Intl.message(
      'Тема тестирования: $value',
      name: 'quiz_theme',
      desc: '',
      args: [value],
    );
  }

  /// `Количество вопросов: {value}`
  String question_count(Object value) {
    return Intl.message(
      'Количество вопросов: $value',
      name: 'question_count',
      desc: '',
      args: [value],
    );
  }

  /// `Количество правильных ответов: {value}`
  String correct_answers_count(Object value) {
    return Intl.message(
      'Количество правильных ответов: $value',
      name: 'correct_answers_count',
      desc: '',
      args: [value],
    );
  }

  /// `Сохранение..`
  String get saving {
    return Intl.message('Сохранение..', name: 'saving', desc: '', args: []);
  }

  /// `Перейти в меню`
  String get go_menu {
    return Intl.message('Перейти в меню', name: 'go_menu', desc: '', args: []);
  }

  /// `Рекорды`
  String get records_button {
    return Intl.message('Рекорды', name: 'records_button', desc: '', args: []);
  }

  /// `Рекорды`
  String get records {
    return Intl.message('Рекорды', name: 'records', desc: '', args: []);
  }

  /// `Рекорды не установлены :)`
  String get records_is_empty {
    return Intl.message(
      'Рекорды не установлены :)',
      name: 'records_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `ID: {value}`
  String ID(Object value) {
    return Intl.message('ID: $value', name: 'ID', desc: '', args: [value]);
  }

  /// `Правильных ответов: {value1} из {value2}`
  String correct_answers(Object value1, Object value2) {
    return Intl.message(
      'Правильных ответов: $value1 из $value2',
      name: 'correct_answers',
      desc: '',
      args: [value1, value2],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'ru')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
