/*
Создайте программу, которая использует следующие ключевые слова и конструкции:
if-else: проверьте, положительное ли число, введенное пользователем.
for: реализуйте цикл для вывода чисел от 1 до 10.
switch-case: определите день недели на основе целого числа (например, 1 — понедельник, 2 — вторник и т.д.).
 */

import 'dart:io';

void main() {
  String str = '';
  print('Введите число a: ');
  str = stdin.readLineSync() ?? '';
  final double? a = double.tryParse(str);
  if (a != null) {
    if (a > 0)
      print('Число a=$a - положительное');
    else
      print('Число a=$a - не положительное');
  }
  else
    print('str=$str - не число');


  for (var  i=1; i <= 10; i++)
    print('i=$i');


  print('Введите номер дня недели [1:7]: ');
  str = stdin.readLineSync() ?? '';
  final int? day = int.tryParse(str);

  if (day == null) {
    print('Введено не целое число');
    return;
  }

  switch (day) {
    case 1:
      str = 'Понедельник';
    case 2:
      str = 'Вторник';
    case 3:
      str = 'Среда';
    case 4:
      str = 'Четверг';
    case 5:
      str = 'Пятница';
    case 6:
      str = 'Суббота';
    case 7:
      str = 'Воскресенье';
    default:
      str = 'Такого дня недели не существует';
  }
  print('day=$day - $str');

}