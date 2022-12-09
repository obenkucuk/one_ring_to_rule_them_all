import 'dart:developer';
import 'dart:ui';

import 'package:flutter/widgets.dart';

/// MediaQuery Data'larına buradan erişilecek ve değişiklik yapmak gerekirse burdan yapılacak.
class SizeX {
  static late double width;
  static late double height;
  static late EdgeInsets padding;
  static late MediaQueryData _mediaQueryData;
  static late Brightness platformBrightness;
  static late Orientation orientation;
  static late List<DisplayFeature> displayFeatures;
  static late double textScaleFactor;

  static setScreenSize(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    height = _mediaQueryData.size.height;
    width = _mediaQueryData.size.width;
    padding = _mediaQueryData.padding;
    platformBrightness = _mediaQueryData.platformBrightness;
    orientation = _mediaQueryData.orientation;
    displayFeatures = _mediaQueryData.displayFeatures;
    textScaleFactor = _mediaQueryData.textScaleFactor;

    log('${SizeX.width}x${SizeX.height}', name: 'Screen local pixel');
  }
}
