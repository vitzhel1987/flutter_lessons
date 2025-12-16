//Напишите функцию filterEvenNumbers(List<int> numbers), которая принимает список
// целых чисел и возвращает новый список, содержащий только чётные числа.

import 'dart:io';

List<int> filterEvenNumbers(List<int> numbers){
  List<int> eventNumbers=[];
  for (var number in numbers){
    if (number.isEven)
      eventNumbers.add(number);
  }
  return eventNumbers;
}

void main() {
  final List<int> numbers = [];
  print('Введите размер списка numbers [по умолчанию=5]: ');
  final int len = int.tryParse(stdin.readLineSync() ?? '') ?? 5;
  for(var i=0; i < len; i++){
    print('Введите элемент $i [по умолчанию=0]: ');
    numbers.add(int.tryParse(stdin.readLineSync() ?? '') ?? 0);
  }
  print('numbers = $numbers');
  final List<int> eventNumbers = filterEvenNumbers(numbers);
  print('eventNumbers = $eventNumbers');

}

