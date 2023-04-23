import 'package:flutter/material.dart';
import 'package:titan_saga/auth/controller/auth_controller.dart';
import 'package:titan_saga/dashboard/controller/dashboard_controller.dart';

import '../../dashboard/view/dashboard.dart';
import '../../utils/colors.dart';
import '../../utils/shared_prefrence.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isAgreetc = false;
  double height = 0.0;
  double width = 0.0;
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white10,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/app_icon_splash/app_icon.jpg",
              fit: BoxFit.cover,
            ),
            Row(
              children: [
                Checkbox(
                    value: isAgreetc,
                    checkColor: Colors.red,
                    activeColor: ThemeColor.CheckBoxActiveColor,
                    onChanged: (value) {
                      setState(() {
                        isAgreetc = !isAgreetc;
                      });
                    }),
                Container(
                  child: Text("I Agree These Terms & Condition ",
                      style: TextStyle(backgroundColor: Colors.white)),
                ),
              ],
            ),

            // Padding(
            //   padding: const EdgeInsets.only(left: 35),
            //   child: Text(
            //     'Titan Saga',
            //     style: TextStyle(fontSize: 50),
            //   ),
            // ),
            SizedBox(
              width: 30,
              height: 30,
            ),
            _loading == true
                ? CircularProgressIndicator(
                    color: ThemeColor.CheckBoxActiveColor,
                  )
                : ElevatedButton.icon(
                    icon: Icon(Icons.login_sharp),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: isAgreetc == true
                        ? () async {
                            setState(() {
                              _loading = true;
                            });
                            bool isLogin = false;
                            isLogin = await signup(context);
                            if (isLogin == true) {
                              Shared_Preference.setBool(
                                  SharedPreferenceKeys.isLogin, true);
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dashboard()));
                            }

                            setState(() {
                              _loading = true;
                            });
                            print('Welcome');
                          }
                        : null,
                    label: const Text('Login With Google')),
          ],
        ));
  }
}
