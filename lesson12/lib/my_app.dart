import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/data/network/network_service_retrofit.dart';
//import 'package:untitled/data/network_service.dart';
import 'package:untitled/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiProvider(
        providers: [
          Provider(
            create: (context) => Dio(),
          ),
          Provider<NetworkService>(
            create: (context) {
              final dio = Provider.of<Dio>(context, listen: false);

              return NetworkServiceImpl(dio: dio);
            },
          ),
        ],
        child: const HomePage(),
      ),
    );
  }
}
