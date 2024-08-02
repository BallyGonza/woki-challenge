import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HttpService {
  HttpService() : _dio = Dio();

  final Dio _dio;

  Future<Either<String, dynamic>> get(String url) async {
    try {
      final response = await _dio.get<dynamic>(url);
      if (response.statusCode == 200) {
        return Right(response.data);
      } else {
        return Left('Error: ${response.statusCode}');
      }
    } catch (e) {
      return Left('Error: $e');
    }
  }
}
