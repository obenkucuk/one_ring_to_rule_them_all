import 'package:base_application/screens/main_screens/portfolio_screen/model/portfolio_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddStockController extends GetxController {
  final nameFocus = FocusNode();
  final numberFocus = FocusNode();
  final costFocus = FocusNode();

  final PortfolioModel portfolioModel = PortfolioModel();
}
