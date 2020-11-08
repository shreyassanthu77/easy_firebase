import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:easy_firebase/auth/services/base_auth_service.dart';

class GoogleAuthService extends BaseAuthService {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  GoogleAuthService({ @required this.firebaseAuth, @required this.googleSignIn}) : super(firebaseAuth);

  @override
  Future<void> login() async {
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await firebaseAuth.signInWithCredential(credential);
  }

  @override
  Future<void> logout() {
    googleSignIn.signOut();
    return super.logout();
  }
}
