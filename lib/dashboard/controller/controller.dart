import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:titan_saga/auth/view/login.dart';
import 'package:titan_saga/utils/shared_prefrence.dart';

Future<void> signout(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  Shared_Preference.setBool(SharedPreferenceKeys.isLogin, false);
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Login(),
      ));
}
