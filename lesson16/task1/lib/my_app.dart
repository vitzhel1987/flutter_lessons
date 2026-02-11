import 'package:flutter/material.dart';
import 'note_change_notifier_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChangeNotifier',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const NoteChangeNotifierPage(),
    );
  }
}
