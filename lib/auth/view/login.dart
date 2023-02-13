
import 'package:flutter/material.dart';
import 'package:titan_saga/auth/controller/auth_controller.dart';
import 'package:titan_saga/dashboard/controller/controller.dart';

class Login extends StatefulWidget {
const Login({Key? key}) : super(key: key);

@override
State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        body:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text('Titan Saga', style: TextStyle(fontSize:50 ),
              ),
            ),
            SizedBox(width: 30,height:30,),
            ElevatedButton(onPressed: (){
              signup(context);
              print('Welcome');
            }, child: const Text('Login With Google'))
          ],
        )
    );
  }
}
