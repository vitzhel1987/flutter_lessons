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

  /// `Авторизоваться`
  String get signIn {
    return Intl.message('Авторизоваться', name: 'signIn', desc: '', args: []);
  }

  /// `С возвращением!`
  String get welcomeBack {
    return Intl.message(
      'С возвращением!',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Электронная почта`
  String get email {
    return Intl.message('Электронная почта', name: 'email', desc: '', args: []);
  }

  /// `Пароль`
  String get password {
    return Intl.message('Пароль', name: 'password', desc: '', args: []);
  }

  /// `Войдите, чтобы продолжить`
  String get signInToContinue {
    return Intl.message(
      'Войдите, чтобы продолжить',
      name: 'signInToContinue',
      desc: '',
      args: [],
    );
  }

  /// `Нет аккаунта?`
  String get noAccount {
    return Intl.message('Нет аккаунта?', name: 'noAccount', desc: '', args: []);
  }

  /// `Зарегистрироваться`
  String get signUp {
    return Intl.message(
      'Зарегистрироваться',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Забыли пароль?`
  String get forgotPassword {
    return Intl.message(
      'Забыли пароль?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Нет аккаунта? Зарегистрироваться`
  String get dontHaveAccount {
    return Intl.message(
      'Нет аккаунта? Зарегистрироваться',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Электронная почта не может быть пустой`
  String get emailCannotBeEmpty {
    return Intl.message(
      'Электронная почта не может быть пустой',
      name: 'emailCannotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Неверный формат электронной почты`
  String get invalidEmail {
    return Intl.message(
      'Неверный формат электронной почты',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Пароль не может быть пустым`
  String get passwordCannotBeEmpty {
    return Intl.message(
      'Пароль не может быть пустым',
      name: 'passwordCannotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Пароль должен быть не менее 6 символов`
  String get passwordTooShort {
    return Intl.message(
      'Пароль должен быть не менее 6 символов',
      name: 'passwordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Пароль не может быть длиннее 50 символов`
  String get passwordTooLong {
    return Intl.message(
      'Пароль не может быть длиннее 50 символов',
      name: 'passwordTooLong',
      desc: '',
      args: [],
    );
  }

  /// `Пароль должен содержать хотя бы одну заглавную букву`
  String get passwordMustContainUppercase {
    return Intl.message(
      'Пароль должен содержать хотя бы одну заглавную букву',
      name: 'passwordMustContainUppercase',
      desc: '',
      args: [],
    );
  }

  /// `Пароль должен содержать хотя бы одну строчную букву`
  String get passwordMustContainLowercase {
    return Intl.message(
      'Пароль должен содержать хотя бы одну строчную букву',
      name: 'passwordMustContainLowercase',
      desc: '',
      args: [],
    );
  }

  /// `Пароль должен содержать хотя бы одну цифру`
  String get passwordMustContainDigit {
    return Intl.message(
      'Пароль должен содержать хотя бы одну цифру',
      name: 'passwordMustContainDigit',
      desc: '',
      args: [],
    );
  }

  /// `Электронная почта не может быть длиннее 255 символов`
  String get emailTooLong {
    return Intl.message(
      'Электронная почта не может быть длиннее 255 символов',
      name: 'emailTooLong',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация`
  String get registerPageTitle {
    return Intl.message(
      'Регистрация',
      name: 'registerPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрироваться`
  String get register {
    return Intl.message(
      'Зарегистрироваться',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Уже есть аккаунт? Войти`
  String get alreadyHaveAccount {
    return Intl.message(
      'Уже есть аккаунт? Войти',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Создайте аккаунт`
  String get createAccount {
    return Intl.message(
      'Создайте аккаунт',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация прошла успешно!`
  String get registrationSuccess {
    return Intl.message(
      'Регистрация прошла успешно!',
      name: 'registrationSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрируйтесь, чтобы начать работу`
  String get signUpToGetStarted {
    return Intl.message(
      'Зарегистрируйтесь, чтобы начать работу',
      name: 'signUpToGetStarted',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get signOut {
    return Intl.message('Выйти', name: 'signOut', desc: '', args: []);
  }

  /// `Мои дела`
  String get my_todos {
    return Intl.message('Мои дела', name: 'my_todos', desc: '', args: []);
  }

  /// `Что-то пошло не так...`
  String get something_went_wrong {
    return Intl.message(
      'Что-то пошло не так...',
      name: 'something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Попробовать снова`
  String get try_again {
    return Intl.message(
      'Попробовать снова',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `Добавить`
  String get add {
    return Intl.message('Добавить', name: 'add', desc: '', args: []);
  }

  /// `Пока дел нет`
  String get not_todos_yet {
    return Intl.message(
      'Пока дел нет',
      name: 'not_todos_yet',
      desc: '',
      args: [],
    );
  }

  /// `Добавьте первую задачу!`
  String get add_your_first_todo {
    return Intl.message(
      'Добавьте первую задачу!',
      name: 'add_your_first_todo',
      desc: '',
      args: [],
    );
  }

  /// `Что нужно сделать?`
  String get whatToDo {
    return Intl.message(
      'Что нужно сделать?',
      name: 'whatToDo',
      desc: 'Подсказка / лейбл для поля заголовка задачи',
      args: [],
    );
  }

  /// `Купить молоко, позвонить маме...`
  String get whatToDoHint {
    return Intl.message(
      'Купить молоко, позвонить маме...',
      name: 'whatToDoHint',
      desc: '',
      args: [],
    );
  }

  /// `Заметки / детали`
  String get notes {
    return Intl.message(
      'Заметки / детали',
      name: 'notes',
      desc: 'Лейбл для поля заметок',
      args: [],
    );
  }

  /// `Например: обезжиренное, 2 пакета`
  String get notesHint {
    return Intl.message(
      'Например: обезжиренное, 2 пакета',
      name: 'notesHint',
      desc: '',
      args: [],
    );
  }

  /// `Список пуст`
  String get emptyListTitle {
    return Intl.message(
      'Список пуст',
      name: 'emptyListTitle',
      desc: '',
      args: [],
    );
  }

  /// `Добавьте свою первую задачу`
  String get emptyListSubtitle {
    return Intl.message(
      'Добавьте свою первую задачу',
      name: 'emptyListSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Произошла ошибка`
  String get errorOccurred {
    return Intl.message(
      'Произошла ошибка',
      name: 'errorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Повторить`
  String get tryAgain {
    return Intl.message('Повторить', name: 'tryAgain', desc: '', args: []);
  }

  /// `Введите название задачи`
  String get taskRequired {
    return Intl.message(
      'Введите название задачи',
      name: 'taskRequired',
      desc: 'Ошибка валидации: поле пустое',
      args: [],
    );
  }

  /// `Минимум 2 символа`
  String get taskTooShort {
    return Intl.message(
      'Минимум 2 символа',
      name: 'taskTooShort',
      desc: 'Ошибка валидации: слишком короткое название',
      args: [],
    );
  }

  /// `Максимум 100 символов`
  String get taskTooLong {
    return Intl.message(
      'Максимум 100 символов',
      name: 'taskTooLong',
      desc: 'Ошибка валидации: слишком длинное название',
      args: [],
    );
  }

  /// `Добавить задачу`
  String get addTaskButton {
    return Intl.message(
      'Добавить задачу',
      name: 'addTaskButton',
      desc: 'Текст на кнопке в bottom sheet',
      args: [],
    );
  }

  /// `Сохранить`
  String get save {
    return Intl.message('Сохранить', name: 'save', desc: '', args: []);
  }

  /// `Укажите чётко, что нужно сделать.\nЗаметки помогут не забыть важные детали.`
  String get taskCreationHint {
    return Intl.message(
      'Укажите чётко, что нужно сделать.\nЗаметки помогут не забыть важные детали.',
      name: 'taskCreationHint',
      desc:
          'Подсказка под полями ввода на экране создания задачи: объясняет, как лучше заполнять поля',
      args: [],
    );
  }

  /// `Редактировать задачу`
  String get editTask {
    return Intl.message(
      'Редактировать задачу',
      name: 'editTask',
      desc: 'Заголовок страницы редактирования задачи',
      args: [],
    );
  }

  /// `Вы можете изменить название и заметки задачи.\nНе забудьте сохранить изменения!`
  String get taskUpdateHint {
    return Intl.message(
      'Вы можете изменить название и заметки задачи.\nНе забудьте сохранить изменения!',
      name: 'taskUpdateHint',
      desc:
          'Подсказка под полями ввода на экране редактирования задачи: объясняет, что можно изменить и напоминает сохранить изменения',
      args: [],
    );
  }

  /// `Задача обновлена`
  String get taskUpdated {
    return Intl.message(
      'Задача обновлена',
      name: 'taskUpdated',
      desc: 'Текст в SnackBar после успешного обновления задачи',
      args: [],
    );
  }

  /// `Ошибка {error}`
  String error(Object error) {
    return Intl.message(
      'Ошибка $error',
      name: 'error',
      desc: 'Текст ошибки с параметром error, который содержит описание ошибки',
      args: [error],
    );
  }

  /// `Не удалось загрузить задачу {error}`
  String failedToLoadTask(Object error) {
    return Intl.message(
      'Не удалось загрузить задачу $error',
      name: 'failedToLoadTask',
      desc:
          'Текст ошибки с параметром error, который содержит описание ошибки при загрузке задачи для редактирования',
      args: [error],
    );
  }

  /// `Задача выполнена`
  String get taskCompleted {
    return Intl.message(
      'Задача выполнена',
      name: 'taskCompleted',
      desc: 'Текст, отображаемый рядом с иконкой галочки для выполненных задач',
      args: [],
    );
  }

  /// `Сохранение...`
  String get saving {
    return Intl.message(
      'Сохранение...',
      name: 'saving',
      desc:
          'Текст на кнопке сохранения во время выполнения операции сохранения',
      args: [],
    );
  }

  /// `Название задачи`
  String get taskTitle {
    return Intl.message(
      'Название задачи',
      name: 'taskTitle',
      desc: 'Лейбл для поля ввода названия задачи',
      args: [],
    );
  }

  /// `Заметка / описание`
  String get notesLabel {
    return Intl.message(
      'Заметка / описание',
      name: 'notesLabel',
      desc: 'Лейбл для поля ввода заметки/описания задачи',
      args: [],
    );
  }

  /// `Задача удалена`
  String get taskRemoved {
    return Intl.message(
      'Задача удалена',
      name: 'taskRemoved',
      desc: 'Текст в SnackBar после успешного удаления задачи',
      args: [],
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
