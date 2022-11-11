import 'package:base_application/pages/main_screen/home_screen/controller/home_controller.dart';
import 'package:base_application/pages/main_screen/settings_screen/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_route/auto_route.dart';
import 'package:base_application/routes/router.gr.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = Get.find<SettingsController>();
    return Obx(
      () => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(controller.sayfadaGosterilenSayi.string),
            IconButton(
              splashRadius: 15,
              enableFeedback: false,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              splashColor: Colors.transparent,
              onPressed: () => controller.aa(),
              icon: const Icon(Icons.add),
            ),
            IconButton(
              splashRadius: 15,
              enableFeedback: false,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              splashColor: Colors.transparent,
              onPressed: () => controller.bb(),
              icon: const Icon(Icons.add),
            ),
            Row(
              children: [
                TextButton(
                    onPressed: (() {
                      settings.changeLanguage("tr");
                    }),
                    child: const Text("TR")),
                TextButton(
                    onPressed: (() {
                      settings.changeLanguage("en");
                    }),
                    child: const Text("EN")),
                TextButton(
                    onPressed: (() {
                      settings.changeLanguage("system");
                    }),
                    child: const Text("system")),
              ],
            ),
            Text(settings.lang.value.helloWorld),
            TextButton(
                onPressed: (() {
                  context.router.push(const DenemeRoute());
                }),
                child: const Text("Desteklenen Diller")),
          ],
        ),
      ),
    );
  }
}
