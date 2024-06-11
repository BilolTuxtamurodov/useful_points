import 'package:get/get.dart';
import 'package:useful_points/data/storage/app/locals/app_mode_pref/app_mode_pref.dart';
import 'package:useful_points/data/storage/app/locals/lang_prefs/language_prefs.dart';
import 'package:useful_points/data/storage/auth/auth_prefs.dart';
import 'package:useful_points/data/storage/auth/holder.dart';

class DIService {
  static Future<void> init () async {
    // pref
    Get.lazyPut<LangPrefs>(() => LangPrefs(), fenix: true);
    Get.lazyPut<Holder>(() => AuthPrefs(), fenix: true);
    Get.lazyPut<ModePrefs>(() => ModePrefs(), fenix: true);

  }
}