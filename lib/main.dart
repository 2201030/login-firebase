import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10/firebase_options.dart';
import 'package:flutter_application_10/login.dart';
import 'package:flutter_application_10/test.dart';
import 'package:firebase_auth/firebase_auth.dart';
void main(List<String> args)async {
    WidgetsFlutterBinding.ensureInitialized();
 WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

  runApp(MyWidget());
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
      
    );
  }
}