import 'package:logger/logger.dart';
import 'package:titan_saga/api_services/api_services.dart';
import 'package:titan_saga/api_services/environment.dart';

class termsAndConditionController {
  static Future TermsAndCondition() async {
    String params = "?token=Hz1Ln8oqqsJfZN2Mi6Ti3nVxwE4ZVYao";
    Uri tcurl = Uri.parse(Environment.base_url + EndPoints.live + params);
    dynamic tcApiCall = await ApiServices.getMethod(tcurl);
    return tcApiCall.body;
  }
}
