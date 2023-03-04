import 'package:flutter/material.dart';
import 'package:titan_saga/privacy_policy/controller/privacy_policy_controller.dart';

import '../../utils/display_html_data.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  String _ppResponse = "";
  bool _loading = false;
  @override
  void initState() {
    callApi();
    super.initState();
  }

  Future callApi() async {
    setState(() {
      _loading = true;
    });
    _ppResponse = await PrivacyPolicyController.privacyPolicy();
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("privacy policy"), elevation: 10),
      body: _loading
          ? const CircularProgressIndicator()
          : DisplayhtmlData(htmlResponse: _ppResponse),
    );
  }
}
