import 'package:base_application/pages/deneme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DenemePage extends GetView<DenemeController> {
  const DenemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: DenemeController(),
        builder: (_) => Obx(() => controller.buildStatus(
                onLoaded: Scaffold(
              body: Center(
                child: Text(controller.data.key.toString()),
              ),
            ))));
  }
}
