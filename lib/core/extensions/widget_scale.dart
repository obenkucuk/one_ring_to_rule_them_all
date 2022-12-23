import 'package:base_application/constants/app_constants.dart';

import '../media_query_x.dart';

/// Yatay uzunluklar için w:
/// Dikey uzunluklat için h:
/// BorderRadius için w:
extension WidgetsScale on num {
  double get w => this * (MediaQueryX.width / AppConstants.designWidth);
  double get h => this * (MediaQueryX.height / AppConstants.designHeight);
}
