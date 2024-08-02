import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:woki_app/data/data.dart';
import 'package:woki_app/views/views.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    required this.user,
    super.key,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute<UserScreen>(
                  builder: (context) => UserScreen(
                    user: user,
                  ),
                ),
              ),
              leading: const Icon(FontAwesomeIcons.user),
              title: Text(
                user.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                user.phone,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
