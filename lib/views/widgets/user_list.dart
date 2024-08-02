import 'package:flutter/material.dart';
import 'package:woki_app/data/data.dart';
import 'package:woki_app/views/views.dart';

class UserList extends StatelessWidget {
  const UserList({required this.users, super.key});

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: users.isNotEmpty
          ? ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return UserCard(
                  user: users[index],
                );
              },
            )
          : const SizedBox(),
    );
  }
}
