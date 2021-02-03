import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import '../helpers/custom_trace.dart';

class Setting {
  String appName = '';
  String gender = 'Male';
  ValueNotifier<int> mainColor = new ValueNotifier(4293943954);
  ValueNotifier<Locale> mobileLanguage = new ValueNotifier(Locale('en', ''));
  ValueNotifier<Brightness> brightness = new ValueNotifier(Brightness.light);

  Setting();

  Setting.fromJSON(Map<String, dynamic> jsonMap) {
    try {
      appName = jsonMap['app_name'] ?? null;
      gender = jsonMap['gender'] ?? 'Male';
      mainColor.value = jsonMap['main_color'] ?? 0;
      mobileLanguage.value = Locale(jsonMap['mobile_language'] ?? "en", '');
    } catch (e) {
      //print(CustomTrace(StackTrace.current, message: e));
    }
  }

  // ValueNotifier<Locale> initMobileLanguage(String defaultLanguage) {
  //   SharedPreferences.getInstance().then((prefs) {
  //     return new ValueNotifier(
  //         Locale(prefs.get('language') ?? defaultLanguage, ''));
  //   });
  //   return new ValueNotifier(Locale(defaultLanguage ?? "en", ''));
  // }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["app_name"] = appName;
    map["gender"] = gender;
    map["mobile_language"] = mobileLanguage.value.languageCode;
    return map;
  }
}
