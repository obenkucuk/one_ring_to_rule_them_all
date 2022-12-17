import 'package:base_application/screens/main_screens/portfolio_screen/controller/portfolio_controller.dart';
import 'package:base_application/screens/main_screens/portfolio_screen/view/portfolio_view.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: PortfolioController(),
      builder: (controller) => const PortfolioView(),
    );
  }
}
