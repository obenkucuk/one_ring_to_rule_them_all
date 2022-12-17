import 'package:base_application/screens/others/add_stock/controller/add_stock_controller.dart';
import 'package:base_application/screens/others/add_stock/view/add_stock_view.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class AddStockScreen extends StatelessWidget {
  const AddStockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: AddStockController(),
      builder: (controller) => const AddStockView(),
    );
  }
}
