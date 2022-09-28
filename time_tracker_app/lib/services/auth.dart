import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final _firebase = FirebaseAuth.instance;

  Stream<User?> authStateChange() => _firebase.authStateChanges();

  User? get currentUser => _firebase.currentUser;

  Future<User?> signInAnonymously() async {
    final userCredentials = await _firebase.signInAnonymously();
    return userCredentials.user;
  }

  Future<void> signOut() async {
    await _firebase.signOut();
  }
}
