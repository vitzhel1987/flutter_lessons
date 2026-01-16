import 'package:flutter/material.dart';

// Первый экран
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Первый экран')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Переход на второй экран при нажатии кнопки
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Перейти на второй экран'),
        ),
      ),
    );
  }
}
