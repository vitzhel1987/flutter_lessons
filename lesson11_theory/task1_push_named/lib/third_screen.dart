import 'package:flutter/material.dart';

// Третий экран
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Третий экран')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Переход на главный экран при нажатии кнопки
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Перейти на главный экран'),
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
