import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_app/components/buttons/sign_in_button.dart';
import 'package:time_tracker_app/components/buttons/social_sign_in_button.dart';
import 'package:time_tracker_app/services/auth.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key, required this.auth, required this.onSignIn})
      : super(key: key);

  final Auth auth;
  final void Function(User?) onSignIn;

  Future<void> _signInAnonymously() async {
    try {
      final user = await auth.signInAnonymously();
      onSignIn(user);
    } catch (e) {
      // TODO: Handle exception
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    const columnSpacing = 8.0;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 48.0),
          SocialSignInButton(
            text: 'Sign in with Google',
            imagePath: 'images/google-logo.png',
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(height: columnSpacing),
          SocialSignInButton(
            text: 'Sign in with Facebook',
            imagePath: 'images/facebook-logo.png',
            color: const Color(0xFF334D92),
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(height: columnSpacing),
          SignInButton(
            text: 'Sign in with email',
            color: Colors.teal,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(height: columnSpacing),
          const Text(
            'or',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: columnSpacing),
          SignInButton(
            text: 'Go anonymous',
            color: Colors.lime,
            textColor: Colors.black,
            onPressed: _signInAnonymously,
          ),
        ],
      ),
    );
  }
}