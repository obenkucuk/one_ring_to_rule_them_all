import 'package:base_application/screens/main_screens/home_screen/controller/home_controller.dart';
import 'package:base_application/theme/text_style.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../portfolio_screen/model/all_stocks.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Obx(() {
            if (controller.homeStatus.value == ScreenStatus.loading) {
              return const CircularProgressIndicator.adaptive();
            } else if (controller.homeStatus.value == ScreenStatus.loaded) {
              List<AllStocksDataModel> modelList = controller.allStocksModel.data!;
              return ListView.builder(
                itemCount: modelList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(
                    modelList[index].kod ?? '',
                    style: s14W600,
                  );
                },
              );
            } else {
              return const SizedBox();
            }
          }),
        ),
      ),
    );
  }
}
