import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_tracker_app/services/auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _signOut(BuildContext context) {
    final auth = Provider.of<Auth>(context, listen: false);
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home page'),
        actions: <Widget>[
          TextButton(
            onPressed: () => _signOut(context),
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
