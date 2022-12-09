import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesX {
  static Future<SharedPreferences> get _instance async => _sharedPrefs ??= await SharedPreferences.getInstance();
  static SharedPreferences? _sharedPrefs;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences?> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    _sharedPrefs = await _instance;
    return _sharedPrefs;
  }

  static String getString(String key) => _sharedPrefs!.getString(key) ?? "null";

  static setString(String key, String value) {
    _sharedPrefs!.setString(key, value);
  }
}
