import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  final GlobalKey scaffoldKey = GlobalKey();

  BuildContext get context => scaffoldKey.currentContext!;
}
