import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medialert/pages/auth_page/auth_page.dart';


void accountDeletionDialog(
  BuildContext context,
) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Account Deletion'),
        content: const Text('Do you really want to delete your account?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('NO'),
          ),
          TextButton(
            onPressed: () {
              FirebaseAuth.instance.currentUser!.delete();
              Navigator.pushNamed(
                context,
                AuthPage.routeName,
              );
            },
            child: const Text('YES'),
          ),
        ],
      );
    },
  );
}
