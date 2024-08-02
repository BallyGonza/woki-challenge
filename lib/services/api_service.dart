import 'package:dartz/dartz.dart';
import 'package:woki_app/data/data.dart';
import 'package:woki_app/services/services.dart';

class ApiService {
  ApiService();

  final String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<Either<String, List<UserDto>>> getUsers() async {
    const endpoint = '/users';
    final url = '$baseUrl$endpoint';

    final either = await HttpService().get(url);

    return either.fold(
      Left.new,
      (response) {
        try {
          final responseList = response as List<dynamic>;
          final usersDTO = responseList
              .map((e) => UserDto.fromJson(e as Map<String, dynamic>))
              .toList();

          return Right(usersDTO);
        } catch (e) {
          return Left('Error al procesar los datos: $e');
        }
      },
    );
  }
}
