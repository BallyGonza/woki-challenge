// import 'package:hive/hive.dart';
import 'package:dartz/dartz.dart';
import 'package:woki_app/data/data.dart';
import 'package:woki_app/services/services.dart';

class UserRepository {
  UserRepository();

  Future<Either<String, List<User>>> getUsers() async {
    final either = await ApiService().getUsers();

    return either.fold(
      (failure) => Left(failure),
      (usersDto) => Right(
        usersDto.map(User.fromDto).toList(),
      ),
    );
  }

  // final Box<UserModel> box = Hive.box<UserModel>('users_box');

//   // get user from box
//   Future<UserModel> getUser() async {
//     if (box.isEmpty) {
//       await saveUser(defaultUser);
//       return box.getAt(0)!;
//     } else {
//       return box.getAt(0)!;
//     }
//   }

//   // save user to box
//   Future<void> saveUser(UserModel user) async {
//     await box.put(user.id, user);
//   }
}

// UserModel defaultUser = UserModel(
//   id: 0,
// );
