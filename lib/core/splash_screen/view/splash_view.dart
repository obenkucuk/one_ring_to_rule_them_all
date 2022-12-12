import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/core/splash_screen/controller/splash_controller.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      backgroundColor: Colors.amber,
      body: Center(
        child: Container(
          key: key,
          color: Colors.redAccent,
          width: 200.w,
          child: const AspectRatio(
            aspectRatio: 1,
            child: FittedBox(
              child: Text(
                "Splash Ekranı",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
