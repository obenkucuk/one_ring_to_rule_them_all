import 'dart:developer';

import 'package:flutter/widgets.dart';

class SizeX {
  static late double width;
  static late double height;
  static late EdgeInsets padding;
  static late MediaQueryData _mediaQueryData;

  static setScreenSize(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    height = _mediaQueryData.size.height;
    width = _mediaQueryData.size.width;
    padding = _mediaQueryData.padding;

    log('${SizeX.width}x${SizeX.height}', name: 'Screen local pixel');
  }
}
