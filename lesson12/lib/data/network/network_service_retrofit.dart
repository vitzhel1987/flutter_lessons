import 'package:untitled/data/models/models.dart';
import 'package:dio/dio.dart';
import 'package:untitled/data/network/weather_api_service.dart';
import 'network_service_logger.dart';

abstract interface class NetworkService {
  Future<WeatherModel> fetchWeather({
    required double latitude,
    required double longitude,
    required String apiKey
  });
}

final class NetworkServiceImpl implements NetworkService {
  late final WeatherApiService _apiService;

  NetworkServiceImpl({Dio? dio}) {
    final client = dio ?? Dio();

    // Настройка клиента
    client.options = BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        //'Content-Type': 'application/json',
      },
    );

    // Добавляем интерсепторы для логирования
    client.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          logger.i('Отправляется запрос:');
          logger.i('URL: ${options.uri}');
          logger.i('Метод: ${options.method}');
          logger.d('Заголовки: ${options.headers}');
          logger.d('Параметры: ${options.queryParameters}');
          logger.d('Данные: ${options.data}');
          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          logger.i('Получен ответ:');
          logger.i('Статус-код: ${response.statusCode}');
          logger.d('Данные: ${response.data}');
          return handler.next(response);
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          logger.e('Ошибка: ${e.type} - ${e.message}');
          if (e.response != null) {
            logger.e('Статус: ${e.response!.statusCode}');
            logger.e('Данные ошибки: ${e.response!.data}');
          }
          return handler.next(e);
        },
      ),
    );

    // Создаем Retrofit сервис
    _apiService = WeatherApiService(client);
  }

  @override
  Future<WeatherModel> fetchWeather({
    required double latitude,
    required double longitude,
    required String apiKey
  }) async {
    try {
      return await _apiService.fetchWeather(
        latitude: latitude,
        longitude: longitude,
        apiKey: apiKey
      );
    } on DioException catch (e) {
      // Логирование ошибки уже в интерсепторе
      rethrow; // Перебрасываем исключение дальше
    }
  }
}