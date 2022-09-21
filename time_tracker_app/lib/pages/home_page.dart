import 'package:flutter/material.dart';
import 'package:time_tracker_app/services/auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.auth, required this.onSignOut})
      : super(key: key);

  final Auth auth;
  final VoidCallback onSignOut;

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
    );
  }
}