import 'package:flutter/material.dart';

class AboutusScreen extends StatefulWidget {
  const AboutusScreen({Key? key}) : super(key: key);

  @override
  State<AboutusScreen> createState() => _AboutusScreenState();
}

class _AboutusScreenState extends State<AboutusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('About Us'),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'About Us',
                style: TextStyle(fontSize: 50, backgroundColor: Colors.white),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Text(
                  'This App is made for buy watches from Titan Saga.\nThis Application is Made by our Team Member',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 18.0, backgroundColor: Colors.white),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Contact us:',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 4.0),
              Text(
                'Email: princemoradiya113@gmail.com\nPhone:+91 8866574350\nProject Guide: N C DUTIYA\nCollege :- G.P RAJKOT',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0, backgroundColor: Colors.white),
              ),
            ],
          ),
        ));
  }
}
