import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:woki_app/data/data.dart';
import 'package:woki_app/views/views.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({
    required this.user,
    super.key,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Center(
              child: Text(
                user.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            UserInfoTile(
              icon: FontAwesomeIcons.user,
              title: 'Username',
              value: user.username,
            ),
            UserInfoTile(
              icon: FontAwesomeIcons.envelope,
              title: 'Email',
              value: user.email,
            ),
            UserInfoTile(
              icon: FontAwesomeIcons.addressBook,
              title: 'Address',
              value:
                  '${user.address?.street}, ${user.address?.suite}, ${user.address?.city}, ${user.address?.zipcode}',
            ),
            UserInfoTile(
              icon: FontAwesomeIcons.phone,
              title: 'Phone',
              value: user.phone,
            ),
            UserInfoTile(
              icon: FontAwesomeIcons.globe,
              title: 'Website',
              value: user.website,
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  const Icon(FontAwesomeIcons.building, size: 20),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Company',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          user.company?.name ?? 'N/A',
                          style: const TextStyle(fontSize: 16),
                        ),
                        Text(
                          user.company?.catchPhrase ?? 'N/A',
                          style: const TextStyle(fontSize: 16),
                        ),
                        Text(
                          user.company?.bs ?? 'N/A',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
