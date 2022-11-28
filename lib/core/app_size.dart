import 'dart:developer';

import 'package:flutter/widgets.dart';

class XSize {
  static late double width;
  static late double height;

  static setScreenSize(BuildContext context) {
    XSize.width = MediaQuery.of(context).size.width;
    XSize.height = MediaQuery.of(context).size.height;

    log('${XSize.width}x${XSize.height}', name: 'Screen local pixel');
  }
}
