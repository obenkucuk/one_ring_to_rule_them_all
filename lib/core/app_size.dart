import 'dart:developer';

import 'package:flutter/widgets.dart';

class SizeX {
  static late double width;
  static late double height;

  static setScreenSize(BuildContext context) {
    SizeX.width = MediaQuery.of(context).size.width;
    SizeX.height = MediaQuery.of(context).size.height;

    log('${SizeX.width}x${SizeX.height}', name: 'Screen local pixel');
  }
}
