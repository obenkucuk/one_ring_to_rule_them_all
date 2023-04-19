import 'dart:convert';

import 'package:base_application/screens/main_screens/portfolio_screen/model/all_stocks.dart';
import 'package:flutter/services.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  AllStocksModel allStocksModel = AllStocksModel();
  final Rx<ScreenStatus> homeStatus = ScreenStatus.loading.obs;

  void fetchAllStocks() async {
    try {
      String allStocksText = await rootBundle.loadString('assets/all_stocks.json');
      allStocksModel = AllStocksModel.fromJson(jsonDecode(allStocksText));
      homeStatus(ScreenStatus.loaded);
    } catch (e) {
      homeStatus(ScreenStatus.error);
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchAllStocks();
  }
}

enum ScreenStatus { loading, loaded, error }
