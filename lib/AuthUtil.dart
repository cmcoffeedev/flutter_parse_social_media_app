import 'package:firebase_auth/firebase_auth.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

class AuthUtil {
  static Future<ParseResponse> signInUserParse(
    username,
    password,
  ) {
    ParseUser user = ParseUser(
      username,
      password,
      username,
    );
    return user.login();
  }

  static Future<ParseResponse> registerUserParse(
    username,
    password,
  ) async {
    var user = ParseUser.createUser(username, password, username);
    return await user.signUp();
  }

//  static Future<AuthResult> signInUser(
//    username,
//    password,
//  ) {
//    return FirebaseAuth.instance
//        .signInWithEmailAndPassword(email: username, password: password)
//        .then((value) {
//      return value;
//    });
//  }
//
//  static Future<AuthResult> registerUser(
//    username,
//    password,
//  ) {
//    return FirebaseAuth.instance
//        .createUserWithEmailAndPassword(email: username, password: password)
//        .then((value) {
//      return value;
//    });
//  }
}
