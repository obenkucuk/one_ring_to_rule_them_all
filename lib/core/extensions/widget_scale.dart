import '../media_query_x.dart';

/// Yatay uzunluklar için w:
/// Dikey uzunluklat için h:
/// BorderRadius için w:
extension WidgetsScale on num {
  double get w => this * (MediaQueryX.width / 430);
  double get h => this * (MediaQueryX.height / 932);
}
