import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/core/media_query_x.dart';
import 'package:base_application/router/router.dart';
import 'package:base_application/screens/main_screens/settings_screen/controller/settings_controller.dart';
import 'package:base_application/core/constants/size_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

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
          )
        ],
      ),
    );
  }
}
