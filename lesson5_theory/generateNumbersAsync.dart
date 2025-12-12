Stream<int> generateNumbersAsync(int max) async*{
  for(int i = 1; i <= max; i++){
    await Future.delayed(Duration(seconds: 1)); //Асинхронная задержка
    yield i; //Генерируем значение и пристанавливаем выполнение
  }
}

void main() async{
  //Используем асинхронный генератор
  var numbers = generateNumbersAsync(5);

  //Подписываемся на поток и обрабатываем значения
  await for (var number in numbers){
    print(number);  // 1 (через 1 секунду), 2 (через 2 секунды)
  }
}
