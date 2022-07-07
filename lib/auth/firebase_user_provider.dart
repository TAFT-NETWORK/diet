import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Deneme11FirebaseUser {
  Deneme11FirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

Deneme11FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Deneme11FirebaseUser> deneme11FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Deneme11FirebaseUser>(
            (user) => currentUser = Deneme11FirebaseUser(user));
