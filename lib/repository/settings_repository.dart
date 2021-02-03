import 'dart:async';
// import 'dart:convert';
// import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:global_configuration/global_configuration.dart';
// import 'package:http/http.dart' as http;
// import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/setting.dart';

ValueNotifier<Setting> setting = new ValueNotifier(new Setting());
final navigatorKey = GlobalKey<NavigatorState>();

Future<Setting> initSettings() async {
  Setting _setting;
  try {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    _setting = Setting.fromJSON({});
    if (prefs.containsKey('language')) {
      _setting.mobileLanguage.value = Locale(prefs.get('language'), '');
    }
    print(prefs.get('themeColor'));
    if (prefs.containsKey('themeColor')) {
      _setting.mainColor.value = prefs.get('themeColor');
    }

    setting.value = _setting;

    // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
    setting.notifyListeners();
  } catch (e) {
    print(e);
    //print(CustomTrace(StackTrace.current, message: url).toString());
    //return Setting.fromJSON({});
  }

  return setting.value;
}

// Future<dynamic> setCurrentLocation() async {
//   var location = new Location();
//   MapsUtil mapsUtil = new MapsUtil();
//   final whenDone = new Completer();
//   Address _address = new Address();
//   location.requestService().then((value) async {
//     location.getLocation().then((_locationData) async {
//       String _addressName = await mapsUtil.getAddressName(new LatLng(_locationData?.latitude, _locationData?.longitude), setting.value.googleMapsKey);
//       _address = Address.fromJSON({'address': _addressName, 'latitude': _locationData?.latitude, 'longitude': _locationData?.longitude});
//       await changeCurrentLocation(_address);
//       whenDone.complete(_address);
//     }).timeout(Duration(seconds: 10), onTimeout: () async {
//       await changeCurrentLocation(_address);
//       whenDone.complete(_address);
//       return null;
//     }).catchError((e) {
//       whenDone.complete(_address);
//     });
//   });
//   return whenDone.future;
// }

// Future<Address> changeCurrentLocation(Address _address) async {
//   if (!_address.isUnknown()) {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('delivery_address', json.encode(_address.toMap()));
//   }
//   return _address;
// }

// Future<Address> getCurrentLocation() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   //await prefs.clear();
//   if (prefs.containsKey('delivery_address')) {
//     deliveryAddress.value = Address.fromJSON(json.decode(prefs.getString('delivery_address')));
//     return deliveryAddress.value;
//   } else {
//     deliveryAddress.value = Address.fromJSON({});
//     return Address.fromJSON({});
//   }
// }

void setBrightness(Brightness brightness) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (brightness == Brightness.dark) {
    prefs.setBool("isDark", true);
    brightness = Brightness.dark;
  } else {
    prefs.setBool("isDark", false);
    brightness = Brightness.light;
  }
}

Future<void> setDefaultLanguage(String language) async {
  if (language != null) {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', language);
  }
}

Future<String> getDefaultLanguage(String defaultLanguage) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (prefs.containsKey('language')) {
    defaultLanguage = await prefs.get('language');
  }
  return defaultLanguage;
}

Future<void> setTheme(int themeColor) async {
  if (themeColor != null) {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('themeColor', themeColor);
  }
}

Future<int> getTheme(int themeColor) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (prefs.containsKey('themeColor')) {
    themeColor = await prefs.get('themeColor');
  }
  return themeColor;
}

Future<void> saveMessageId(String messageId) async {
  if (messageId != null) {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('google.message_id', messageId);
  }
}

Future<String> getMessageId() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return await prefs.get('google.message_id');
}
