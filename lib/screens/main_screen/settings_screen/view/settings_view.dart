import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/core/media_query_x.dart';
import 'package:base_application/screens/main_screen/settings_screen/controller/settings_controller.dart';
import 'package:base_application/size_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: padding20),
            child: SizedBox(
              width: MediaQueryX.width,
              child: AspectRatio(
                aspectRatio: 3,
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: const [CircleAvatar()],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
