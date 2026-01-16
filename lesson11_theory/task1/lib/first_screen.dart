import 'package:flutter/material.dart';
import 'second_screen.dart';

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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          },
          child: const Text('Перейти на второй экран'),
        ),
      ),
    );
  }
}
