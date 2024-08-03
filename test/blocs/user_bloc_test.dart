

// import 'package:bloc_test/bloc_test.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:woki_app/blocs/blocs.dart';
// import 'package:woki_app/data/data.dart';

// // Define mock classes using mocktail
// class MockUserRepository extends Mock implements UserRepository {}

// class MockConnectivity extends Mock implements Connectivity {}

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   late MockUserRepository mockUserRepository;
//   late MockConnectivity mockConnectivity;
//   late UserBloc userBloc;

//   setUp(() {
//     mockUserRepository = MockUserRepository();
//     mockConnectivity = MockConnectivity();
//     userBloc = UserBloc(
//       userRepository: mockUserRepository,
//       connectivity: mockConnectivity,
//     );
//   });

//   group('UserBloc', () {
//     blocTest<UserBloc, UserState>(
//       'emits [UserState.loading, UserState.loaded] when UserInitialEvent is added and users are fetched successfully',
//       build: () {
//         when(() => mockUserRepository.getUsers()).thenAnswer(
//           (_) async => Right([
//             User(
//               id: 1,
//               name: 'John Doe',
//               username: 'johndoe',
//               email: 'jLJ2N@example.com',
//               phone: '123-456-7890',
//               website: 'www.johndoe.com',
//             ),
//           ]),
//         );
//         when(() => mockConnectivity.checkConnectivity())
//             .thenAnswer((_) async => ConnectivityResult.wifi);

//         return userBloc;
//       },
//       act: (UserBloc bloc) => bloc.add(const UserInitialEvent()),
//       expect: () => [
//         UserState.loaded(
//           users: [
//             User(
//               id: 1,
//               name: 'John Doe',
//               username: 'johndoe',
//               email: 'jLJ2N@example.com',
//               phone: '123-456-7890',
//               website: 'www.johndoe.com',
//             ),
//           ],
//           isCached: false,
//         ),
//       ],
//     );

//     blocTest<UserBloc, UserState>(
//       'emits [UserState.loading, UserState.loaded] when UserGetUsersEvent is added and users are fetched from cache',
//       build: () {
//         when(() => mockConnectivity.checkConnectivity())
//             .thenAnswer((_) => Future.value(ConnectivityResult.none));
//         when(() => mockUserRepository.getCachedUsers()).thenAnswer(
//           (_) => Future.value(
//             Right([
//               User(
//                 id: 1,
//                 name: 'John Doe',
//                 username: 'johndoe',
//                 email: 'jLJ2N@example.com',
//                 phone: '123-456-7890',
//                 website: 'www.johndoe.com',
//               ),
//             ]),
//           ),
//         );

//         return userBloc;
//       },
//       act: (bloc) => bloc.add(const UserGetUsersEvent()),
//       expect: () => [
//         const UserState.loading(),
//         UserState.loaded(
//           users: [
//             User(
//               id: 1,
//               name: 'John Doe',
//               username: 'johndoe',
//               email: 'jLJ2N@example.com',
//               phone: '123-456-7890',
//               website: 'www.johndoe.com',
//             ),
//           ],
//           isCached: true,
//         ),
//       ],
//     );

//     blocTest<UserBloc, UserState>(
//       'emits [UserState.loading, UserState.error] when UserGetUsersEvent is added and fetching users fails',
//       build: () {
//         when(() => mockConnectivity.checkConnectivity())
//             .thenAnswer((_) async => ConnectivityResult.wifi);
//         when(() => mockUserRepository.getUsers())
//             .thenAnswer((_) async => Left('Failed to fetch users'));

//         return userBloc;
//       },
//       act: (bloc) => bloc.add(const UserGetUsersEvent()),
//       expect: () => [
//         const UserState.loading(),
//         UserState.error('Failed to fetch users'),
//       ],
//     );
//   });
// }
