//Создайте основной метод main(), который вызывает fetchData() и печатает результат.
//Напишите асинхронную функцию fetchData() (например, имитирующую загрузку данных из сети), которая возвращает строку через 2 секунды.


Future<String> fetchData(){
  return Future.delayed(Duration(seconds: 2), () =>  'Получены данные из сети');
}

void main() {
  print('Начало');
  fetchData().then((result) => print(result));
  print('Цонец');
}

