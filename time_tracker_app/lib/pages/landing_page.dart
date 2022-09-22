import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_app/pages/home_page.dart';
import 'package:time_tracker_app/pages/sign_in_page.dart';
import 'package:time_tracker_app/services/auth.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key, required this.auth}) : super(key: key);

  final Auth auth;

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User? _user;

  @override
  void initState() {
    super.initState();
    _updateUser(widget.auth.currentUser);
  }

  void _updateUser(User? user) {
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInPage(
        auth: widget.auth,
        onSignIn: _updateUser,
      );
    } else {
      return HomePage(
        auth: widget.auth,
        onSignOut: () => _updateUser(null),
        user:
            _user!, // Know that _user is not null at this point, therefore use "!"
      );
    }
  }
}
