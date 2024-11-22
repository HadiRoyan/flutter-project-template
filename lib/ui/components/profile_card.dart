import 'package:flutter/material.dart';

import '../../data/model/user.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        height: 250,
        width: 250,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.account_circle,
              size: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              user?.name ?? 'Name',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              user?.email ?? 'email@mail.com',
              style: const TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
