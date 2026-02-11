import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/data/network_service.dart';
import 'package:untitled/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final apiKey = '3743a9f283c65c509025bf750db75f8e';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Provider<NetworkService>(
        create: (context) => NetworkServiceImpl(appId: apiKey),
        child: HomePage(),
      ),
    );
  }
}
