import 'package:flutter/material.dart';
import 'animated_container.dart';
import 'animated_switcher.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lesson10 task1',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const AnimatedContainerSquare(title: 'AnimatedContainer'),
      //home: const AnimatedSwitcherSquare(title: 'AnimatedSwitcher'),
    );
  }
}