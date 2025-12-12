void startCountDown (int value) async {
  var numbers = countDown(value);

  try{
    await for (int number in numbers){
      print(number);
    }
  }
  catch(error){
    print(error);
  }
}

Stream<int> countDown(int value) async*{
  for(int i = value; i >= -10; i--){
    if (i <= 0){
      throw ArgumentError('Значение не может быть отрицательным');
    }

    await Future.delayed(Duration(seconds: 1)); //Асинхронная задержка
    yield i; //Генерируем значение и пристанавливаем выполнение
  }
}

void main() async{
  startCountDown(5);
}
