import 'package:get/get.dart';
import 'package:useful_points/controller/base/base_controller.dart';
import 'package:useful_points/data/tools/service/lang_service/lang_service.dart';
import 'package:useful_points/views/pages/video_guid/video_guide_page.dart';

class ChooseLangController extends BaseController {
  String currentLang = 'uz';

  void changeLang (String lang) {
    currentLang = lang;
    update();
  }

  void continueAction() {
    LangService.changeLocale(currentLang);
    Get.offAll(const VideoGuidePage(), transition: Transition.rightToLeft);
  }
}