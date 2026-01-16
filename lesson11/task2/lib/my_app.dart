import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'about_screen.dart';
import 'contacts_screen.dart';
import 'contact_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/contacts': (context) => const ContactsScreen(),
        '/contact': (context) => const ContactScreen(),
      },
    );
  }
}
