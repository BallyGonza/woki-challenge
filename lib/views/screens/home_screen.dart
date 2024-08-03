import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woki_app/blocs/blocs.dart';
import 'package:woki_app/views/views.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Woki App'),
      ),
      body: RefreshIndicator(
        color: Colors.blue,
        onRefresh: () async =>
            context.read<UserBloc>().add(const UserEvent.getUsers()),
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(child: CircularProgressIndicator()),
              loaded: (users, isCached) => UserList(
                users: users,
                isCached: isCached,
              ),
              error: (errorMessage) => RetryWidget(errorMessage: errorMessage),
            );
          },
        ),
      ),
    );
  }
}
