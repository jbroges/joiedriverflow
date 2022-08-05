import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class JoiedriverFirebaseUser {
  JoiedriverFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

JoiedriverFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<JoiedriverFirebaseUser> joiedriverFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<JoiedriverFirebaseUser>(
            (user) => currentUser = JoiedriverFirebaseUser(user));
