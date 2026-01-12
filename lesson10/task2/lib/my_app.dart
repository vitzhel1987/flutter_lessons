import 'package:flutter/material.dart';
import 'animated_positioned.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lesson10 task2',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const AnimatedPositionedCircle(title: 'AnimatedPositioned'),
    );
  }
}