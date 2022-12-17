import 'package:get/get.dart';

import '../model/portfolio_model.dart';

class PortfolioController extends GetxController {
  final Rx<List<PortfolioModel>> portfolioList = Rx(<PortfolioModel>[
    PortfolioModel(stockName: "SASA", numberOfLots: 5.0, unitCost: 10.0),
    PortfolioModel(stockName: "BRKVY", numberOfLots: 6.0, unitCost: 20.0),
    PortfolioModel(stockName: "GARAN", numberOfLots: 7.0, unitCost: 30.0),
  ]);

  removePortfolioItem(int index) {
    portfolioList.value.removeAt(index);
    update([PortfolioScreenUpdateKeys.portfolio]);
  }
}

enum PortfolioScreenUpdateKeys { portfolio }
