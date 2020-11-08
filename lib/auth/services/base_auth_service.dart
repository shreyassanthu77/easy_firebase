import 'package:easy_firebase/auth/models/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class BaseAuthService implements AuthService {
  final FirebaseAuth _firebaseAuth;

  const BaseAuthService(this._firebaseAuth);

  User get user => _firebaseAuth.currentUser;

  get authChanges => _firebaseAuth.authStateChanges();
  
  Future<void> login() {
    throw UnimplementedError();
  }

  Future<void> logout() {
    return _firebaseAuth.signOut(); 
  }
  
}