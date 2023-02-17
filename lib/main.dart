import 'package:flutter/material.dart';
import 'package:titan_saga/auth/view/login.dart';
import 'auth/view/login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initializing the firebase app
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Titan Saga',
        theme: ThemeData(
          brightness: Brightness.light,
          // primaryColor: ThemeColors.primaryColor,
          fontFamily: 'noto_sans',
          textTheme: const TextTheme(
            headline2: TextStyle(
                fontFamily: "noto_sans",
                fontSize: 16,
                color: Colors.amberAccent),
          ),
        ),
        home: const Login());
  }
}
