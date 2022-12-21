import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/core/media_query_x.dart';
import 'package:base_application/core/splash_screen/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100.w,
                  child: const AspectRatio(
                    aspectRatio: 1,
                    child: FlutterLogo(),
                  ),
                ),
                SizedBox(height: 20.h),
                const CircularProgressIndicator.adaptive(),
              ],
            ),
          ),
          const Spacer(),
          const Text('v 1.0.0'),
          SizedBox(height: MediaQueryX.padding.bottom),
        ],
      ),
    );
  }
}
