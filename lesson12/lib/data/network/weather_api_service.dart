import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:untitled/data/models/models.dart';

part 'weather_api_service.g.dart';

@RestApi(baseUrl: "https://api.openweathermap.org/data/2.5")
abstract class WeatherApiService {
  factory WeatherApiService(Dio dio, {String baseUrl}) = _WeatherApiService;

  @GET("/weather")
  Future<WeatherModel> fetchWeather({
    @Query("lat") required double latitude,
    @Query("lon") required double longitude,
    @Query("appid") required String apiKey,
  });
}
