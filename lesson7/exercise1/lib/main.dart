import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter lesson 7',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
      //home: const MyHomePage(title: 'Приложение Flutter'),
      home: const MyHomePage(title: 'Моё первое приложение Flutter'),
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Привет, Flutter!');
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _elevatedButtonText = 'Нажми меня';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _elevatedButtonPressed() {
    setState(() {
      print('Кнопка ElevatedButton нажата!');
      if (_elevatedButtonText != 'Вы нажали кнопку!')
        _elevatedButtonText = 'Вы нажали кнопку!';
      else
        _elevatedButtonText = 'А вы азартный!!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const HelloFlutter(),
            //RaisedButton устарел во Flutter 2.0+ и удален в более новых версиях
            ElevatedButton(
                onPressed: _elevatedButtonPressed,
                child: Text('$_elevatedButtonText')
            ),
            const Text('Нажмите на кнопку внизу экрана для обновления счётчика:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        //onPressed: () => print('Кнопка нажата!'),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
