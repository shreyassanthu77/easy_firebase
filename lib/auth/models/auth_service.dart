import 'package:easy_firebase/firebase_auth.dart';

abstract class AuthService {
  AuthService();

  User get user;

  Stream<User> get authChanges;

  Future<void> login();

  Future<void> logout();
}