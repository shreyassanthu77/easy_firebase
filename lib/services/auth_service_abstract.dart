import 'package:firebase_auth/firebase_auth.dart';

abstract class AbstractAuthService {

  AbstractAuthService();

  User get user;

  Stream<User> get authChanges;

  Future<void> login();

  Future<void> logout();
}