// import 'package:hive/hive.dart';
import 'package:dartz/dartz.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:woki_app/data/data.dart';
import 'package:woki_app/services/services.dart';

class UserRepository {
  UserRepository({
    ApiService? apiService,
    Box<UserHive>? usersBox,
  })  : _apiService = apiService ?? ApiService(),
        _usersBox = usersBox ?? Hive.box<UserHive>('users_box');

  final ApiService _apiService;
  final Box<UserHive> _usersBox;

  Future<Either<String, List<User>>> getUsers() async {
    final either = await _apiService.getUsers();

    return either.fold(
      Left.new,
      (usersDto) {
        final users = usersDto.map(User.fromDto).toList();
        saveUsers(users);
        return Right(users);
      },
    );
  }

  Future<Either<String, void>> saveUsers(List<User> users) async {
    try {
      await _usersBox.clear();
      final entries = {
        for (final user in users) user.id: UserHive.fromModel(user),
      };
      await _usersBox.putAll(entries);
      return const Right(null);
    } catch (e) {
      return Left('Error while saving users: $e');
    }
  }

  Future<Either<String, List<User>>> getCachedUsers() async {
    try {
      final cachedUsers = _usersBox.values.map((e) => e.toModel()).toList();

      if (cachedUsers.isEmpty) {
        return const Left('No internet connection. No users in cache');
      }
      return Right(cachedUsers);
    } catch (e) {
      return Left('Error while getting cached users: $e');
    }
  }
}
