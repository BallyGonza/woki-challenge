// ignore_for_file: cascade_invocations

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woki_app/blocs/blocs.dart';
import 'package:woki_app/data/data.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const UserState.initial()) {
    on<UserInitialEvent>(_onInit);
    on<UserGetUsersEvent>(_onGetUsers);
    add(const UserEvent.init());
  }

  final UserRepository _userRepository;
  final Connectivity _connectivity = Connectivity();

  Future<void> _onInit(UserInitialEvent event, Emitter<UserState> emit) async {
    await _getUsers(emit);
  }

  Future<void> _onGetUsers(
    UserGetUsersEvent event,
    Emitter<UserState> emit,
  ) async {
    await _getUsers(emit);
  }

  Future<void> _getUsers(Emitter<UserState> emit) async {
    emit(const UserState.loading());

    final connectivityResult = await _connectivity.checkConnectivity();
    final eitherUsers = connectivityResult == ConnectivityResult.none
        ? await _userRepository.getCachedUsers()
        : await _userRepository.getUsers();

    eitherUsers.fold(
      (failure) => emit(UserState.error(failure)),
      (users) => emit(
        UserState.loaded(
          users: users,
          isCached: connectivityResult == ConnectivityResult.none,
        ),
      ),
    );
  }
}
