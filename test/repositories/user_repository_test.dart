// import 'dart:io';

// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:hive/hive.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:woki_app/data/data.dart';
// import 'package:woki_app/services/services.dart';

// class MockApiService extends Mock implements ApiService {}

// class MockHiveBox<T> extends Mock implements Box<T> {}

// void main() {
//   setUpAll(() async {
//     final tempDir = Directory.systemTemp.createTempSync();
//     Hive
//       ..init(tempDir.path)
//       ..registerAdapter(UserHiveAdapter());
//   });

//   late MockApiService mockApiService;
//   late MockHiveBox<UserHive> mockHiveBox;
//   late UserRepository userRepository;

//   setUp(() {
//     mockApiService = MockApiService();
//     mockHiveBox = MockHiveBox<UserHive>();
//     userRepository = UserRepository(
//       apiService: mockApiService,
//       usersBox: mockHiveBox,
//     );
//   });

//   group('UserRepository', () {
//     final userDto = UserDto(
//       id: 1,
//       name: 'John Doe',
//     );
//     final user = User.fromDto(userDto);
//     final userHive = UserHive.fromModel(user);

//     test('getUsers returns a list of users when the API call is successful',
//         () async {
//       when(() => mockApiService.getUsers())
//           .thenAnswer((_) async => Right([userDto]));

//       final result = await userRepository.getUsers();

//       expect(result, Right<String, List<User>>([user]));
//       verify(() => mockHiveBox.putAll({user.id: userHive})).called(1);
//     });

//     test('getUsers returns an error when the API call fails', () async {
//       when(() => mockApiService.getUsers())
//           .thenAnswer((_) async => const Left('API error'));

//       final result = await userRepository.getUsers();

//       expect(result, const Left<String, List<User>>('API error'));
//       verifyNever(() => mockHiveBox.putAll(any()));
//     });

//     test('saveUsers saves users to the Hive box and returns Right(null)',
//         () async {
//       when(() => mockHiveBox.putAll(any())).thenAnswer((_) async {});

//       final result = await userRepository.saveUsers([user]);

//       expect(result, const Right<String, void>(null));
//       verify(() => mockHiveBox.clear()).called(1);
//       verify(() => mockHiveBox.putAll({user.id: userHive})).called(1);
//     });

//     test('saveUsers returns an error when saving to the Hive box fails',
//         () async {
//       when(() => mockHiveBox.clear()).thenThrow(Exception('Hive error'));

//       final result = await userRepository.saveUsers([user]);

//       expect(
//         result,
//         const Left<String, void>(
//           'Error while saving users: Exception: Hive error',
//         ),
//       );
//       verify(() => mockHiveBox.clear()).called(1);
//       verifyNever(() => mockHiveBox.putAll(any()));
//     });

//     test('getCachedUsers returns a list of cached users when users are present',
//         () async {
//       when(() => mockHiveBox.values).thenReturn([userHive]);

//       final result = await userRepository.getCachedUsers();

//       expect(result, Right<String, List<User>>([user]));
//     });

//     test('getCachedUsers returns an error when no users are cached', () async {
//       when(() => mockHiveBox.values).thenReturn([]);

//       final result = await userRepository.getCachedUsers();

//       expect(
//         result,
//         const Left<String, List<User>>(
//           'No internet connection. No users in cache',
//         ),
//       );
//     });

//     test('getCachedUsers returns an error when retrieving cached users fails',
//         () async {
//       when(() => mockHiveBox.values).thenThrow(Exception('Hive error'));

//       final result = await userRepository.getCachedUsers();

//       expect(
//         result,
//         const Left<String, List<User>>(
//           'Error while getting cached users: Exception: Hive error',
//         ),
//       );
//     });
//   });
// }
