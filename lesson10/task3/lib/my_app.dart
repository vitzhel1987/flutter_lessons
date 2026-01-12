import 'package:flutter/material.dart';
import 'animated_controller.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lesson10 task3',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const OpacityFigure(title: 'Opacity Figure'),
    );
  }
}