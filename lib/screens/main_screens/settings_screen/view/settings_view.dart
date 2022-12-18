import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/core/media_query_x.dart';
import 'package:base_application/router/router.dart';
import 'package:base_application/screens/main_screens/settings_screen/controller/settings_controller.dart';
import 'package:base_application/core/constants/size_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../theme/text_style.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(controller.lang.value.settings),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: padding20.w),
            child: SizedBox(
              width: MediaQueryX.width,
              child: AspectRatio(
                aspectRatio: 3,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: padding20.w),
                  color: Colors.white,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40.w,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => context.pushNamed(RoutesNames.login),
            child: const Text("Login"),
          ),
          Obx(
            () => Text(
              controller.lang.value.helloWorld,
              style: s18W500,
            ),
          ),
          Text(
            "Settings",
            style: s8W500,
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => controller.changeTheme(themeMode: ThemeMode.dark, brightness: Brightness.dark),
                icon: const Icon(Icons.dark_mode),
              ),
              IconButton(
                onPressed: () => controller.changeTheme(themeMode: ThemeMode.light, brightness: Brightness.light),
                icon: const Icon(Icons.light_mode),
              ),
              IconButton(
                onPressed: () => controller.changeTheme(
                    themeMode: ThemeMode.system,
                    brightness: MediaQueryX.platformBrightness == Brightness.dark ? Brightness.dark : Brightness.light),
                icon: const Icon(Icons.settings),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: (() {
                    controller.changeLanguage("tr");
                  }),
                  child: const Text("TR")),
              TextButton(
                  onPressed: (() {
                    controller.changeLanguage("en");
                  }),
                  child: const Text("EN")),
              TextButton(
                  onPressed: (() {
                    controller.changeLanguage("system");
                  }),
                  child: const Text("system")),
            ],
          ),
        ],
      ),
    );
  }
}
