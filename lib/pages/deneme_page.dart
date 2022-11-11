import 'package:base_application/pages/deneme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DenemeScreen extends StatelessWidget {
  const DenemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: DenemeController(),
      builder: (controller) => const DenemeView(),
    );
  }
}

class DenemeView extends GetView<DenemeController> {
  const DenemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.buildStatus(
          onLoaded: Center(
            child: Text(controller.data.key.toString()),
          ),
        ),
      ),
    );
  }
}
