import 'package:easy_firebase/auth/auth_wrapper.dart';
import 'package:easy_firebase/firebase_auth.dart';
import 'package:flutter/widgets.dart';

abstract class AuthService {
  AuthService();

  User get user;

  Stream<User> get authChanges;

  static AuthService of(BuildContext context) {
    return context.findAncestorWidgetOfExactType<AuthWrapper>().authService;
  }

  Future<void> login();

  Future<void> logout();
}