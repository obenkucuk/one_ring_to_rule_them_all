import 'package:base_application/components/theme/theme_controller.dart';
import 'package:base_application/pages/main_pages/page_a/controller/page_a_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageAView extends GetView<PageAController> {
  const PageAView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: const Text(
              "HomePage",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 25,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(controller.sayfadaGosterilenSayi.string),
              IconButton(
                splashRadius: 15,
                enableFeedback: false,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                splashColor: Colors.transparent,
                onPressed: () => controller.sayfadaGosterilenSayi.value++,
                icon: const Icon(Icons.add),
              )
            ],
          ),
        ));
  }
}
