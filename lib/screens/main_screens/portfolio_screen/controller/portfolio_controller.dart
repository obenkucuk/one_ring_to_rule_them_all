import 'package:get/get.dart';

import '../model/portfolio_model.dart';

class PortfolioController extends GetxController {
  final Rx<List<PortfolioModel>> portfolioList = Rx(<PortfolioModel>[
    PortfolioModel(stockName: 'SASA', numberOfLots: 5, unitCost: 10),
    PortfolioModel(stockName: 'BRKVY', numberOfLots: 6, unitCost: 20),
    PortfolioModel(stockName: 'GARAN', numberOfLots: 7, unitCost: 30),
  ]);

  void removePortfolioItem(int index) {
    portfolioList.value.removeAt(index);
    update([PortfolioScreenUpdateKeys.portfolio]);
  }
}

enum PortfolioScreenUpdateKeys { portfolio }
