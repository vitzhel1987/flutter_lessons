import 'package:flutter/material.dart';
import 'theme_inherited_widget.dart';
import 'home_screen.dart';
import 'settings_screen.dart';

class ThemeApp extends StatefulWidget {
  const ThemeApp({super.key});

  @override
  _ThemeAppState createState() => _ThemeAppState();
}

class _ThemeAppState extends State<ThemeApp> {
  ThemeData _currentTheme = ThemeData.light();

  void toggleTheme() {
    setState(() {
      _currentTheme = _currentTheme == ThemeData.light()
          ? ThemeData.dark()
          : ThemeData.light();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeInheritedWidget(
      themeData: _currentTheme,
      toggleTheme: toggleTheme,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Inherited Widget Theme',
            theme: ThemeInheritedWidget.of(context).themeData,
            initialRoute: '/',
            routes: {
              '/': (context) => const HomeScreen(),
              '/settings': (context) => const SettingsScreen(),
            },
          );
        },
      ),
    );
  }
}
