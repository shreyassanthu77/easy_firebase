import 'package:easy_firebase/firebase_core.dart';
import 'package:flutter/widgets.dart';

Future<void> runFirebaseApp(Widget app) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(app);
}