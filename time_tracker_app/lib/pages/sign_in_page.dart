import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_tracker_app/components/buttons/sign_in_button.dart';
import 'package:time_tracker_app/components/buttons/social_sign_in_button.dart';
import 'package:time_tracker_app/services/auth.dart';

import 'email_sign_in_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  Future<void> _signInAnonymously(BuildContext context) async {
    try {
      final auth = Provider.of<Auth>(context, listen: false);
      await auth.signInAnonymously();
    } catch (e) {
      // TODO: Handle exception
      print(e.toString());
    }
  }

  void _signInWithEmail(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => const EmailSignInPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContent(context),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent(BuildContext context) {
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
            onPressed: () => _signInWithEmail(context),
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
            onPressed: () => _signInAnonymously(context),
          ),
        ],
      ),
    );
  }
}
