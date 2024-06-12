import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:useful_points/data/storage/app/locals/app_mode_pref/app_mode_pref.dart';
import 'package:useful_points/data/storage/app/locals/lang_prefs/language_prefs.dart';
import 'package:useful_points/data/storage/auth/auth_prefs.dart';

import 'injection.dart';

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  await DIService.init();

  await Hive.initFlutter();

  await Hive.openBox(AuthPrefs.authBoxID);
  await Hive.openBox(LangPrefs.langBox);
  await Hive.openBox(ModePrefs.colorBox);
}