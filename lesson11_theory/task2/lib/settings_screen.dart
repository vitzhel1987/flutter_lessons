import 'package:flutter/material.dart';
import 'theme_inherited_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeInherited = ThemeInheritedWidget.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Настройки'), centerTitle: true),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'Настройки темы',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Темный режим'),
                Switch(
                  value: themeInherited.themeData.brightness == Brightness.dark,
                  onChanged: (bool value) {
                    themeInherited.toggleTheme();
                  },
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              'Локальное изменение темы (только для этого экрана)',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Theme(
              data: Theme.of(context).copyWith(
                textTheme: Theme.of(
                  context,
                ).textTheme.copyWith(bodyLarge: TextStyle(color: Colors.red)),
              ),
              child: Builder(
                builder: (innerContext) {
                  return Text(
                    'Локально измененный текст',
                    style: Theme.of(innerContext).textTheme.bodyLarge,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Theme(
              data: Theme.of(context).copyWith(
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Локальная кнопка'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
