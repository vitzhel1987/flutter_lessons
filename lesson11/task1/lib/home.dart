import 'package:flutter/material.dart';

// Главный экран
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Главный экран')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');;
              },
              child: const Text('Перейти на экран "О приложении"'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contacts');;
              },
              child: const Text('Перейти на экран "Контакты"'),
            ),
          ],
        ),
      ),
    );
  }
}
