import 'package:flutter/material.dart';
import 'package:easy_firebase/services/google_auth_service.dart';

class GoogleSignInView extends StatelessWidget {

  final GoogleAuthService googleAuthService;

  const GoogleSignInView({@required this.googleAuthService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("Sign in with Google"),
          onPressed: () async {
            await this.googleAuthService.login();
          },
        ),
      ),
    );
  }
}