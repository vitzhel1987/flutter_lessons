import 'package:flutter/material.dart';
import 'package:todo_app/core/presentation/email.dart';
import 'package:todo_app/core/presentation/password.dart';
import 'package:todo_app/core/presentation/todo_elem.dart';
import 'package:todo_app/generated/l10n.dart';

class AppTextFieldValidator {
  static String? validateEmail(BuildContext context, Email email) {
    final displayError = email.displayError;

    if (displayError != null) {
      switch (displayError) {
        case EmailValidationError.empty:
          return S.of(context).emailCannotBeEmpty;
        case EmailValidationError.invalid:
          return S.of(context).invalidEmail;
        case EmailValidationError.tooLong:
          return S.of(context).emailTooLong;
      }
    }

    return null;
  }

  static String? validatePassword(BuildContext context, Password password) {
    final displayError = password.displayError;

    if (displayError != null) {
      switch (displayError) {
        case PasswordValidationError.empty:
          return S.of(context).passwordCannotBeEmpty;
        case PasswordValidationError.tooShort:
          return S.of(context).passwordTooShort;
        case PasswordValidationError.noUppercase:
          return S.of(context).passwordMustContainUppercase;
        case PasswordValidationError.noLowercase:
          return S.of(context).passwordMustContainLowercase;
        case PasswordValidationError.noDigit:
          return S.of(context).passwordMustContainDigit;
      }
    }

    return null;
  }

  static String? validateTodoElem(BuildContext context, TodoElem todoElem) {
    final displayError = todoElem.displayError;

    if (displayError != null) {
      switch (displayError) {
        case TodoElemValidationError.empty:
          return S.of(context).taskRequired;
        case TodoElemValidationError.tooShort:
      return S.of(context).taskTooShort;
      }
    }

    return null;
  }
}
