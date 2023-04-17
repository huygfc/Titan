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
import 'package:titan_saga/utils/Custom_Function.dart';
import 'package:titan_saga/utils/custom_dailog.dart';
import 'package:titan_saga/utils/firebase_consts.dart';
import 'package:titan_saga/utils/firebase_main.dart';

import '../../utils/shared_prefrence.dart';

Future<bool> signup(BuildContext context) async {
  bool isSuccess = false;
  try {
    isSuccess = await FirebaseMain().googleLogin();
    if (isSuccess) {
      return isSuccess;
    }
  } catch (error) {
    if (error == FirebaseCollections.noInternetString) {
      CustomDialog().dialog(
          context: context,
          onPress: () {
            Navigator.pop(context);
            signup(context);
          },
          isCancelAvailable: true,
          successButtonName: "Retry",
          title: "Check your internet connection",
          content: "check your internet");
    }
  }
  return isSuccess;
}
