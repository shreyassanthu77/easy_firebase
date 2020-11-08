import 'package:firebase_auth/firebase_auth.dart';
import 'package:easy_firebase/auth/services/auth_service_abstract.dart';

class BaseAuthService implements AbstractAuthService {
  final FirebaseAuth _firebaseAuth;

  BaseAuthService(this._firebaseAuth);

  User get user => _firebaseAuth.currentUser;

  get authChanges => _firebaseAuth.authStateChanges();
  
  Future<void> login() {
    throw UnimplementedError();
  }

  Future<void> logout() {
    return _firebaseAuth.signOut(); 
  }
  
}