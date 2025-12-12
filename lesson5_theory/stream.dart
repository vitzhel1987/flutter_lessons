import 'dart:async';

void main() async{
  //Создаем StreamController Single Subscription один слушатель
  //final StreamController<int> streamController = StreamController<int>();

  //Создаем StreamController Broadcast несколько слушателей
  final StreamController<int> streamController = StreamController<int>.broadcast();

  //Получаем поток из StreamController
  final Stream<int> stream = streamController.stream;

  //Первый слушатель
  print ('Слушатель 1');
  stream.listen((int data) {
    print ('Слушатель 1: Получены данные: $data');
  });

  //Второй слушатель
  print ('Слушатель 2');
  stream.listen((int data) {
    print ('Слушатель 2: Получены данные: $data');
  });

  print ('Добавляем данные...');
  //Добавляем данные в поток
  streamController.add(1);
  print ('1');
  Future.delayed(Duration(seconds: 0), () => print("action"));
  streamController.add(2);
  streamController.add(3);
  print ('3');

  //Закрываем поток после использования
  streamController.close();
  print ('close');
}
