import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:titan_saga/auth/view/login.dart';
import 'package:titan_saga/utils/Custom_Function.dart';
import 'package:titan_saga/utils/custom_dailog.dart';
import 'package:titan_saga/utils/firebase_consts.dart';
import 'package:titan_saga/utils/firebase_main.dart';
import 'package:titan_saga/utils/shared_prefrence.dart';

class DashboardController {
  Future<void> signout(BuildContext context) async {
    bool isSuccess = false;
    try {
      isSuccess = await FirebaseMain().googleLogout();
      if (isSuccess) {
        Shared_Preference.setBool(SharedPreferenceKeys.isLogin, false);
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ));
      }
    } catch (error) {
      if (error == FirebaseCollections.noInternetString) {
        CustomDialog().dialog(
            context: context,
            onPress: () {
              Navigator.pop(context);
              signout(context);
            },
            isCancelAvailable: true,
            successButtonName: "Retry",
            title: "No internet connection",
            content: "check your internet connectivity");
      }
    }
  }
}
