//import 'dart:async';

Future<String> getData1() async {
  await Future.delayed(Duration(seconds: 1));

  //await Future.value('value');
  print('getData1 ${DateTime.now()}');

  return 'Данные загружены';
}

Future<String> getData2() async {
  await Future.delayed(Duration(seconds: 2));

  //await Future.value('value');
  print('getData2 ${DateTime.now()}');

  return 'Данные загружены';
}

Future<String> getData5() async {
  await Future.delayed(Duration(seconds: 5));

  //await Future.value('value');
  print('getData5 ${DateTime.now()}');

  return 'Данные загружены';
}

void main() async{

  // print('Начало');
  // getData().then((result) => print(result));
  // print('Конец');


  print('Начало');

  late var data2;

  try {
    //String data = getData();
    getData5();
    data2 = getData2();
    getData1();
    //await Future.delayed(Duration(seconds: 5));
    //print('Ответ сервера: $data');
  }
  catch(error){
    print('Ошибка: $error');
  }

  await data2;

  print('Конец  ${DateTime.now()}');

}


// Future<String> fetchData() => Future.delayed(Duration(seconds: 2), () => "Полученный json-объект...");
// Future<void> main() async {
//   print("some work..");
//   final fetchdata = fetchData().then((data) => print(data));
//   print("some work..");
//   print("awaiting result...");
//   await fetchdata;
//   print("work is done");
// }
