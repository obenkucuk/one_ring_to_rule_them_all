import 'package:get/get.dart';

class PortfolioController extends GetxController {
  void removePortfolioItem(int index) {
    update([PortfolioScreenUpdateKeys.portfolio]);
  }
}

enum PortfolioScreenUpdateKeys { portfolio }
