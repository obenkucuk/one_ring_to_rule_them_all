import '../app_size.dart';

/// Yatay uzunluklar için w:
/// Dikey uzunluklat için h:
/// BorderRadius için w:
extension WidgetsScale on num {
  double get w => this * (SizeX.width / 430);
  double get h => this * (SizeX.height / 932);
}
