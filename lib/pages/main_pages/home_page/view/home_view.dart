import 'package:base_application/pages/main_pages/home_page/controller/home_controller.dart';
import 'package:base_application/pages/main_pages/settings_page/controller/settings_controller.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = Get.find<SettingsController>();
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: Text(
              "HomePage",
              style: TextStilles(context).s18W300,
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 25,
          ),
          body: Center(
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
                controller.buildStatus(
                    onLoaded: Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                )),
                Text(settings.lang.value.helloWorld),
                TextButton(
                    onPressed: (() {
                      settings.supportedLanguages();
                    }),
                    child: const Text("Desteklenen Diller")),
              ],
            ),
          ),
        ));
  }
}
