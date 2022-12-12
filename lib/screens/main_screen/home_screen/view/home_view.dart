import 'package:auto_route/auto_route.dart';
import 'package:base_application/components/buttons/material_button_x.dart';
import 'package:base_application/components/search_bar/search_bar.dart';
import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/routes/router.gr.dart';
import 'package:base_application/screens/diger_sayfalar/home/alt_sayfa/alt_sayfa.dart';
import 'package:base_application/screens/main_screen/home_screen/controller/home_controller.dart';
import 'package:base_application/screens/main_screen/settings_screen/controller/settings_controller.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = Get.find<SettingsController>();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 40),
        child: const SafeArea(child: SearchBar()),
      ),
      body: Obx(
        () => GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButtonX(onTap: () {
                    context.router.navigate(const SearchRouter());
                  }),
                  Text(
                    settings.lang.value.helloWorld,
                    style: TextStylesX(context).s18W500,
                  ),
                  TextButton(onPressed: (() {}), child: const Text("Desteklenen Diller")),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => const AltSayfaScreen())));
                    },
                    child: const Text("Alt Sayfa"),
                  ),
                  GestureDetector(
                    onTap: () {},
                    key: controller.key,
                    child: SizedBox(
                      height: 300.h,
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  Text("Alt Sayfa", style: oben),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
