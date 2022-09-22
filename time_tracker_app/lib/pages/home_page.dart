import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_app/services/auth.dart';

class HomePage extends StatelessWidget {
  const HomePage(
      {Key? key,
      required this.auth,
      required this.onSignOut,
      required this.user})
      : super(key: key);

  final Auth auth;
  final VoidCallback onSignOut;
  final User user;

  void _signOut() {
    auth.signOut();
    onSignOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home page'),
        actions: <Widget>[
          TextButton(
            onPressed: _signOut,
            child: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Welcome ${user.displayName ?? "anonymous user"}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
