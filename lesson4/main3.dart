/*
Создайте список List<int?>, который может содержать как целые числа, так и значения null.
Пройдитесь по списку и для каждого значения проверьте, является ли оно null. Если да, замените null на 0.
 */

import 'dart:io';

void main() {

  final List<int?> list = [1, 2, 3, null, 5, null, 7];

  print('list = $list');
  //не работает. а вообще можно?
  //list.forEach((number) => number ??= 0);
  //print('list = $list');
  for(var i=0; i < list.length; i++)
    list[i] ??= 0;
  print('list = $list');

  final List<int?> list2 = [];
  print('Введите размер списка list2 [по умолчанию=5]: ');
  int len2 = int.tryParse(stdin.readLineSync() ?? '') ?? 5;
  for(var i=0; i < len2; i++){
    print('Введите элемент $i: ');
    list2.add(int.tryParse(stdin.readLineSync() ?? ''));
  }
  print('list2 = $list2');
  for(var i=0; i < list2.length; i++)
    list2[i] ??= 0;
  print('list2 = $list2');
}