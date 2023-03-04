import 'package:flutter/material.dart';
import 'package:titan_saga/privacy_policy/view/privacy_policy_screen.dart';
import 'package:titan_saga/terms_and_condition/view/terms_and_condition.dart';

Drawer customDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Colors.white,
    child: ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.250,
          // color: Colors.red,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    "assets/images/profile_pic.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "prince",
                style: Theme.of(context).textTheme.headline2?.copyWith(
                      fontSize: 14,
                      color: Colors.black,
                    ),
              ),
              Text(
                "demo@gmaill.com",
                style: Theme.of(context).textTheme.headline2?.copyWith(
                      fontSize: 14,
                      color: Colors.black,
                    ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TermsAndCondition(),
                ));
              },
              leading: Icon(Icons.gavel),
              title: Text("Terms & conditions"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PrivacyPolicyScreen(),
                ));
              },
              leading: Icon(Icons.admin_panel_settings),
              title: Text("Privacy policy"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About us"),
            )
          ],
        )
      ],
    ),
  );
}
