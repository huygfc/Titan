import '../../api_services/api_services.dart';
import '../../api_services/environment.dart';

class PrivacyPolicyController {
  static Future privacyPolicy() async {
    String params = "?token=nuTion9JY0HjboJuUZNvbDN166DCDejr";
    Uri ppurl = Uri.parse(
        Environment.base_url_privacy_policy + EndPoints.live + params);
    dynamic tcApiCall = await ApiServices.getMethod(ppurl);
    return tcApiCall.body;
  }
}
