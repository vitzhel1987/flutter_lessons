import 'package:untitled/data/models/models.dart';
import 'package:dio/dio.dart';

abstract interface class NetworkService {
  Future<List<User>> fetchUsers();
}

final class NetworkServiceImpl implements NetworkService {
  final Dio _dio;

  const NetworkServiceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<List<User>> fetchUsers() async {
    final response = await _dio.get<List<dynamic>>(
      'https://jsonplaceholder.typicode.com/users',
    );

    final data = response.data ?? List.empty();

    return data
        .map((json) => User.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
