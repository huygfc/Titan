import 'package:flutter/material.dart';
import 'package:titan_saga/auth/view/login.dart';
import 'package:titan_saga/dashboard/view/dashboard.dart';
import 'package:titan_saga/utils/colors.dart';
import 'package:titan_saga/utils/shared_prefrence.dart';
import 'auth/view/login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Shared_Preference.init();
  // initializing the firebase app
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Titan Saga',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: ThemeColor.primaryColor,
          fontFamily: 'noto_sans',
          textTheme: const TextTheme(
            headline2: TextStyle(
                fontFamily: "noto_sans",
                fontSize: 16,
                color: Colors.amberAccent),
          ),
        ),
        home: Shared_Preference?.getBool(SharedPreferenceKeys.isLogin) == true
            ? const Dashboard()
            : const Login());
  }
}
