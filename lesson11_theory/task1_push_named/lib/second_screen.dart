import 'package:flutter/material.dart';

// Второй экран
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Второй экран')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Переход на третий экран при нажатии кнопки
                Navigator.pushNamed(context, '/third');;
              },
              child: const Text('Перейти на третий экран'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Возврат на предыдущий экран
                Navigator.pop(context);
              },
              child: const Text('Вернуться назад'),
            ),
          ],
        ),
      ),
    );
  }
}
