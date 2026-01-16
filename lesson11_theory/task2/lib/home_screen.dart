import 'package:flutter/material.dart';
import 'theme_inherited_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeInherited = ThemeInheritedWidget.of(context);

    return Scaffold(
      appBar: AppBar(title: Text('Изменение темы'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Текущая тема: ${themeInherited.themeData.brightness == Brightness.dark ? 'Тёмная' : 'Светлая'}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: themeInherited.toggleTheme,
              child: Text('Переключить тему'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: Text('Настройки'),
            ),
          ],
        ),
      ),
    );
  }
}
