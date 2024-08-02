import 'package:flutter/material.dart';
import 'package:woki_app/data/data.dart';
import 'package:woki_app/views/views.dart';

class UserList extends StatelessWidget {
  const UserList({
    required this.users,
    required this.isCached,
    super.key,
  });

  final List<User> users;
  final bool isCached;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isCached) _buildCacheWarning(),
        Expanded(
          child: users.isNotEmpty
              ? ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) => UserCard(user: users[index]),
                )
              : const Center(child: Text('No hay usuarios')),
        ),
      ],
    );
  }

  Widget _buildCacheWarning() {
    return Card(
      color: Colors.yellow[100],
      child: const ListTile(
        leading: Icon(Icons.info),
        title: Text(
          'No internet connection. Showing cached users.',
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
        ),
      ),
    );
  }
}
