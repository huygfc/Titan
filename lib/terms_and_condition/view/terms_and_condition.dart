import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:titan_saga/terms_and_condition/controller/terms_and_condition_controller.dart';
import 'package:titan_saga/utils/size_constants.dart';

import '../../utils/display_html_data.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({Key? key}) : super(key: key);

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  String _tcResponse = "";
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
    _tcResponse = await termsAndConditionController.TermsAndCondition();
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Terms & Condition"), elevation: 10),
      body: _loading
          ? const CircularProgressIndicator()
          : DisplayhtmlData(htmlResponse: _tcResponse),
    );
  }
}
