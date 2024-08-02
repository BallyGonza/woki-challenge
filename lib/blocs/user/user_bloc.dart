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

  Future<void> _onInit(
    UserInitialEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
    try {
      final usersEither = await _userRepository.getUsers();
      usersEither.fold(
        (failure) => emit(UserState.error(failure)),
        (users) => emit(UserState.loaded(users: users)),
      );
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }

  Future<void> _onGetUsers(
    UserGetUsersEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
    try {
      final usersEither = await _userRepository.getUsers();
      usersEither.fold(
        (failure) => emit(UserState.error(failure)),
        (users) => emit(UserState.loaded(users: users)),
      );
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }
}
