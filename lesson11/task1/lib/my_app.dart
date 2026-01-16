import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';
import 'contacts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/about': (context) => const About(),
        '/contacts': (context) => const Contacts(),
      },
    );
  }
}
