import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/core/media_query_x.dart';
import 'package:base_application/router/router.dart';
import 'package:base_application/screens/main_screens/settings_screen/controller/settings_controller.dart';
import 'package:base_application/core/constants/size_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../session_services.dart';
import '../../../../theme/text_style.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var sessionServices = Get.find<SessionServices>();

    return Obx(
      () => Scaffold(
        key: controller.scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(sessionServices.lang.value.settings),
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
              child: const Text('Login'),
            ),
            Obx(
              () => Text(
                sessionServices.lang.value.helloWorld,
                style: s18W500,
              ),
            ),
            Text(
              sessionServices.lang.value.settings,
              style: s8W500,
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => sessionServices.changeTheme(themeMode: ThemeMode.dark, brightness: Brightness.dark),
                  icon: const Icon(Icons.dark_mode),
                ),
                IconButton(
                  onPressed: () =>
                      sessionServices.changeTheme(themeMode: ThemeMode.light, brightness: Brightness.light),
                  icon: const Icon(Icons.light_mode),
                ),
                IconButton(
                  onPressed: () => sessionServices.changeTheme(
                      themeMode: ThemeMode.system,
                      brightness:
                          MediaQueryX.platformBrightness == Brightness.dark ? Brightness.dark : Brightness.light),
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      sessionServices.changeLanguage('tr');
                    },
                    child: const Text('TR')),
                TextButton(
                    onPressed: () {
                      sessionServices.changeLanguage('en');
                    },
                    child: const Text('EN')),
                TextButton(
                    onPressed: () {
                      sessionServices.changeLanguage('system');
                    },
                    child: const Text('system')),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.ad_units))
          ],
        ),
      ),
    );
  }
}
