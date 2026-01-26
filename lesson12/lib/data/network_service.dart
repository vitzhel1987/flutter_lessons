import 'package:untitled/data/models/models.dart';
import 'package:dio/dio.dart';
import 'network/network_service_logger.dart';

abstract interface class NetworkService {
  Future<WeatherModel> fetchWeather({
    required double latitude,
    required double longitude,
    required String apiKey,
  });
}

final class NetworkServiceImpl implements NetworkService {
  static const String _baseUrl = 'https://api.openweathermap.org/data/2.5';

  late final Dio _dio;

  NetworkServiceImpl({required Dio dio}) {
    _dio = dio;
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          logger.i('Отправляется запрос:');
          //options.headers['Content-Type'] = 'application/json';
          //options.queryParameters['appid'] = _appId;
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
    required String apiKey,
  }) async {
    final path = '$_baseUrl/weather?lat=$latitude&lon=$longitude&appid=$apiKey';

    final response = await _dio.get<Map<String, dynamic>>(path);

    final data = response.data as Map<String, dynamic>;

    return WeatherModel.fromJson(data);
  }
}
