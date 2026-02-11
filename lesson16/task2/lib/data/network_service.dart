import 'package:untitled/data/models/models.dart';
import 'package:dio/dio.dart';
import 'network_service_logger.dart';

abstract interface class NetworkService {
  Future<WeatherModel> fetchWeather({
    required double latitude,
    required double longitude,
  });

  Future<WeatherModel> fetchWeatherInCity({required String cityName});
}

final class NetworkServiceImpl implements NetworkService {
  static const String _baseUrl = 'https://api.openweathermap.org/data/2.5';

  final String appId;
  late final Dio _dio;

  NetworkServiceImpl({Dio? dio, required this.appId}) {
    _dio = dio ?? Dio();

    _dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        //'Content-Type': 'application/json',
      },
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          logger.i('Отправляется запрос:');
          //options.headers['Content-Type'] = 'application/json';
          options.queryParameters['appid'] = appId;
          logger.i('URL: ${options.uri}');
          logger.i('Метод: ${options.method}');
          logger.d('Заголовки: ${options.headers}');
          logger.d('Данные: ${options.data}');
          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          logger.i('Получен ответ:');
          logger.i('Статус-код: ${response.statusCode}');
          logger.d('Данные: ${response.data}');
          return handler.next(response);
        },
        onError: (e, handle) {
          logger.e('Ошибка: ${e.type} - ${e.message}');
          handle.next(e);
        },
      ),
    );
  }

  @override
  Future<WeatherModel> fetchWeather({
    required double latitude,
    required double longitude,
  }) async {
    final path = '$_baseUrl/weather?lat=$latitude&lon=$longitude';

    final response = await _dio.get<Map<String, dynamic>>(path);

    final data = response.data as Map<String, dynamic>;

    return WeatherModel.fromJson(data);
  }

  @override
  Future<WeatherModel> fetchWeatherInCity({
    required String cityName,
  }) async {
    final path = '$_baseUrl/weather?q=$cityName';

    final response = await _dio.get<Map<String, dynamic>>(path);

    final data = response.data as Map<String, dynamic>;

    return WeatherModel.fromJson(data);
  }
}
