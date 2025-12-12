import 'dart:async';

void main() async{
  //Создаем StreamController Single Subscription один слушатель
  final StreamController<int> streamController = StreamController<int>();

  //Подписываемся на поток
  streamController.stream.listen (
    (data) => print('Получены данные: $data'),
    onDone: () => print('Поток закрыт'),
  );

  print ('Добавляем данные...');
  //Добавляем данные в поток
  streamController.add(1);
  streamController.add(2);

  //Закрываем поток и освобождаем ресурсы
  streamController.close();

  //Попытка добавить данные после закрытия вызовет ошибку
  //streamController.add(3);
}
