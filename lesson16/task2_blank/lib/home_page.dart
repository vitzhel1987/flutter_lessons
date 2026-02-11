import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/data/network_service.dart';
import 'data/models/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _cityTextController = TextEditingController();

  late Future<WeatherModel> _weatherFuture;

  @override
  void initState() {
    super.initState();
    _cityTextController.text = 'Gomel';
    _weatherFuture = context.read<NetworkService>().fetchWeatherInCity(
      cityName: 'Gomel',
    );
  }

  void _fetchWeatherInCity() {
    final city = _cityTextController.text.trim();

    if (city.isEmpty) {
      return;
    }

    setState(() {
      _weatherFuture = context.read<NetworkService>().fetchWeatherInCity(
        cityName: city,
      );
    });
  }

  @override
  void dispose() {
    _cityTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Погода'), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: _cityTextController,
                onFieldSubmitted: (_) => _fetchWeatherInCity(),
                decoration: InputDecoration(
                  label: Text('Введите город'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: _fetchWeatherInCity,
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Получить'),
                ),
              ),
              const SizedBox(height: 8.0),

              FutureBuilder(
                future: _weatherFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        'Ошибка: ${snapshot.error}',
                        style: const TextStyle(color: Colors.red),
                      ),
                    );
                  }

                  final weather = snapshot.data;

                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Долгота: ${weather?.coord?.lon ?? 'нет данных'}'),
                        Text('Широта: ${weather?.coord?.lat ?? 'нет данных'}'),
                        Text('Город: ${weather?.name ?? 'нет наименования'}'),
                        Text(
                          'Погода: ${weather?.weather?[0].main ?? 'no main'}',
                        ),
                        Text(
                          'Описание: ${weather?.weather?[0].description ?? 'no description'}',
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// FutureBuilder(
// future: context.read<NetworkService>().fetchWeather(
// latitude: gomelLatitude,
// longitude: gomellongitude,
// ),
// builder: (context, snapshot) {
// if (snapshot.connectionState == ConnectionState.waiting) {
// return const Center(child: CircularProgressIndicator());
// }
//
// if (snapshot.hasError) {
// return Center(child: Text('Error: ${snapshot.error}'));
// }
//
// final weather = snapshot.data;
//
// return Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text('${weather?.coord?.lon ?? 'no lon'}'),
// Text('${weather?.coord?.lat ?? 'no lat'}'),
// Text(weather?.name ?? 'no name'),
// Text(
// weather?.weather?.elementAtOrNull(0)?.main ??
// 'no main',
// ),
// Text(
// weather?.weather?.elementAtOrNull(0)?.description ??
// 'no description',
// ),
// ],
// ),
// );
// },
// ),
// SizedBox(height: 8.0),
