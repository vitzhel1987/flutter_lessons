import 'package:flutter/material.dart';
import 'animated_container.dart';
import 'animated_controller.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lesson10_theory',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      //home: const AnimatedSquare(title: 'Implicit Animation'),
      home: const RotatingScalingStar(title: 'Explicit Animation'),
    );
  }
}