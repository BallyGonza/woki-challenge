import 'package:dartz/dartz.dart';
import 'package:woki_app/data/data.dart';
import 'package:woki_app/services/services.dart';

class ApiService {
  ApiService({HttpService? httpService})
      : _httpService = httpService ?? HttpService();

  final String baseUrl = 'https://jsonplaceholder.typicode.com';
  final HttpService _httpService;

  Future<Either<String, List<UserDto>>> getUsers() async {
    const endpoint = '/users';
    final url = '$baseUrl$endpoint';

    return await _httpService.get(url).then(
          (either) => either.fold(
            (failure) => Left('Error al obtener usuarios: $failure'),
            _parseUsers,
          ),
        );
  }

  Either<String, List<UserDto>> _parseUsers(dynamic response) {
    try {
      final responseList = response as List<dynamic>;
      final usersDTO = responseList
          .map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(usersDTO);
    } catch (e) {
      return Left('Error while parsing users: $e');
    }
  }
}
