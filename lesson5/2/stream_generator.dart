//Создайте поток с одиночной подпиской, который будет генерировать числа от 1 до 10
// с интервалом в 1 секунду. Создайте слушателя, который будет печатать каждое число,
// полученное из потока, и завершать поток после получения всех чисел.

import 'dart:async';

Stream<int> generateNumbersAsync(int max) async* {
  for(var i = 1; i <= max; i++) {
    //await Future.delayed(Duration(seconds: 1));
    //yield i;
    yield await Future.delayed(Duration(seconds: 1), () => i);
  }
}

void main() async{
  final numbers = generateNumbersAsync(10);
  final streamController = StreamController<int>();

  streamController.stream
    .listen((data) => print("Полученные данные: $data"),
    onDone: () => print("Поток закрыт")
  );

  await for(final number in numbers) {
    streamController.add(number);
  }
  streamController.close();
}