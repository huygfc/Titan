import 'package:flutter/material.dart';
import 'package:titan_saga/dashboard/controller/controller.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [Container(child:
      Text('Welcome to Titan Saga')),
        IconButton(onPressed: (){
          signout(context);
        },
            icon:(Icon(Icons.logout)))
      ],
    )
    );

  }
}