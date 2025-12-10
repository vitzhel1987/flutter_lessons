/*
Напишите программу, которая принимает два числа от пользователя и выполняет следующие операции
Сложение
Вычитание
Умножение
Деление
Проверка, какое число больше
 */

import 'dart:io';

void main() {
  String str = '';

  print('Введите число a: ');
  str = stdin.readLineSync() ?? '0';
  double a = double.tryParse(str) ?? 0;

  print('Введите число b: ');
  str = stdin.readLineSync() ?? '0';
  double b = double.tryParse(str) ?? 0;

  print('a+b=${a+b}');
  print('a-b=${a-b}');
  print('a*b=${a*b}');
  print(b != 0 ? 'a/b=${a/b}' : 'a/b не может быть вычислено т.к. b=0');
  print(a>b ? 'a>b -> $a>$b' : 'a<b -> $a<$b');

}