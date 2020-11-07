import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:easy_firebase/services/auth_service_abstract.dart';

class AuthWrapper extends StatelessWidget {

  final AbstractAuthService authService;

  final Widget Function(Future<void> Function() logout) loggedIn;
  final Widget loggedOut;

  const AuthWrapper({Key key, this.authService, this.loggedIn, this.loggedOut}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: authService.authChanges,
      builder: (context, AsyncSnapshot<User> user) {
        if (user.hasData) return loggedIn(authService.logout);
        return loggedOut;
      },
    );
  }
}