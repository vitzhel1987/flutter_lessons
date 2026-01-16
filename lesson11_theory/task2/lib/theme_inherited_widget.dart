import 'package:flutter/material.dart';

class ThemeInheritedWidget extends InheritedWidget {
  final ThemeData themeData;
  final VoidCallback toggleTheme;

  const ThemeInheritedWidget({
    Key? key,
    required this.themeData,
    required this.toggleTheme,
    required Widget child,
  }) : super(key: key, child: child);

  static ThemeInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(ThemeInheritedWidget oldWidget) {
    return themeData != oldWidget.themeData;
  }
}
