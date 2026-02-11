import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/weather_cubit.dart';
import 'package:untitled/data/network_service.dart';
import 'package:untitled/weather_page.dart';

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
      home: BlocProvider(
        create: (context) =>
            WeatherCubit(networkService: NetworkServiceImpl(appId: apiKey)),
        child: const WeatherPage(),
      ),
    );
  }
}
