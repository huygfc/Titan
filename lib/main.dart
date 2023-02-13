import 'package:flutter/material.dart';
import 'package:titan_saga/auth/view/login.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initializing the firebase app
  await Firebase.initializeApp();
  runApp(const MyApp());
  debugShowCheckedModeBanner: true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Titan Saga',
      theme: ThemeData(

        primarySwatch: Colors.yellow,
      ),
      home:Login()
    );
  }
}

