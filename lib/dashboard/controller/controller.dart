

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:titan_saga/auth/view/login.dart';

Future<void> signout(BuildContext context)async {
  await FirebaseAuth.instance.signOut();
  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
}