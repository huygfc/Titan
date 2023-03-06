// function to implement the google signin
// //
// creating firebase instance

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:titan_saga/auth/model/logged_in_user_model.dart';
import 'package:titan_saga/dashboard/view/dashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:titan_saga/utils/firebase_consts.dart';

import '../../utils/shared_prefrence.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

Future<bool> signup(BuildContext context) async {
  bool isSuccess = false;
  try {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);
      // Getting users credential
      UserCredential result = await auth.signInWithCredential(authCredential);
      // User? user = result.user;

      LoogedInUserModel loginUser = LoogedInUserModel();

      loginUser.id = result.user?.uid ?? "";
      loginUser.name = result.user?.displayName ?? "";
      loginUser.email = result.user?.email ?? "";
      loginUser.profiePicture = result.user?.photoURL ?? "";
      loginUser.createdAt = DateTime.now().toString();

      CollectionReference users = FirebaseFirestore.instance
          .collection(FirebaseCollection.userCollection);

      users.doc(result.user?.uid).set(loginUser.toJson());

      if (result != null) {
        isSuccess = true;
      }
    }
  } catch (error) {
    isSuccess = false;
    print(error.toString());
  }
  ;
  return isSuccess;
}
