import 'package:flutter/foundation.dart';

class AppConfigs {
  late final String baseUrl;
  late final String appName;
  AppConfigs._();
  static final AppConfigs instance = AppConfigs._();

  void init() {
    if (kDebugMode) {
      baseUrl = 'localhost';
      appName = 'One Ring to Rule Them All Debug';
    } else if (kProfileMode) {
      baseUrl = 'profile modu urlsi';
      appName = 'One Ring to Rule Them All Profile';
    } else {
      baseUrl = 'release modu urlsi';
      appName = 'One Ring to Rule Them All';
    }
  }
}
