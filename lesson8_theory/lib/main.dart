import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final mediaQueryWidth = mediaQuery.size.width;

    return MaterialApp(
      title: 'lesson8_theory',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    //color: Colors.green,  //конфликтует с decoration.color
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16), // Радиус скругления
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_back, size: 30),
                    onPressed: (){
                      print('IconButton.onPressed');
                    },
                  ),
                  Positioned(
                    top: 150,
                    left: mediaQueryWidth<600 ? 0 : (mediaQueryWidth-100)/2,
                    child: Container(
                      width: 100, // Обязательно одинаковые ширина и высота!
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.white, // Цвет
                          width: 2,          // Толщина
                        ),
                        shape: BoxShape.circle, // Самый простой способ
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
              ),
              Align(
                alignment: mediaQueryWidth<600 ? AlignmentGeometry.topLeft : AlignmentGeometry.center,
                child: Padding(
                  padding: mediaQueryWidth<600 ? EdgeInsets.only(left: 20, top: 10) : EdgeInsets.only(left: 0, top: 10),
                  child: Column(
                    textDirection: TextDirection.ltr,
                    crossAxisAlignment: mediaQueryWidth<600 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                    children: [
                      const Text('Иван Иванов', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const Text('Разработчик Flutter', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ]
                  )
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyWitgetColumn('1.2K', 'Подписчики'),
                    MyWitgetColumn('356', 'Подписки'),
                    MyWitgetColumn('48', 'Посты'),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        print('ElevatedButton.onPressed: Редактировать');
                      },
                      child: const Text('Редактировать'),
                    ),
                    OutlinedButton(
                      onPressed: (){
                        print('ElevatedButton.onPressed: Поделиться');
                      },
                      child: const Text('Поделиться'),
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      )
    );
  }
}

class MyWitgetColumn extends StatelessWidget{
  final String str1;
  final String str2;

  const MyWitgetColumn(this.str1, this.str2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(str1, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(str2, style: TextStyle(fontSize: 12, color: Colors.grey)),
      ]
    );
  }
}