//Создайте класс Counter, который будет управлять состоянием счетчика.
//Класс должен содержать поле _count (приватное) для хранения текущего значения счетчика.
//Класс должен использовать StreamController для управления потоком изменений счетчика.
//Добавьте метод increment(), который увеличивает значение счетчика на 1 и добавляет новое значение в поток.
//Добавьте метод decrement(), который уменьшает значение счетчика на 1 и добавляет новое значение в поток.
//Добавьте метод stream, который возвращает поток изменений счетчика.
//Создайте функцию main, которая:
//Создает экземпляр Counter.
//Подписывается на поток изменений счетчика и выводит каждое новое значение.
//Вызывает increment() и decrement() несколько раз, чтобы продемонстрировать работу счетчика.
//Добавьте обработку ошибок: если значение счетчика становится отрицательным, поток должен завершиться с ошибкой.

import 'dart:async';

class Counter{
  int _count;
  final StreamController<int> _streamController = StreamController<int>();

  Counter(this._count);

  Stream stream() => _streamController.stream;

  void increment(){
    _count++;
    _streamController.add(_count);
  }

  void decrement(){
    _count--;
    if(_count < 0) {
      _streamController.addError("Счетчик стал отрицательным");
      _streamController.close();
    }
    else {
      _streamController.add(_count);
    }
  }
}

void main(){
  Counter counter = Counter(3);

  counter.stream()
      .listen((count) => print("Значение счетчика: $count"),
      onError: (ex) => print("Поток завершен с ошибкой: $ex"),
      onDone: () => print("Поток закрыт")
  );

  counter.increment();
  counter.increment();
  counter.decrement();
  counter.decrement();
  counter.decrement();
  counter.decrement();
  counter.decrement();
  counter.decrement();

}