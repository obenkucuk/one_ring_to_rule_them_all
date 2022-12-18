import 'package:base_application/screens/main_screens/home_screen/controller/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              return ListView.builder(
                itemCount: controller.allStocksModel.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(index.toString());
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
