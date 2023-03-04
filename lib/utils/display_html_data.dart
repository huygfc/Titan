import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:titan_saga/utils/size_constants.dart';

class DisplayhtmlData extends StatelessWidget {
  const DisplayhtmlData({
    super.key,
    required String htmlResponse,
  }) : _tcResponse = htmlResponse;

  final String _tcResponse;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SizeConstants.appPadding),
      child: SingleChildScrollView(child: HtmlWidget(_tcResponse)),
    );
  }
}
