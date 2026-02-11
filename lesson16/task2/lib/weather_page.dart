import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/weather_cubit.dart';
import 'cubit/weather_state.dart';
import 'data/models/models.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final _cityTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _cityTextController.text = 'Gomel';
  }

  void _fetchWeatherInCity() {
    final city = _cityTextController.text.trim();
    if (city.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Введите название города')),
      );
      return;
    }
    context.read<WeatherCubit>().fetchWeatherInCity(cityName: city);
  }

  @override
  void dispose() {
    _cityTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<WeatherCubit, WeatherState>(
      listener: (context, state) {
        if(state is WeatherError){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      child: Scaffold(
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
                BlocBuilder<WeatherCubit, WeatherState>(
                  builder: (context, state) {
                    return switch (state) {
                      WeatherInitial() =>
                      const Center(
                          child: Text('Введите город и нажмите "Получить"')),
                      WeatherLoading() =>
                      const Center(child: CircularProgressIndicator()),
                      WeatherError() =>
                          Center(
                            child: Text(
                              'Ошибка: ${state.message}',
                              style: const TextStyle(color: Colors.red),
                            ),
                          ),
                      WeatherLoaded() =>
                          _WeatherDisplay(weather: state.weather),
                      _ => const SizedBox(),
                    };
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _WeatherDisplay extends StatelessWidget {
  final WeatherModel weather;

  const _WeatherDisplay({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Долгота: ${weather.coord?.lon ?? 'нет данных'}'),
          Text('Широта: ${weather.coord?.lat ?? 'нет данных'}'),
          Text('Город: ${weather.name ?? 'нет наименования'}'),
          Text(
            'Погода: ${weather.weather?.isNotEmpty == true ? weather.weather![0]
                .main : 'нет данных'}',
          ),
          Text(
            'Описание: ${weather.weather?.isNotEmpty == true ? weather
                .weather![0].description : 'нет описания'}',
          ),
        ],
      ),
    );
  }
}