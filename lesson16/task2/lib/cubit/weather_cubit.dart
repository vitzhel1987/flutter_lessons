import 'package:bloc/bloc.dart';

import 'package:untitled/data/network_service.dart';
import 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final NetworkService _networkService;

  WeatherCubit({required NetworkService networkService})
    : _networkService = networkService,
      super(const WeatherInitial());

  Future<void> fetchWeatherInCity({required String cityName}) async {
    emit(const WeatherLoading());
    try {
      final dynamic weather = await _networkService.fetchWeatherInCity(
        cityName: cityName,
      );
      emit(WeatherLoaded(weather: weather));
    } catch (e) {
      emit(WeatherError(message: e.toString()));
    }
  }
}
