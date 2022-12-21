class PortfolioModel {
  String? stockName;
  String? dateBuy;
  String? dateSell;
  double? numberOfLots;
  double? unitCost;
  double? sellPrice;

  PortfolioModel({
    this.numberOfLots,
    this.stockName,
    this.dateBuy,
    this.unitCost,
    this.dateSell,
    this.sellPrice,
  });

  PortfolioModel copyWith({
    String? stockName,
    double? numberOfLots,
    String? dateBuy,
    double? unitCost,
    String? dateSell,
    double? sellPrice,
  }) =>
      PortfolioModel(
        stockName: stockName ?? this.stockName,
        numberOfLots: numberOfLots ?? this.numberOfLots,
        dateBuy: dateBuy ?? this.dateBuy,
        unitCost: unitCost ?? this.unitCost,
        dateSell: dateSell ?? this.dateSell,
        sellPrice: sellPrice ?? this.sellPrice,
      );
}
